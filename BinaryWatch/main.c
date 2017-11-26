//#include "pic18f27j53.h"
#include <xc.h>
//#include <pic.h>
#include <stdint.h>

__CONFIG(0x3FF2);				//CONFIG:CP=OFF,PWRT=ON,WDT=OFF,OSC=HS

void init(void);
void display(void);
void time_adjust(void);

#define _XTAL_FREQ 8000000

unsigned long timer_count=0;	//�^�C�}�萔�ݒ�
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
	//hour��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
	
	PORTB = (0xF0 & PORTB) | (0x0F & (hour/10));	//PORTB�̉�4bit��hour��10�̌��o��
	RB4=0;				//hour��10�̌�ON
	DelayMs(1);
�@�@
	//hour��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (hour%10));	//PORTB�̉�4bit��hour��1�̌��o��
	RA4=0;				//hour��1�̌�ON
	DelayMs(1);
�@�@
	//min��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (min/10));		//PORTB�̉�4bit��min��10�̌��o��
	RA3=0;				//min��10�̌�ON
	DelayMs(1);
�@�@
	//min��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (min%10));		//PORTB�̉�4bit��min��1�̌��o��
	RA2=0;				//min��1�̌�ON
	DelayMs(1);
�@�@
	//sec��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (sec/10));		//PORTB�̉�4bit��sec��10�̌��o��
	RA1=0;				//sec��10�̌�ON
	DelayMs(1);

	//sec��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (sec%10));		//PORTB�̉�4bit��sec��1�̌��o��
	RA0=0;				//sec��1�̌�ON
	DelayMs(1);
}


}
void time_adjust() {
	//hour�̃J�E���g�A�b�v
	if(RC0){			//hour�X�C�b�`������
		DelayMs(30);	//�`���^�����O�҂�
			if(RC0){
				hour++;
				if(hour >=24){
					hour = 0;
				}
			}
		while(RC0){		//�{�^�����I�t�ɂȂ�܂ő҂�
			display();	//�҂��Ă���Ԃ̕\��
		}
		DelayMs(50);	//����񉟂��ɂ�0.05�b�҂�
	}
�@�@
	//min�̃J�E���g�A�b�v
	if(RC1){			//min�X�C�b�`������
		DelayMs(30);	//�`���^�����O�҂�
			if(RC1){
				min++;
				if(min >= 60){
					min = 0;
				}
			}
		while(RC1){		//�{�^�����I�t�ɂȂ�܂ő҂�
			display();	//�҂��Ă���Ԃ̕\��
		}
		DelayMs(50);	//����񉟂��ɂ�0.05�b�҂�
	}
	
	//sec�̃J�E���g�A�b�v
	if(RC2){			//sec�X�C�b�`������
		DelayMs(30);	//�`���^�����O�҂�
			if(RC2){
				sec++;
				if(sec >= 60){
					sec = 0;
				}
			}
		while(RC2){		//�{�^�����I�t�ɂȂ�܂ő҂�
			display();	//�҂��Ă���Ԃ̕\��
		}
		DelayMs(50);	//����񉟂��ɂ�0.05�b�҂�
	}
}

		
void init() {
	INTCON=0;
	init_comms();
	OSCCON = 0b01110000;// �N���b�N�ݒ�APLL�����A8MHz   
	PSA=0;
	PS2=1;
	PS1=0;
	PS0=0;
	T0CS=0;			//�N���b�N�\�[�X�͓������߃T�C�N��
	TMR0=0;			//TMR0�����Z�b�g
	T0IF=0;			//T0IF�����Z�b�g
	T0IE=1;			//TMR0���荞�ݔ���������
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

interrupt clock_count()	{//���荞�݃��[�`��
	if(T0IF){
		T0IF = 0;		//���荞�݃t���O�N���A
		TMR0=131;		//TMR��125�J�E���g�Ɏw��F256-125=131
		timer_count++;
		if(timer_count == 625){
			timer_count =0;	//�^�C�}�J�E���g(�Psec=10M=4*32*125*625)
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
