#include <pic.h>
#include "pwm.h"

void init_pwm(){
    //PIC 32MHz Tosc = 0.03125��s�̎�
    //10000Hz��PWM�M���𔭐M����ꍇ
    //
    //���� = 10000Hz = 1/10000 = 100��s
    //(PR2�͈̔͂�0�`255)
    //Timer2�̃v���X�P�[�� 16
    //���� = (PR2 + 1) * 4 * Tosc * (Timer2�̃v���X�P�[���l)�ł��邩��
    //PR2 = (���� / (4 * Tosc * (Timer2�̃v���X�P�[���l)) - 1
    //PR2 = (100 / (4 * 0.03125 * 16)) - 1
    //PR2 = 49
    //
    //PWM����\ DC1(Max)��
    //duty = DC1 * Tosc * (Timer2�̃v���X�P�[���l)�ł��邩��
    //DC1 = duty / (Tosc * (Timer2�̃v���X�P�[���l))
    //DC1(Max) = 100 / (0.03125 * 16)
    //DC1(Max) = 200
    
    //Timer2�̃v���X�P�[���l�ݒ�
    T2CON |= 0b00000010; //�v���X�P�[�� 16
    //PWM�̏������ƋN��
	OpenPWM1(0xff); //������0-255  PWM 5000Hz
	OpenPWM2(0xff);
	SetPWM1(0x3ff);
	SetPWM2(0x3ff);
}
	
void OpenPWM1(char period)
{
    CCP3CON |= 0b00001100; //PWM���[�h�ɂ���
    PR2 = period;
    T2CON |= 0b00000100; //Timer2 Enable
}
void OpenPWM2(char period)
{
	CCP4CON |= 0b00001100; //PWM���[�h�ɂ���
	PR2 = period;
	T2CON |= 0b00000100;
}
void SetPWM1(unsigned int dutycycle)
{
    //�𑜓x10�r�b�g�̂������8�r�b�g��CCPR1L���W�X�^�Ɋi�[
    CCPR3L = dutycycle >> 2;
    //�𑜓x10�r�b�g�̂�������2�r�b�g��CCP1CON���W�X�^��4,5�r�b�g�֊i�[
    CCP3CON |= (dutycycle & 0x0003) << 4;
}
void SetPWM2(unsigned int dutycycle)
{
	//�𑜓x10�r�b�g�̂������8�r�b�g��CCPR1L���W�X�^�Ɋi�[
    CCPR4L = dutycycle >> 2;
    //�𑜓x10�r�b�g�̂�������2�r�b�g��CCP1CON���W�X�^��4,5�r�b�g�֊i�[
    CCP4CON |= (dutycycle & 0x0003) << 4;
}