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

#define START_BIT 0x80		//a
#define MACHINE_BIT 0xB0	//h
#define END_BIT 0xF0		//t

#define TURRETRIGHT	LATB2=1;	SetPWM2(1023); 		//�C���E��
#define TURRETLEFT	LATB2=0;	SetPWM2(1023);		//�C������
#define TIRERIGHT	LATB3=1;	SetPWM1(1023);		//�^�C���E��]
#define TIRELEFT	LATB3=0;	SetPWM1(1023);		//�^�C������]
#define FIRE		LATB6=1;						//����
#define AIRSTOP		LATB6=0;						//��~&�߂�
#define SLEEPMOTER	SetPWM1(0); SetPWM2(0);			//�S���[�^�[��~

static unsigned char data[6];

void init(void);
unsigned char inRxData(unsigned char rxData);
unsigned char get_usart(void);
unsigned char contORE = 0;
//ps�R���g���[���f�[�^

void main(void)
{
	init();
	init_pwm();
	unsigned int cntError = 0;		//��M���s�񐔂��J�E���g
	while(1)
	{	
		if(get_usart()==0x01){	//�S�Ẵf�[�^����M��������s
			
			cntError = 0;		//����Ƀf�[�^����M�����̂ŃN���A
			
			if(R1!=0){
				TURRETRIGHT
			}
			else if(L1!=0){
				TURRETLEFT
			}	
			if(MARU!=0){
				FIRE
			}
			else if(BATSU!=0){
				AIRSTOP
			}
			if(RIGHT_STICK_Y <0x64 && RIGHT_STICK_Y > 0x24 && RIGHT_STICK_X == 0x7f 
			||LEFT_STICK_Y <0x64 && LEFT_STICK_Y > 0x24 && LEFT_STICK_X == 0x7f){
				TIRERIGHT
			}
			else if(RIGHT_STICK_Y <0x64 && RIGHT_STICK_Y > 0x24 && RIGHT_STICK_X == 0x00
			||LEFT_STICK_Y <0x64 && LEFT_STICK_Y > 0x24 && LEFT_STICK_X == 0x00){
				TIRELEFT
			}			
			else if(SANKAKU != 0){
				SLEEPMOTER
			}
 		}
		else{

			cntError++;	//��M���s
			if(cntError>=10)	//�\����h�����߂ɑS�����~
			{
				cntError=0;
			}
		}
	}			
}

void init(void){
	//USART������
	INTCON=0;
	init_comms();
	OSCCON = 0b01110000;// �N���b�N�ݒ�APLL�����A8MHz
	GIE    = 0;//���荞�݃t���O
	C1ON   = 0;
    ANSELA = 0b00000000;
    TRISA  = 0b00000000;
    ANSELB = 0b00000000;
    TRISB  = 0b00000010;
	TXCKSEL  = 1;
    RXDTSEL  = 0;

	T2CON |= 0b00000001;//�v���X�P�[�� 4
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
	unsigned int cnt1=0;//RCIF�̎�M�s�񐔂��J�E���g
	unsigned int cnt2=0;//RCREG�Ƃ̕s��v�񐔂��J�E���g
	while(1)
	{
		if(OERR	)		//�I�[�o�[�����G���[�łȂ������m�F
			CREN=0;		//�p����M���֎~	CREN�֎~������OERR���N���A
		CREN=1;			//�p����M������
		while(!RCIF)	//��M�\��ԂɂȂ�܂Ń��[�v
		{
			cnt1++;		//��M�s��Ԃ��J�E���g
			if(cnt1>=100)//100�J�E���g�Ń^�C���A�E�g
			{
				cnt1=0;
				break;
			}
		}
		if(RCREG==rxData)//��M�����f�[�^�Ƃق����f�[�^����v���Ă��邩���m�F
			return 0x01;//��v������0x01��Ԃ�
		cnt2++;			//�s��v�Ȃ�J�E���g����
		if(cnt2>=10)	//10��s��v�Ȃ�0x00��Ԃ�
		{
			cnt2=0;
			return 0x00;
		}
	}
}
unsigned char get_usart(void)
{
	//�X�^�[�g�r�b�g����M����܂Ń��[�v
	//�|�[�gB���ꎞ�I�ɏ�Ԃ�ۑ�
	//�X�^�[�g�r�b�g�̎�M���J�n���� n �J�E���g�ȓ��Ɏ�M�ł��Ȃ����
	//���ׂẴ��[�^�[������ꎞ��~
	//�����X�^�[�g�r�b�g�𔲂��邱�Ƃ��ł����
	//���[�^�[����ĊJ
	//�}�V���r�b�g����M
	//�����}�V���r�b�g����M�ł��Ȃ����
	//�X�^�[�g�r�b�g��M�ɖ߂�
	//�{�^���f�[�^��M
	//�`�F�b�N�T������M
	//�����`�F�b�N�T������M�ł��Ȃ������
	//�X�^�[�g�r�b�g��M�ɖ߂�
	//�G���h�r�b�g��M
	//�����G���h�r�b�g����M�ł��Ȃ����
	//�X�^�[�g�r�b�g��M�ɖ߂�
	//���ׂẴf�[�^����M�ł����Ȃ� 0x01��Ԃ�
	//�}�V������\	
		
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