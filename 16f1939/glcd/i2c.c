#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include "i2c.h"

#ifndef _XTAL_FREQ
    /* ��F4MHz�̏ꍇ�A4000000 ���Z�b�g���� */
    #define _XTAL_FREQ 8000000
#endif

// I2C�o�X��L����
void i2c_enable(void)
{
    SSPSTAT = 0b10000000;      // I2C 100kHz
    SSPADD = 0x4F;                // I2C�o�X Baud rate,  4MHz/((SSP1ADD + 1)*4) = 100kHz
    SSPCON1 = 0b00101000;      // I2C�L��, Master Mode
}

// I2C�o�X�𖳌���
void i2c_disable(void){
    SSPCON1 = 0b00001000;      // I2C����, Master Mode
}

// I2C�������݃T�C�N���̊J�n�iStart Condition�̔��s�j
void i2c_start(void){
    SSPCON2bits.SEN = 1;       //  Start Condition Enabled bit
    i2c_wait();
}

// I2C�������݃T�C�N���̊J�n�iRepeat Start Condition�̔��s�j
void i2c_repeat_start(void){
    SSPCON2bits.RSEN = 1;      //  Start Condition Enabled bit
    i2c_wait();
}

// I2C�������݃T�C�N���̏I���iStop Condition�̔��s�j
void i2c_stop(void){
    SSPCON2bits.PEN = 1;       // Stop Condition Enable bit
    i2c_wait();
}

// I2C�ʐM���r�W�[��Ԃ�E����܂ő҂�
void i2c_wait(void){
    while ( ( SSPCON2 & 0x1F ) || ( SSPSTATbits.R_nW ) );

}

// I2C�o�X�Ƀf�[�^�𑗐M�i1�o�C�g���j
void i2c_send_byte(const unsigned char data){
    SSPBUF = data;
    i2c_wait();
}

//I2C�o�X����f�[�^��M
// ack=1 : ��M��ACK�𑗐M���A���̃f�[�^�𑗂�悤�X���[�u�f�o�C�X�Ɏw��
// ack=0 : ��M��NO_ACK�𑗐M���A����ȏ��M���Ȃ����Ƃ��X���[�u�f�o�C�X�Ɏw��
unsigned char i2c_read_byte(const char ack){
    SSPCON2bits.RCEN = 1;
    i2c_wait();
    unsigned char data = SSPBUF;
    i2c_wait();

    if(ack) SSPCON2bits.ACKDT = 0;     // ACK
    else SSPCON2bits.ACKDT = 1;        // NO_ACK

    SSPCON2bits.ACKEN = 1;

    i2c_wait();
    return data;
}
