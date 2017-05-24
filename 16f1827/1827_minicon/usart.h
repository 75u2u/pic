#ifndef _SERIAL_H_
#define _SERIAL_H_

#define BAUD 115200      
#define FOSC 32000000L
#define NINE 0     /* Use 9bit communication? FALSE=8bit */

#define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))
#define HIGH_SPEED 1

#if NINE == 1
#define NINE_BITS 0x40
#else
#define NINE_BITS 0
#endif

#if HIGH_SPEED == 1
#define SPEED 0x4
#else
#define SPEED 0
#endif

/*#if defined(_12F1822) || (_16f1823)
	#define RX_PIN TRISC7
	#define TX_PIN TRISC6
#else
	#define RX_PIN TRISC7
	#define TX_PIN TRISC6
#endif*/

#if defined(_12F1826) || (_16f1827)
	#define RX_PIN TRISB1
	#define TX_PIN TRISB2
#else
	#define RX_PIN TRISB1
	#define TX_PIN TRISB2
#endif

/* Serial initialization */
#define init_comms()\
	RX_PIN = 1;	\
	TX_PIN = 1;		  \
	SPBRG = DIVIDER;     	\
	RCSTA = (NINE_BITS|0x90);	\
	TXSTA = (SPEED|NINE_BITS|0x20)

void putch(unsigned char);
unsigned char getch(void);
unsigned char getche(void);

#endif