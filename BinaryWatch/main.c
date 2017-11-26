//#include "pic18f27j53.h"
#include <xc.h>
//#include <pic.h>
#include <stdint.h>

__CONFIG(0x3FF2);				//CONFIG:CP=OFF,PWRT=ON,WDT=OFF,OSC=HS

void init(void);
void display(void);
void time_adjust(void);

#define _XTAL_FREQ 8000000

unsigned long timer_count=0;	//タイマ定数設定
unsigned char hour=0;
unsigned char min=0;
unsigned char sec=0;

int main(void) {
	while(1) {
		display();
		time_adjust();
	}
}

void display() {
	//hourの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
	
	PORTB = (0xF0 & PORTB) | (0x0F & (hour/10));	//PORTBの下4bitにhourの10の桁出力
	RB4=0;				//hourの10の桁ON
	DelayMs(1);
　　
	//hourの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (hour%10));	//PORTBの下4bitにhourの1の桁出力
	RA4=0;				//hourの1の桁ON
	DelayMs(1);
　　
	//minの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (min/10));		//PORTBの下4bitにminの10の桁出力
	RA3=0;				//minの10の桁ON
	DelayMs(1);
　　
	//minの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (min%10));		//PORTBの下4bitにminの1の桁出力
	RA2=0;				//minの1の桁ON
	DelayMs(1);
　　
	//secの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (sec/10));		//PORTBの下4bitにsecの10の桁出力
	RA1=0;				//secの10の桁ON
	DelayMs(1);

	//secの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (sec%10));		//PORTBの下4bitにsecの1の桁出力
	RA0=0;				//secの1の桁ON
	DelayMs(1);
}


}
void time_adjust() {
	//hourのカウントアップ
	if(RC0){			//hourスイッチを見る
		DelayMs(30);	//チャタリング待ち
			if(RC0){
				hour++;
				if(hour >=24){
					hour = 0;
				}
			}
		while(RC0){		//ボタンがオフになるまで待つ
			display();	//待っている間の表示
		}
		DelayMs(50);	//も一回押すには0.05秒待ち
	}
　　
	//minのカウントアップ
	if(RC1){			//minスイッチを見る
		DelayMs(30);	//チャタリング待ち
			if(RC1){
				min++;
				if(min >= 60){
					min = 0;
				}
			}
		while(RC1){		//ボタンがオフになるまで待つ
			display();	//待っている間の表示
		}
		DelayMs(50);	//も一回押すには0.05秒待ち
	}
	
	//secのカウントアップ
	if(RC2){			//secスイッチを見る
		DelayMs(30);	//チャタリング待ち
			if(RC2){
				sec++;
				if(sec >= 60){
					sec = 0;
				}
			}
		while(RC2){		//ボタンがオフになるまで待つ
			display();	//待っている間の表示
		}
		DelayMs(50);	//も一回押すには0.05秒待ち
	}
}

		
void init() {
	INTCON=0;
	init_comms();
	OSCCON = 0b01110000;// クロック設定、PLL無し、8MHz   
	PSA=0;
	PS2=1;
	PS1=0;
	PS0=0;
	T0CS=0;			//クロックソースは内部命令サイクル
	TMR0=0;			//TMR0をリセット
	T0IF=0;			//T0IFをリセット
	T0IE=1;			//TMR0割り込み発生を許可
	GIE=1;
	ANSELA = 0b00000000;
	ANSELB = 0b00000000;
	ANSELC = 0b00000000;
	//PORTA = 0b00000000;
	//PORTB = 0b00000000;
	//PORTC = 0b00000000;		
	TRISA = 0b00000000;
	TRISB = 0b00000000;
	TRISC = 0b00000111;
}

interrupt clock_count()	{//割り込みルーチン
	if(T0IF){
		T0IF = 0;		//割り込みフラグクリア
		TMR0=131;		//TMRを125カウントに指定：256-125=131
		timer_count++;
		if(timer_count == 625){
			timer_count =0;	//タイマカウント(１sec=10M=4*32*125*625)
			sec++;
			if(sec >= 60){
				sec = 0;
				min++;
				if(min >= 60){
					min = 0;
					hour++;
					if(hour >= 24){
						hour = 0;
					}
				}
			}
		}
	}
}
