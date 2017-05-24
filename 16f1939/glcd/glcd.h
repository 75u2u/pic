#define _XTAL_FREQ 8000000


#define CS1 RD4
#define CS2 RD5
#define DI  RD0
#define RES RD6
#define RW  RD1
#define E   RD2

#define bsy RC7
#define bsytris TRISCbits.TRISC7
#define D0 RC0
#define D1 RC1
#define D2 RC2
#define D3 RB3
#define D4 RB4
#define D5 RC5
#define D6 RC6
#define D7 RC7







void delay_ms(unsigned int count) ; //�~���b�f�B���C
void glcd_init(void) ; //lcd������
void glcd_writelcd(unsigned char cmd,char cselect) ; //LCD�փf�[�^���M(�R�}���h��p)
char glcd_readbusy(void) ; //LCD���r�W�[���`�F�b�N
void glcd_czero(void) ; //�J������0�ɃZ�b�g
void glcd_pageset(char pa) ; //�y�[�W��ݒ�i�g��Ȃ��j
void glcd_write_page(unsigned char *data,char flag) ; //1��ʏ�������
void glcd_en(void) ; //�G�l�[�u��
void glcd_clear(void) ; //��ʏ���
void glcd_pixel_write(char x,char y) ; //�����g���܂���
char glcd_setc(char c) ; //�g���܂���
void glcd_chr(char moji,char c,char page) ; //�ꕶ���o��
void glcd_str(char *str,char c,char page) ; //������o��
void glcd_writelcdd(char cmd,char c,char page) ; //LCD�փf�[�^�𑗐M(�\���f�[�^��p)



