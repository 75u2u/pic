#include <pic.h>
#include <xc.h>
#include "pwm.h"
#include "adc.h"
#include "usart.h"

__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF 
        & CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);

__CONFIG(WRT_OFF & PLLEN_ON & STVREN_ON & BORV_HI & LVP_OFF);

#define _XTAL_FREQ 8000000

//ControllerDefine
#define SIKAKU	          (data[0]&0x01) //k
#define L1                (data[0]&0x02) //k
#define L2                (data[0]&0x04) //k
#define R1                (data[0]&0x08) //k
#define R2                (data[0]&0x10) //k
#define SELECT			  (data[0]&0x20) //k
#define UP                (data[1]&0x01) //k
#define DOWN              (data[1]&0x02) //k
#define RIGHT             (data[1]&0x04) //k
#define LEFT              (data[1]&0x08) //k
#define SANKAKU           (data[1]&0x10) //k
#define BATSU             (data[1]&0x20) //k
#define MARU              (data[1]&0x40) //k
#define START             (data[1]&0x80) //k
#define LEFT_STICK_X              data[2]
#define LEFT_STICK_Y              data[3]
#define RIGHT_STICK_X             data[4]
#define RIGHT_STICK_Y             data[5]

#define START_BIT 0x80 //a
#define MACHINE_BIT 0xB0 //h
#define END_BIT 0xF0 //t

static unsigned char data[6];

void forward (void);
void back (void);
void Rturn (void);
void Lturn (void);

void init(void);
unsigned char inRxData(unsigned char rxData);
unsigned char get_usart(void);
unsigned char contORE = 0;
//psコントローラデータ

void main(void)
{
	init();
	unsigned int cntError = 0;		//受信失敗回数をカウント
	while(1)
	{	
		if(get_usart()==0x01){	//全てのデータを受信したら実行
						
			forward();
			back();
			Rturn();
			Lturn();
						
			cntError = 0;		//正常にデータを受信したのでクリア

 		}
		else{

			cntError++;	//受信失敗
			if(cntError>=10)	//暴走を防ぐために全動作停止
			{
				cntError=0;
			}
		}
	}			
}

void forward(){		
	if(RIGHT_STICK_X < 0x64 && RIGHT_STICK_X > 0x24 && RIGHT_STICK_Y == 0x00){
		LATA1=0; LATA0=1;	SetPWM1(512);
	}
	else if(RIGHT_STICK_X <0x64 && RIGHT_STICK_X > 0x24 && RIGHT_STICK_Y == 0x7f){
		LATA1=1; LATA0=0;	SetPWM1(512);
	}
	else{
		LATA1=0; LATA0=0;	SetPWM1(0);
	}
}

void back(){
	if(LEFT_STICK_X < 0x64 && LEFT_STICK_X > 0x24 && LEFT_STICK_Y == 0x00){
		LATA7=0; LATA6=1;	SetPWM2(512);
	}		
	else if(LEFT_STICK_X <0x64 && LEFT_STICK_X > 0x24 && LEFT_STICK_Y == 0x7f){
		LATA7=1; LATA6=0;	SetPWM2(512);
	}					
	else{
		LATA7=0; LATA6=0;	SetPWM2(0);
	}
}

void Rturn(){
	if(MARU!=0){
		LATA1=1; LATA0=0;	SetPWM1(512);
		LATA7=0; LATA6=1;	SetPWM2(512);
	}
}

void Lturn(){
	if(BATSU!=0){
		LATA1=0; LATA0=1;	SetPWM1(512);
		LATA7=1; LATA6=0;	SetPWM2(512);
	}
}
		
void init(void){
	//USART初期化
	INTCON=0;
	init_comms();
	OSCCON = 0b01110000;// クロック設定、PLL無し、8MHz
	GIE    = 0;//割り込みフラグ
	C1ON   = 0;
    ANSELA = 0b00000000;
    TRISA  = 0b00000000;
    ANSELB = 0b00000000;
    TRISB  = 0b00000010;
	TXCKSEL  = 1;
    RXDTSEL  = 0;

	T2CON |= 0b00000001;//プリスケール 4
}

void 
putch(unsigned char byte) 
{
	unsigned int cnt = 0;
	unsigned int flag = 1;
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
	{
		cnt++;
		if(cnt>=100)
		{
			flag = 0;
			break;
		}	
	}
	if(flag)
		TXREG = byte;
}

unsigned char 
getch() {
	unsigned int cnt=0;
	while(!RCIF)
	{
		cnt++;
		if(cnt>=1000)
		{
			break;
		}
	}
	return RCREG;
}

unsigned char
getche(void)
{
	unsigned char c;
	putch(c = getch());
	return c;
}
unsigned char inRxData(unsigned char rxData)
{
	unsigned int cnt1=0;//RCIFの受信不可回数をカウント
	unsigned int cnt2=0;//RCREGとの不一致回数をカウント
	while(1)
	{
		if(OERR	)		//オーバーランエラーでないかを確認
			CREN=0;		//継続受信を禁止	CREN禁止→許可でOERRをクリア
		CREN=1;			//継続受信を許可
		while(!RCIF)	//受信可能状態になるまでループ
		{
			cnt1++;		//受信不可状態をカウント
			if(cnt1>=100)//100カウントでタイムアウト
			{
				cnt1=0;
				break;
			}
		}
		if(RCREG==rxData)//受信したデータとほしいデータが一致しているかを確認
			return 0x01;//一致したら0x01を返す
		cnt2++;			//不一致ならカウントする
		if(cnt2>=10)	//10回不一致なら0x00を返す
		{
			cnt2=0;
			return 0x00;
		}
	}
}	
unsigned char get_usart(void)
{
	//スタートビットを受信するまでループ
	//ポートBを一時的に状態を保存
	//スタートビットの受信を開始して n カウント以内に受信できなければ
	//すべてのモーター動作を一時停止
	//無事スタートビットを抜けることができれば
	//モーター動作再開
	//マシンビットを受信
	//もしマシンビットが受信できなければ
	//スタートビット受信に戻る
	//ボタンデータ受信
	//チェックサムを受信
	//もしチェックサムが受信できないければ
	//スタートビット受信に戻る
	//エンドビット受信
	//もしエンドビットが受信できなければ
	//スタートビット受信に戻る
	//すべてのデータを受信できたなら 0x01を返す
	//マシン動作可能	
		
	unsigned int i=0;
	
	if(inRxData(0x80)==0x01)
	{
		
		for(i=0;i<6;i++)
		{
			data[i] = getch();
		}
			if(inRxData((data[0]+data[1]+data[2]+data[3]+data[4]+data[5])&0x7f)==0x01)
			{
				return 0x01;
			}
	}

	else
	{
	
	}
	return 0x00;
}

