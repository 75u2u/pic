
// CONFIG1L
#pragma config WDTEN = OFF      // Watchdog Timer (Disabled - Controlled by SWDTEN bit)
#pragma config PLLDIV = 2       // PLL Prescaler Selection (Divide by 2 (8 MHz oscillator input))
#pragma config CFGPLLEN = OFF   // PLL Enable Configuration Bit (PLL Disabled)
#pragma config STVREN = OFF     // Stack Overflow/Underflow Reset (Disabled)
#pragma config XINST = OFF      // Extended Instruction Set (Disabled)
// CONFIG1H
#pragma config CPUDIV = OSC1    // CPU System Clock Postscaler (No CPU system clock divide)
#pragma config CP0 = OFF        // Code Protect (Program memory is not code-protected)
// CONFIG2L
#pragma config OSC = INTOSC     // Oscillator (INTOSC)
#pragma config SOSCSEL = HIGH   // T1OSC/SOSC Power Selection Bits (High Power T1OSC/SOSC circuit selected)
#pragma config CLKOEC = OFF     // EC Clock Out Enable Bit  (CLKO output disabled on the RA6 pin)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor (Disabled)
#pragma config IESO = OFF       // Internal External Oscillator Switch Over Mode (Disabled)
// CONFIG2H
#pragma config WDTPS = 1024     // Watchdog Postscaler (1:1024)
// CONFIG3L
#pragma config DSWDTOSC = T1OSCREF// DSWDT Clock Select (DSWDT uses T1OSC/T1CKI)
#pragma config RTCOSC = T1OSCREF// RTCC Clock Select (RTCC uses T1OSC/T1CKI)
#pragma config DSBOREN = OFF    // Deep Sleep BOR (Disabled)
#pragma config DSWDTEN = OFF    // Deep Sleep Watchdog Timer (Disabled)
#pragma config DSWDTPS = G2     // Deep Sleep Watchdog Postscaler (1:2,147,483,648 (25.7 days))
// CONFIG3H
#pragma config IOL1WAY = OFF    // IOLOCK One-Way Set Enable bit (The IOLOCK bit (PPSCON<0>) can be set and cleared as needed)
#pragma config ADCSEL = BIT12   // ADC 10 or 12 Bit Select (12 - Bit ADC Enabled)
#pragma config MSSP7B_EN = MSK7 // MSSP address masking (7 Bit address masking mode)
// CONFIG4L
#pragma config WPFP = PAGE_127  // Write/Erase Protect Page Start/End Location (Write Protect Program Flash Page 127)
#pragma config WPCFG = OFF      // Write/Erase Protect Configuration Region  (Configuration Words page not erase/write-protected)
// CONFIG4H
#pragma config WPDIS = OFF      // Write Protect Disable bit (WPFP<6:0>/WPEND region ignored)
#pragma config WPEND = PAGE_WPFP// Write/Erase Protect Region Select bit (valid when WPDIS = 0) (Pages WPFP<6:0> through Configuration Words erase/write protected)
#pragma config LS48MHZ = SYS48X8// Low Speed USB mode with 48 MHz system clock bit (System clock at 48 MHz USB CLKEN divide-by is set to 8)

#include <xc.h>
#include <pic.h>
#include <stdio.h>
#include <stdint.h>

#define _XTAL_FREQ 4000000

void init(void);
void display(void);
void time_adjust(void);

#define _XTAL_FREQ 8000000

unsigned long timer_count=0;	//タイマ定数設定
unsigned char hour=0;
unsigned char min=0;
unsigned char sec=0;

void main(void) {
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
