#include <pic.h>
#include "pwm.h"

void init_pwm(){
    //PIC 32MHz Tosc = 0.03125μsの時
    //10000HzのPWM信号を発信する場合
    //
    //周期 = 10000Hz = 1/10000 = 100μs
    //(PR2の範囲は0～255)
    //Timer2のプリスケール 16
    //周期 = (PR2 + 1) * 4 * Tosc * (Timer2のプリスケール値)であるから
    //PR2 = (周期 / (4 * Tosc * (Timer2のプリスケール値)) - 1
    //PR2 = (100 / (4 * 0.03125 * 16)) - 1
    //PR2 = 49
    //
    //PWM分解能 DC1(Max)は
    //duty = DC1 * Tosc * (Timer2のプリスケール値)であるから
    //DC1 = duty / (Tosc * (Timer2のプリスケール値))
    //DC1(Max) = 100 / (0.03125 * 16)
    //DC1(Max) = 200
    
    //Timer2のプリスケール値設定
    T2CON |= 0b00000010; //プリスケール 16
    //PWMの初期化と起動
	OpenPWM1(0xff); //引数は0-255  PWM 5000Hz
	OpenPWM2(0xff);
	SetPWM1(0x3ff);
	SetPWM2(0x3ff);
}
	
void OpenPWM1(char period)
{
    CCP3CON |= 0b00001100; //PWMモードにする
    PR2 = period;
    T2CON |= 0b00000100; //Timer2 Enable
}
void OpenPWM2(char period)
{
	CCP4CON |= 0b00001100; //PWMモードにする
	PR2 = period;
	T2CON |= 0b00000100;
}
void SetPWM1(unsigned int dutycycle)
{
    //解像度10ビットのうち上位8ビットをCCPR1Lレジスタに格納
    CCPR3L = dutycycle >> 2;
    //解像度10ビットのうち下位2ビットをCCP1CONレジスタの4,5ビットへ格納
    CCP3CON |= (dutycycle & 0x0003) << 4;
}
void SetPWM2(unsigned int dutycycle)
{
	//解像度10ビットのうち上位8ビットをCCPR1Lレジスタに格納
    CCPR4L = dutycycle >> 2;
    //解像度10ビットのうち下位2ビットをCCP1CONレジスタの4,5ビットへ格納
    CCP4CON |= (dutycycle & 0x0003) << 4;
}