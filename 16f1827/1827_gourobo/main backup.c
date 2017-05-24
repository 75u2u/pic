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

/*プロトタイプ宣言*/
void emergency(void);
void shooting(void);
void loading(void);
void rotation(void);
void movetire1(void);
void movetire2(void);

/*グローバル変数格納庫*/
int pwmr = 0, pwml = 0, PWMR1 = 0, PWMR2 = 0, PWML1 = 0, PWML2 = 0;
int pwmpwl = 0;
int pwmload = 0;

static unsigned char data[6];

void init(void);
unsigned char inRxData(unsigned char rxData);
unsigned char get_usart(void);
unsigned char contORE = 0;
//psコントローラデータ

void main(void)
{
	init();
	init_pwm();
	unsigned int cntError = 0;	//受信失敗回数をカウント
	while (1)
	{

		if (get_usart() == 0x01){	//全てのデータを受信したら実行

			cntError = 0;		//正常にデータを受信したのでクリア

			emergency();
			shooting();
			loading();
			rotation();
			movetire1();
			movetire2();

		}
		else{

			cntError++;			//受信失敗
			if (cntError >= 10)	//暴走を防ぐために全動作停止
			{
				cntError = 0;
			}
		}
	}
}

void emergency(void){			//緊急停止
	if (SIKAKU != 0){
		SetPWM1(0);
		SetPWM2(0);
		SetPWM3(0);
		SetPWM4(0);
	}
}

void shooting(void){			//エアシリンダ放出,収縮
	if (L1 != 0) LATB7 = 1;
	if (L2 != 0) LATB7 = 0;
}

void loading(void){				//装填
	if (R2 != 0){
		if (pwmload<960){
			pwmload += 48;
			SetPWM4(pwmload);
		}
		LATA6 = 1;
	}

	else{
		if (pwmload>0){
			pwmload -= 48;
			SetPWM4(pwmload);
		}
	}
}

void rotation(void){			//回収
	if (R1 != 0){
		if (pwmpwl<960){
			pwmpwl += 48;
			SetPWM3(pwmpwl);
		}
		LATA7 = 1;
	}

	else{
		if (pwmpwl>0){
			pwmpwl -= 48;
			SetPWM3(pwmpwl);
		}
	}
}

void movetire1(void){			//タイヤ1
	if (RIGHT_STICK_X < 0x77 && RIGHT_STICK_X > 0x0A && RIGHT_STICK_Y == 0x00){
		if (pwmr == PWMR1){
			if (pwmr<960){
				pwmr += 48;
				SetPWM1(pwmr);
				LATA1 = 1;
			}
			if (PWMR1<960){
				PWMR1 += 48;
			}
		}

		else{
			if (pwmr>0){
				pwmr -= 48;
				SetPWM1(pwmr);
			}
			if (PWMR1>0){
				PWMR1 -= 48;
			}
		}
	}

	else if (RIGHT_STICK_X <0x77 && RIGHT_STICK_X > 0x0A && RIGHT_STICK_Y == 0x7f){
		if (pwmr == PWMR2){
			if (pwmr<960){
				pwmr += 48;
				SetPWM1(pwmr);
				LATA1 = 0;
			}
			if (PWMR2<960){
				PWMR2 += 48;
			}
		}

		else{
			if (pwmr>0){
				pwmr -= 48;
				SetPWM1(pwmr);
			}
			if (PWMR2>0){
				PWMR2 -= 48;
			}
		}
	}

	else{
		if (pwmr>0){
			pwmr -= 48;
			SetPWM1(pwmr);
		}
	}
}

void movetire2(void){			//タイヤ2
	if (LEFT_STICK_X < 0x77 && LEFT_STICK_X > 0x0A && LEFT_STICK_Y == 0x00){
		if (pwml == PWML1){
			if (pwml<960){
				pwml += 48;
				SetPWM2(pwml);
				LATA0 = 1;
			}
			if (PWML1<960){
				PWML1 += 48;
			}
		}

		else{
			if (pwml>0){
				pwml -= 48;
				SetPWM2(pwml);
			}
			if (PWML1>0){
				PWML1 -= 48;
			}
		}
	}

	else if (LEFT_STICK_X <0x77 && LEFT_STICK_X > 0x0A && LEFT_STICK_Y == 0x7f){
		if (pwml == PWML2){
			if (pwml<960){
				pwml += 48;
				SetPWM2(pwml);
				LATA0 = 0;
			}
			if (PWML2<960){
				PWML2 += 48;
			}
		}
		else{
			if (pwml>0){
				pwml -= 48;
				SetPWM2(pwml);
			}
			if (PWML2>0){
				PWML2 -= 48;
			}
		}
	}

	else{
		if (pwml>0){
			pwml -= 48;
			SetPWM2(pwml);
		}
	}
}

void init(void){
	//USART初期化
	INTCON = 0;
	init_comms();
	OSCCON = 0b01110000;// クロック設定、PLL無し、8MHz
	GIE = 0;//割り込みフラグ
	C1ON = 0;
	ANSELA = 0b00000000;
	TRISA = 0b00000000;
	ANSELB = 0b00000000;
	TRISB = 0b00000010;
	TXCKSEL = 1;
	RXDTSEL = 1;

	T2CON |= 0b00000001;//プリスケール 4
}

void
putch(unsigned char byte)
{
	unsigned int cnt = 0;
	unsigned int flag = 1;
	/* output one byte */
	while (!TXIF)	/* set when register is empty */
	{
		cnt++;
		if (cnt >= 100)
		{
			flag = 0;
			break;
		}
	}
	if (flag)
		TXREG = byte;
}

unsigned char
getch() {
	unsigned int cnt = 0;
	while (!RCIF)
	{
		cnt++;
		if (cnt >= 1000)
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
	unsigned int cnt1 = 0;//RCIFの受信不可回数をカウント
	unsigned int cnt2 = 0;//RCREGとの不一致回数をカウント
	while (1)
	{
		if (OERR)		//オーバーランエラーでないかを確認
			CREN = 0;		//継続受信を禁止	CREN禁止→許可でOERRをクリア
		CREN = 1;			//継続受信を許可
		while (!RCIF)	//受信可能状態になるまでループ
		{
			cnt1++;		//受信不可状態をカウント
			if (cnt1 >= 100)//100カウントでタイムアウト
			{
				cnt1 = 0;
				break;
			}
		}
		if (RCREG == rxData)//受信したデータとほしいデータが一致しているかを確認
			return 0x01;//一致したら0x01を返す
		cnt2++;			//不一致ならカウントする
		if (cnt2 >= 10)	//10回不一致なら0x00を返す
		{
			cnt2 = 0;
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

	unsigned int i = 0;

	if (inRxData(0x80) == 0x01)
	{

		for (i = 0; i<6; i++)
		{
			data[i] = getch();
		}
		if (inRxData((data[0] + data[1] + data[2] + data[3] + data[4] + data[5]) & 0x7f) == 0x01)
		{
			return 0x01;
		}
	}

	else
	{

	}
	return 0x00;
}

