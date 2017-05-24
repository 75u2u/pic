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

/*�v���g�^�C�v�錾*/
void emergency(void);
void shooting(void);
void loading(void);
void rotation(void);
void movetire1(void);
void movetire2(void);

/*�O���[�o���ϐ��i�[��*/
int pwmr = 0, pwml = 0, PWMR1 = 0, PWMR2 = 0, PWML1 = 0, PWML2 = 0;
int pwmpwl = 0;
int pwmload = 0;

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
	unsigned int cntError = 0;	//��M���s�񐔂��J�E���g
	while (1)
	{

		if (get_usart() == 0x01){	//�S�Ẵf�[�^����M��������s

			cntError = 0;		//����Ƀf�[�^����M�����̂ŃN���A

			emergency();
			shooting();
			loading();
			rotation();
			movetire1();
			movetire2();

		}
		else{

			cntError++;			//��M���s
			if (cntError >= 10)	//�\����h�����߂ɑS�����~
			{
				cntError = 0;
			}
		}
	}
}

void emergency(void){			//�ً}��~
	if (SIKAKU != 0){
		SetPWM1(0);
		SetPWM2(0);
		SetPWM3(0);
		SetPWM4(0);
	}
}

void shooting(void){			//�G�A�V�����_���o,���k
	if (L1 != 0) LATB7 = 1;
	if (L2 != 0) LATB7 = 0;
}

void loading(void){				//���U
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

void rotation(void){			//���
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

void movetire1(void){			//�^�C��1
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

void movetire2(void){			//�^�C��2
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
	//USART������
	INTCON = 0;
	init_comms();
	OSCCON = 0b01110000;// �N���b�N�ݒ�APLL�����A8MHz
	GIE = 0;//���荞�݃t���O
	C1ON = 0;
	ANSELA = 0b00000000;
	TRISA = 0b00000000;
	ANSELB = 0b00000000;
	TRISB = 0b00000010;
	TXCKSEL = 1;
	RXDTSEL = 1;

	T2CON |= 0b00000001;//�v���X�P�[�� 4
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
	unsigned int cnt1 = 0;//RCIF�̎�M�s�񐔂��J�E���g
	unsigned int cnt2 = 0;//RCREG�Ƃ̕s��v�񐔂��J�E���g
	while (1)
	{
		if (OERR)		//�I�[�o�[�����G���[�łȂ������m�F
			CREN = 0;		//�p����M���֎~	CREN�֎~������OERR���N���A
		CREN = 1;			//�p����M������
		while (!RCIF)	//��M�\��ԂɂȂ�܂Ń��[�v
		{
			cnt1++;		//��M�s��Ԃ��J�E���g
			if (cnt1 >= 100)//100�J�E���g�Ń^�C���A�E�g
			{
				cnt1 = 0;
				break;
			}
		}
		if (RCREG == rxData)//��M�����f�[�^�Ƃق����f�[�^����v���Ă��邩���m�F
			return 0x01;//��v������0x01��Ԃ�
		cnt2++;			//�s��v�Ȃ�J�E���g����
		if (cnt2 >= 10)	//10��s��v�Ȃ�0x00��Ԃ�
		{
			cnt2 = 0;
			return 0x00;
		}
	}
}

unsigned char
get_usart(void)
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

