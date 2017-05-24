
//******************************************************//
//2016_3_13_合同ロボコンin奈良高専近くの体育館				//
//近畿大学工業高等専門学校 Bチーム メインプログラム			//
//										作成者　都留悠哉	//
//******************************************************//

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

#define START_BIT 0x80					//a
#define MACHINE_BIT 0xB0				//h
#define END_BIT 0xF0					//t

/*プロトタイプ宣言*/
void emergency(void);			//緊急停止
void rotation(void);			//回収
void loading(void);				//装填
void shooting(void);			//射撃
void movetire1(void);			//タイヤ１
void movetire2(void);			//タイヤ２

/*グローバル変数格納庫*/
int pwmr = 0;					//タイヤ右	実pwm
int pwml = 0;					//タイヤ左	実pwm
int PWMR1 = 0;					//タイヤ右仮pwm1
int PWMR2 = 0;					//タイヤ右仮pwm2
int PWML1 = 0;					//タイヤ左仮pwm1
int PWML2 = 0;					//タイヤ左仮pwm2

int pwmpwl = 0;					//回収実pwm
int pwmload = 0;				//装填実pwm
int PWMpwl1 = 0;				//回収仮pwm1
int PWMpwl2 = 0;				//回収仮pwm2
int PWMload1 = 0;				//装填仮pwm1
int PWMload2 = 0;				//装填仮pwm2
static unsigned char data[6];

void init(void);
unsigned char inRxData(unsigned char rxData);
unsigned char get_usart(void);
unsigned char contORE = 0;
//psコントローラデータ

void	//メイン
main(void)
{
	init();
	init_pwm();
	unsigned int cntError = 0;	//受信失敗回数をカウント
	while(1)
	{	

		if(get_usart()==0x01){	//全てのデータを受信したら実行

			cntError = 0;		//正常にデータを受信したのでクリア
			
			emergency();		//緊急停止
			rotation();			//回収
			loading();			//装填
			shooting();			//射撃
			movetire1();		//タイヤ１
			movetire2();		//タイヤ２
			
 		}
		else{

			cntError++;			//受信失敗
			if(cntError>=10)	//暴走を防ぐために全動作停止
			{
				cntError=0;
			}
		}
	}			
}

void	//緊急停止（正直必要ない）
emergency(void){
	if(SIKAKU!=0){
		SetPWM1(0);
		SetPWM2(0);
		SetPWM3(0);
		SetPWM4(0);
	}
}

void	//回収
rotation(void){
	if(R1!=0){	
		if(pwmpwl==PWMpwl1){
			if(pwmpwl<960){
				pwmpwl+=48;
				SetPWM3(pwmpwl);
				LATA7=1;
			}	
			if(PWMpwl1<960)	PWMpwl1+=48;	
		}
		else{
			if(pwmpwl>0){
				pwmpwl-=48;
				SetPWM3(pwmpwl);
			}
			if(PWMpwl1>0)	PWMpwl1-=48;
		}	
	}
	else if(R2!=0){	
		if(pwmpwl==PWMpwl2){
			if(pwmpwl<960){
				pwmpwl+=48;
				SetPWM3(pwmpwl);
				LATA7=0;
			}
			if(PWMpwl2<960)	PWMpwl2+=48;
		}
		else{
			if(pwmpwl>0){
				pwmpwl-=48;
				SetPWM3(pwmpwl);
			}
			if(PWMpwl2>0)	PWMpwl2-=48;
		}	
	}
	//それ以外(右左スティック含む)
	else{
		if(pwmpwl>0){
			pwmpwl-=48;
			SetPWM3(pwmpwl);
		}
	}
}

void	//装填
loading(void){
	if(L1!=0){	
		if(pwmload==PWMload1){
			if(pwmload<960){
				pwmload+=48;
				SetPWM4(pwmload);
				LATA6=1;
			}	
			if(PWMload1<960)	PWMload1+=48;	
		}
		else{
			if(pwmload>0){
				pwmload-=48;
				SetPWM4(pwmload);
			}
			if(PWMload1>0)	PWMload1-=48;
		}	
	}
	
	else if(L2!=0){	
		if(pwmload==PWMload2){
			if(pwmload<960){
				pwmload+=48;
				SetPWM4(pwmload);
				LATA6=0;
			}
			if(PWMload2<960)	PWMload2+=48;
		}
		else{
			if(pwmload>0){
				pwmload-=48;
				SetPWM4(pwmload);
			}
			if(PWMload2>0)	PWMload2-=48;
		}	
	}
	//それ以外(右左スティック含む)
	else{
		if(pwmload>0){
			pwmload-=48;
			SetPWM4(pwmload);
		}
	}
}
void	//射撃(この適当感許せ)
shooting(void){
	if(MARU!=0) LATB7=1;
	if(SANKAKU!=0) LATB7=0;
}

void	//タイヤ１
movetire1(void){
	//上スティック
	if(RIGHT_STICK_X < 0x77 && RIGHT_STICK_X > 0x0A && RIGHT_STICK_Y == 0x00){	
		if(pwmr==PWMR1){
			if(pwmr<1008){
				pwmr+=48;
				SetPWM1(pwmr);
				LATA1=1;
			}	
			if(PWMR1<1008)	PWMR1+=48;	
		}
		else{
			if(pwmr>0){
				pwmr-=48;
				SetPWM1(pwmr);
			}
			if(PWMR1>0)	PWMR1-=48;
		}	
	}	
	//下スティック
	else if(RIGHT_STICK_X <0x77 && RIGHT_STICK_X > 0x0A && RIGHT_STICK_Y == 0x7f){	
		if(pwmr==PWMR2){
			if(pwmr<1008){
				pwmr+=48;
				SetPWM1(pwmr);
				LATA1=0;
			}
			if(PWMR2<1008)	PWMR2+=48;
		}
		else{
			if(pwmr>0){
				pwmr-=48;
				SetPWM1(pwmr);
			}
			if(PWMR2>0)	PWMR2-=48;
		}	
	}
	//それ以外(右左スティック含む)
	else{
		if(pwmr>0){
			pwmr-=48;
			SetPWM1(pwmr);
		}
	}
}

void	//タイヤ２
movetire2(void){
	//上スティック
	if(LEFT_STICK_X < 0x77 && LEFT_STICK_X > 0x0A && LEFT_STICK_Y == 0x00){	
		if(pwml==PWML1){
			if(pwml<1008){
				pwml+=48;
				SetPWM2(pwml);
				LATA0=1;
			}	
			if(PWML1<1008)	PWML1+=48;
		}
		else{
			if(pwml>0){
				pwml-=48;
				SetPWM2(pwml);
			}
			if(PWML1>0)	PWML1-=48;
		}	
	}
	//下スティック
	else if(LEFT_STICK_X <0x77 && LEFT_STICK_X > 0x0A && LEFT_STICK_Y == 0x7f){	
		if(pwml==PWML2){
				if(pwml<1008){
					pwml+=48;
					SetPWM2(pwml);
					LATA0=0;
				}
				if(PWML2<1008)	PWML2+=48;
			}
		else{
			if(pwml>0){
				pwml-=48;
				SetPWM2(pwml);
			}
			if(PWML2>0)	PWML2-=48;
		}	
	}
	//それ以外(右左スティック含む)
	else{
		if(pwml>0){
			pwml-=48;
			SetPWM2(pwml);
		}
	}
}

void
init(void){
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
    RXDTSEL  = 1;

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

unsigned char
inRxData(unsigned char rxData)
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

unsigned char
get_usart(void)
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
