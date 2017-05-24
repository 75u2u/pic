opt subtitle "Microchip Technology Omniscient Code Generator v1.37 (Free mode) build 201603110536"

opt pagewidth 120

	opt lm

	processor	16F1939
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTC equ 0Eh ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTD equ 0Fh ;# 
# 660 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTE equ 010h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR1 equ 011h ;# 
# 758 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR2 equ 012h ;# 
# 814 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR3 equ 013h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR0 equ 015h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1 equ 016h ;# 
# 884 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1L equ 016h ;# 
# 903 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1H equ 017h ;# 
# 922 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1CON equ 018h ;# 
# 993 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1GCON equ 019h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR2 equ 01Ah ;# 
# 1088 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR2 equ 01Bh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T2CON equ 01Ch ;# 
# 1177 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON0 equ 01Eh ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON1 equ 01Fh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISA equ 08Ch ;# 
# 1342 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISB equ 08Dh ;# 
# 1403 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISC equ 08Eh ;# 
# 1464 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISD equ 08Fh ;# 
# 1525 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISE equ 090h ;# 
# 1562 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE1 equ 091h ;# 
# 1623 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE2 equ 092h ;# 
# 1679 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE3 equ 093h ;# 
# 1724 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OPTION_REG equ 095h ;# 
# 1806 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCON equ 096h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WDTCON equ 097h ;# 
# 1914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCTUNE equ 098h ;# 
# 1971 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCCON equ 099h ;# 
# 2042 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCSTAT equ 09Ah ;# 
# 2103 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRES equ 09Bh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESL equ 09Bh ;# 
# 2128 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESH equ 09Ch ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON0 equ 09Dh ;# 
# 2235 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON1 equ 09Eh ;# 
# 2306 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATA equ 010Ch ;# 
# 2367 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATB equ 010Dh ;# 
# 2428 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATC equ 010Eh ;# 
# 2489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATD equ 010Fh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATE equ 0110h ;# 
# 2595 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON0 equ 0111h ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON1 equ 0112h ;# 
# 2716 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON0 equ 0113h ;# 
# 2772 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON1 equ 0114h ;# 
# 2837 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CMOUT equ 0115h ;# 
# 2862 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BORCON equ 0116h ;# 
# 2888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FVRCON equ 0117h ;# 
# 2963 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON0 equ 0118h ;# 
# 3023 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON1 equ 0119h ;# 
# 3074 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON0 equ 011Ah ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON1 equ 011Bh ;# 
# 3205 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
APFCON equ 011Dh ;# 
# 3260 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELA equ 018Ch ;# 
# 3317 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELB equ 018Dh ;# 
# 3374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELD equ 018Fh ;# 
# 3443 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELE equ 0190h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADR equ 0191h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRL equ 0191h ;# 
# 3507 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRH equ 0192h ;# 
# 3526 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDAT equ 0193h ;# 
# 3532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATL equ 0193h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATA equ 0193h ;# 
# 3569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATH equ 0194h ;# 
# 3588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON1 equ 0195h ;# 
# 3649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON2 equ 0196h ;# 
# 3668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCREG equ 0199h ;# 
# 3687 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXREG equ 019Ah ;# 
# 3706 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRG equ 019Bh ;# 
# 3712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGL equ 019Bh ;# 
# 3717 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRG equ 019Bh ;# 
# 3721 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGL equ 019Bh ;# 
# 3765 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGH equ 019Ch ;# 
# 3770 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGH equ 019Ch ;# 
# 3802 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCSTA equ 019Dh ;# 
# 3863 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXSTA equ 019Eh ;# 
# 3924 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BAUDCON equ 019Fh ;# 
# 3975 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUB equ 020Dh ;# 
# 4044 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUE equ 0210h ;# 
# 4064 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPBUF equ 0211h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPADD equ 0212h ;# 
# 4102 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPMSK equ 0213h ;# 
# 4121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPSTAT equ 0214h ;# 
# 4182 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON1 equ 0215h ;# 
# 4187 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON equ 0215h ;# 
# 4303 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON2 equ 0216h ;# 
# 4364 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON3 equ 0217h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1 equ 0291h ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1L equ 0291h ;# 
# 4450 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1H equ 0292h ;# 
# 4469 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1CON equ 0293h ;# 
# 4550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM1CON equ 0294h ;# 
# 4611 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1AS equ 0295h ;# 
# 4616 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP1AS equ 0295h ;# 
# 4732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR1CON equ 0296h ;# 
# 4775 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2 equ 0298h ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2L equ 0298h ;# 
# 4800 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2H equ 0299h ;# 
# 4819 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2CON equ 029Ah ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM2CON equ 029Bh ;# 
# 4961 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2AS equ 029Ch ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP2AS equ 029Ch ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR2CON equ 029Dh ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS0 equ 029Eh ;# 
# 5212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS1 equ 029Fh ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3 equ 0311h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3L equ 0311h ;# 
# 5270 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3H equ 0312h ;# 
# 5289 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3CON equ 0313h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM3CON equ 0314h ;# 
# 5411 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3AS equ 0315h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP3AS equ 0315h ;# 
# 5532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR3CON equ 0316h ;# 
# 5575 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4 equ 0318h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4L equ 0318h ;# 
# 5600 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4H equ 0319h ;# 
# 5619 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP4CON equ 031Ah ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5 equ 031Ch ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5L equ 031Ch ;# 
# 5693 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5H equ 031Dh ;# 
# 5712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP5CON equ 031Eh ;# 
# 5761 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBP equ 0394h ;# 
# 5830 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBN equ 0395h ;# 
# 5899 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBF equ 0396h ;# 
# 5968 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR4 equ 0415h ;# 
# 5987 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR4 equ 0416h ;# 
# 6006 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T4CON equ 0417h ;# 
# 6076 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR6 equ 041Ch ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR6 equ 041Dh ;# 
# 6114 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T6CON equ 041Eh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCON equ 0791h ;# 
# 6254 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDPS equ 0792h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDREF equ 0793h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCST equ 0794h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDRL equ 0795h ;# 
# 6490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE0 equ 0798h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE1 equ 0799h ;# 
# 6612 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE2 equ 079Ah ;# 
# 6673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA0 equ 07A0h ;# 
# 6734 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA1 equ 07A1h ;# 
# 6795 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA2 equ 07A2h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA3 equ 07A3h ;# 
# 6917 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA4 equ 07A4h ;# 
# 6978 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA5 equ 07A5h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA6 equ 07A6h ;# 
# 7100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA7 equ 07A7h ;# 
# 7161 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA8 equ 07A8h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA9 equ 07A9h ;# 
# 7283 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA10 equ 07AAh ;# 
# 7344 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA11 equ 07ABh ;# 
# 7405 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS_SHAD equ 0FE4h ;# 
# 7436 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG_SHAD equ 0FE5h ;# 
# 7455 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR_SHAD equ 0FE6h ;# 
# 7474 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH_SHAD equ 0FE7h ;# 
# 7493 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L_SHAD equ 0FE8h ;# 
# 7512 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7531 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STKPTR equ 0FEDh ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSL equ 0FEEh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTC equ 0Eh ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTD equ 0Fh ;# 
# 660 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTE equ 010h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR1 equ 011h ;# 
# 758 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR2 equ 012h ;# 
# 814 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR3 equ 013h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR0 equ 015h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1 equ 016h ;# 
# 884 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1L equ 016h ;# 
# 903 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1H equ 017h ;# 
# 922 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1CON equ 018h ;# 
# 993 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1GCON equ 019h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR2 equ 01Ah ;# 
# 1088 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR2 equ 01Bh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T2CON equ 01Ch ;# 
# 1177 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON0 equ 01Eh ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON1 equ 01Fh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISA equ 08Ch ;# 
# 1342 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISB equ 08Dh ;# 
# 1403 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISC equ 08Eh ;# 
# 1464 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISD equ 08Fh ;# 
# 1525 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISE equ 090h ;# 
# 1562 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE1 equ 091h ;# 
# 1623 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE2 equ 092h ;# 
# 1679 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE3 equ 093h ;# 
# 1724 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OPTION_REG equ 095h ;# 
# 1806 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCON equ 096h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WDTCON equ 097h ;# 
# 1914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCTUNE equ 098h ;# 
# 1971 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCCON equ 099h ;# 
# 2042 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCSTAT equ 09Ah ;# 
# 2103 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRES equ 09Bh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESL equ 09Bh ;# 
# 2128 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESH equ 09Ch ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON0 equ 09Dh ;# 
# 2235 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON1 equ 09Eh ;# 
# 2306 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATA equ 010Ch ;# 
# 2367 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATB equ 010Dh ;# 
# 2428 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATC equ 010Eh ;# 
# 2489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATD equ 010Fh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATE equ 0110h ;# 
# 2595 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON0 equ 0111h ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON1 equ 0112h ;# 
# 2716 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON0 equ 0113h ;# 
# 2772 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON1 equ 0114h ;# 
# 2837 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CMOUT equ 0115h ;# 
# 2862 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BORCON equ 0116h ;# 
# 2888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FVRCON equ 0117h ;# 
# 2963 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON0 equ 0118h ;# 
# 3023 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON1 equ 0119h ;# 
# 3074 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON0 equ 011Ah ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON1 equ 011Bh ;# 
# 3205 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
APFCON equ 011Dh ;# 
# 3260 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELA equ 018Ch ;# 
# 3317 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELB equ 018Dh ;# 
# 3374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELD equ 018Fh ;# 
# 3443 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELE equ 0190h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADR equ 0191h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRL equ 0191h ;# 
# 3507 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRH equ 0192h ;# 
# 3526 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDAT equ 0193h ;# 
# 3532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATL equ 0193h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATA equ 0193h ;# 
# 3569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATH equ 0194h ;# 
# 3588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON1 equ 0195h ;# 
# 3649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON2 equ 0196h ;# 
# 3668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCREG equ 0199h ;# 
# 3687 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXREG equ 019Ah ;# 
# 3706 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRG equ 019Bh ;# 
# 3712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGL equ 019Bh ;# 
# 3717 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRG equ 019Bh ;# 
# 3721 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGL equ 019Bh ;# 
# 3765 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGH equ 019Ch ;# 
# 3770 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGH equ 019Ch ;# 
# 3802 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCSTA equ 019Dh ;# 
# 3863 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXSTA equ 019Eh ;# 
# 3924 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BAUDCON equ 019Fh ;# 
# 3975 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUB equ 020Dh ;# 
# 4044 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUE equ 0210h ;# 
# 4064 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPBUF equ 0211h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPADD equ 0212h ;# 
# 4102 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPMSK equ 0213h ;# 
# 4121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPSTAT equ 0214h ;# 
# 4182 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON1 equ 0215h ;# 
# 4187 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON equ 0215h ;# 
# 4303 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON2 equ 0216h ;# 
# 4364 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON3 equ 0217h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1 equ 0291h ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1L equ 0291h ;# 
# 4450 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1H equ 0292h ;# 
# 4469 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1CON equ 0293h ;# 
# 4550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM1CON equ 0294h ;# 
# 4611 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1AS equ 0295h ;# 
# 4616 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP1AS equ 0295h ;# 
# 4732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR1CON equ 0296h ;# 
# 4775 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2 equ 0298h ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2L equ 0298h ;# 
# 4800 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2H equ 0299h ;# 
# 4819 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2CON equ 029Ah ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM2CON equ 029Bh ;# 
# 4961 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2AS equ 029Ch ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP2AS equ 029Ch ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR2CON equ 029Dh ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS0 equ 029Eh ;# 
# 5212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS1 equ 029Fh ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3 equ 0311h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3L equ 0311h ;# 
# 5270 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3H equ 0312h ;# 
# 5289 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3CON equ 0313h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM3CON equ 0314h ;# 
# 5411 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3AS equ 0315h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP3AS equ 0315h ;# 
# 5532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR3CON equ 0316h ;# 
# 5575 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4 equ 0318h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4L equ 0318h ;# 
# 5600 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4H equ 0319h ;# 
# 5619 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP4CON equ 031Ah ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5 equ 031Ch ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5L equ 031Ch ;# 
# 5693 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5H equ 031Dh ;# 
# 5712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP5CON equ 031Eh ;# 
# 5761 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBP equ 0394h ;# 
# 5830 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBN equ 0395h ;# 
# 5899 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBF equ 0396h ;# 
# 5968 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR4 equ 0415h ;# 
# 5987 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR4 equ 0416h ;# 
# 6006 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T4CON equ 0417h ;# 
# 6076 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR6 equ 041Ch ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR6 equ 041Dh ;# 
# 6114 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T6CON equ 041Eh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCON equ 0791h ;# 
# 6254 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDPS equ 0792h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDREF equ 0793h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCST equ 0794h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDRL equ 0795h ;# 
# 6490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE0 equ 0798h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE1 equ 0799h ;# 
# 6612 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE2 equ 079Ah ;# 
# 6673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA0 equ 07A0h ;# 
# 6734 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA1 equ 07A1h ;# 
# 6795 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA2 equ 07A2h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA3 equ 07A3h ;# 
# 6917 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA4 equ 07A4h ;# 
# 6978 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA5 equ 07A5h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA6 equ 07A6h ;# 
# 7100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA7 equ 07A7h ;# 
# 7161 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA8 equ 07A8h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA9 equ 07A9h ;# 
# 7283 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA10 equ 07AAh ;# 
# 7344 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA11 equ 07ABh ;# 
# 7405 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS_SHAD equ 0FE4h ;# 
# 7436 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG_SHAD equ 0FE5h ;# 
# 7455 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR_SHAD equ 0FE6h ;# 
# 7474 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH_SHAD equ 0FE7h ;# 
# 7493 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L_SHAD equ 0FE8h ;# 
# 7512 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7531 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STKPTR equ 0FEDh ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSL equ 0FEEh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTC equ 0Eh ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTD equ 0Fh ;# 
# 660 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PORTE equ 010h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR1 equ 011h ;# 
# 758 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR2 equ 012h ;# 
# 814 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIR3 equ 013h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR0 equ 015h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1 equ 016h ;# 
# 884 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1L equ 016h ;# 
# 903 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR1H equ 017h ;# 
# 922 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1CON equ 018h ;# 
# 993 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T1GCON equ 019h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR2 equ 01Ah ;# 
# 1088 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR2 equ 01Bh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T2CON equ 01Ch ;# 
# 1177 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON0 equ 01Eh ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CPSCON1 equ 01Fh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISA equ 08Ch ;# 
# 1342 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISB equ 08Dh ;# 
# 1403 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISC equ 08Eh ;# 
# 1464 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISD equ 08Fh ;# 
# 1525 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TRISE equ 090h ;# 
# 1562 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE1 equ 091h ;# 
# 1623 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE2 equ 092h ;# 
# 1679 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PIE3 equ 093h ;# 
# 1724 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OPTION_REG equ 095h ;# 
# 1806 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCON equ 096h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WDTCON equ 097h ;# 
# 1914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCTUNE equ 098h ;# 
# 1971 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCCON equ 099h ;# 
# 2042 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
OSCSTAT equ 09Ah ;# 
# 2103 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRES equ 09Bh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESL equ 09Bh ;# 
# 2128 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADRESH equ 09Ch ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON0 equ 09Dh ;# 
# 2235 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ADCON1 equ 09Eh ;# 
# 2306 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATA equ 010Ch ;# 
# 2367 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATB equ 010Dh ;# 
# 2428 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATC equ 010Eh ;# 
# 2489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATD equ 010Fh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LATE equ 0110h ;# 
# 2595 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON0 equ 0111h ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM1CON1 equ 0112h ;# 
# 2716 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON0 equ 0113h ;# 
# 2772 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CM2CON1 equ 0114h ;# 
# 2837 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CMOUT equ 0115h ;# 
# 2862 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BORCON equ 0116h ;# 
# 2888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FVRCON equ 0117h ;# 
# 2963 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON0 equ 0118h ;# 
# 3023 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
DACCON1 equ 0119h ;# 
# 3074 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON0 equ 011Ah ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SRCON1 equ 011Bh ;# 
# 3205 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
APFCON equ 011Dh ;# 
# 3260 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELA equ 018Ch ;# 
# 3317 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELB equ 018Dh ;# 
# 3374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELD equ 018Fh ;# 
# 3443 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ANSELE equ 0190h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADR equ 0191h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRL equ 0191h ;# 
# 3507 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEADRH equ 0192h ;# 
# 3526 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDAT equ 0193h ;# 
# 3532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATL equ 0193h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATA equ 0193h ;# 
# 3569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EEDATH equ 0194h ;# 
# 3588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON1 equ 0195h ;# 
# 3649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
EECON2 equ 0196h ;# 
# 3668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCREG equ 0199h ;# 
# 3687 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXREG equ 019Ah ;# 
# 3706 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRG equ 019Bh ;# 
# 3712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGL equ 019Bh ;# 
# 3717 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRG equ 019Bh ;# 
# 3721 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGL equ 019Bh ;# 
# 3765 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SP1BRGH equ 019Ch ;# 
# 3770 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SPBRGH equ 019Ch ;# 
# 3802 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
RCSTA equ 019Dh ;# 
# 3863 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TXSTA equ 019Eh ;# 
# 3924 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BAUDCON equ 019Fh ;# 
# 3975 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUB equ 020Dh ;# 
# 4044 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WPUE equ 0210h ;# 
# 4064 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPBUF equ 0211h ;# 
# 4083 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPADD equ 0212h ;# 
# 4102 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPMSK equ 0213h ;# 
# 4121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPSTAT equ 0214h ;# 
# 4182 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON1 equ 0215h ;# 
# 4187 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON equ 0215h ;# 
# 4303 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON2 equ 0216h ;# 
# 4364 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
SSPCON3 equ 0217h ;# 
# 4425 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1 equ 0291h ;# 
# 4431 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1L equ 0291h ;# 
# 4450 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR1H equ 0292h ;# 
# 4469 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1CON equ 0293h ;# 
# 4550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM1CON equ 0294h ;# 
# 4611 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP1AS equ 0295h ;# 
# 4616 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP1AS equ 0295h ;# 
# 4732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR1CON equ 0296h ;# 
# 4775 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2 equ 0298h ;# 
# 4781 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2L equ 0298h ;# 
# 4800 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR2H equ 0299h ;# 
# 4819 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2CON equ 029Ah ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM2CON equ 029Bh ;# 
# 4961 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP2AS equ 029Ch ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP2AS equ 029Ch ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR2CON equ 029Dh ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS0 equ 029Eh ;# 
# 5212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPTMRS1 equ 029Fh ;# 
# 5245 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3 equ 0311h ;# 
# 5251 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3L equ 0311h ;# 
# 5270 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR3H equ 0312h ;# 
# 5289 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3CON equ 0313h ;# 
# 5350 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PWM3CON equ 0314h ;# 
# 5411 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP3AS equ 0315h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
ECCP3AS equ 0315h ;# 
# 5532 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PSTR3CON equ 0316h ;# 
# 5575 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4 equ 0318h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4L equ 0318h ;# 
# 5600 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR4H equ 0319h ;# 
# 5619 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP4CON equ 031Ah ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5 equ 031Ch ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5L equ 031Ch ;# 
# 5693 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCPR5H equ 031Dh ;# 
# 5712 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
CCP5CON equ 031Eh ;# 
# 5761 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBP equ 0394h ;# 
# 5830 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBN equ 0395h ;# 
# 5899 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
IOCBF equ 0396h ;# 
# 5968 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR4 equ 0415h ;# 
# 5987 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR4 equ 0416h ;# 
# 6006 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T4CON equ 0417h ;# 
# 6076 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TMR6 equ 041Ch ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PR6 equ 041Dh ;# 
# 6114 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
T6CON equ 041Eh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCON equ 0791h ;# 
# 6254 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDPS equ 0792h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDREF equ 0793h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDCST equ 0794h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDRL equ 0795h ;# 
# 6490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE0 equ 0798h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE1 equ 0799h ;# 
# 6612 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDSE2 equ 079Ah ;# 
# 6673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA0 equ 07A0h ;# 
# 6734 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA1 equ 07A1h ;# 
# 6795 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA2 equ 07A2h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA3 equ 07A3h ;# 
# 6917 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA4 equ 07A4h ;# 
# 6978 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA5 equ 07A5h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA6 equ 07A6h ;# 
# 7100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA7 equ 07A7h ;# 
# 7161 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA8 equ 07A8h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA9 equ 07A9h ;# 
# 7283 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA10 equ 07AAh ;# 
# 7344 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
LCDDATA11 equ 07ABh ;# 
# 7405 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STATUS_SHAD equ 0FE4h ;# 
# 7436 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
WREG_SHAD equ 0FE5h ;# 
# 7455 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
BSR_SHAD equ 0FE6h ;# 
# 7474 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
PCLATH_SHAD equ 0FE7h ;# 
# 7493 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0L_SHAD equ 0FE8h ;# 
# 7512 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7531 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7550 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
STKPTR equ 0FEDh ;# 
# 7588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSL equ 0FEEh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1939.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_delay_ms
	FNCALL	_main,_glcd_clear
	FNCALL	_main,_glcd_init
	FNCALL	_main,_glcd_str
	FNCALL	_glcd_str,___bmul
	FNCALL	_glcd_str,_delay_ms
	FNCALL	_glcd_str,_glcd_chr
	FNCALL	_glcd_chr,___wmul
	FNCALL	_glcd_chr,_glcd_writelcdd
	FNCALL	_glcd_init,_glcd_writelcd
	FNCALL	_glcd_clear,_glcd_writelcd
	FNCALL	_glcd_clear,_glcd_writelcdd
	FNCALL	_glcd_writelcdd,_glcd_en
	FNCALL	_glcd_writelcdd,_glcd_readbusy
	FNCALL	_glcd_writelcdd,_glcd_writelcd
	FNCALL	_glcd_writelcd,_glcd_en
	FNCALL	_glcd_writelcd,_glcd_readbusy
	FNROOT	_main
	global	_Font
psect	stringtext,class=STRCODE,delta=2,noexec
global __pstringtext
__pstringtext:
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\font.h"
	line	4
_Font:
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	04Fh
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	07h
	retlw	low(0)
	retlw	07h
	retlw	low(0)
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	024h
	retlw	02Ah
	retlw	07Fh
	retlw	02Ah
	retlw	012h
	retlw	023h
	retlw	013h
	retlw	08h
	retlw	064h
	retlw	062h
	retlw	036h
	retlw	049h
	retlw	055h
	retlw	022h
	retlw	050h
	retlw	low(0)
	retlw	05h
	retlw	03h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	01Ch
	retlw	022h
	retlw	041h
	retlw	low(0)
	retlw	low(0)
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	low(0)
	retlw	014h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	low(0)
	retlw	050h
	retlw	030h
	retlw	low(0)
	retlw	low(0)
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	low(0)
	retlw	060h
	retlw	060h
	retlw	low(0)
	retlw	low(0)
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	03Eh
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	03Eh
	retlw	low(0)
	retlw	042h
	retlw	07Fh
	retlw	040h
	retlw	low(0)
	retlw	042h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	046h
	retlw	021h
	retlw	041h
	retlw	045h
	retlw	04Bh
	retlw	031h
	retlw	018h
	retlw	014h
	retlw	012h
	retlw	07Fh
	retlw	010h
	retlw	027h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	039h
	retlw	03Ch
	retlw	04Ah
	retlw	049h
	retlw	049h
	retlw	030h
	retlw	01h
	retlw	071h
	retlw	09h
	retlw	05h
	retlw	03h
	retlw	036h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	06h
	retlw	049h
	retlw	049h
	retlw	029h
	retlw	01Eh
	retlw	low(0)
	retlw	036h
	retlw	036h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	056h
	retlw	036h
	retlw	low(0)
	retlw	low(0)
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	low(0)
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	low(0)
	retlw	041h
	retlw	022h
	retlw	014h
	retlw	08h
	retlw	02h
	retlw	01h
	retlw	051h
	retlw	09h
	retlw	06h
	retlw	032h
	retlw	049h
	retlw	079h
	retlw	041h
	retlw	03Eh
	retlw	07Eh
	retlw	011h
	retlw	011h
	retlw	011h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	041h
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	03Eh
	retlw	041h
	retlw	049h
	retlw	049h
	retlw	07Ah
	retlw	07Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	low(0)
	retlw	041h
	retlw	07Fh
	retlw	041h
	retlw	low(0)
	retlw	020h
	retlw	040h
	retlw	041h
	retlw	03Fh
	retlw	01h
	retlw	07Fh
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	02h
	retlw	0Ch
	retlw	02h
	retlw	07Fh
	retlw	07Fh
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	07Fh
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	03Eh
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	06h
	retlw	03Eh
	retlw	041h
	retlw	051h
	retlw	021h
	retlw	05Eh
	retlw	07Fh
	retlw	09h
	retlw	019h
	retlw	029h
	retlw	046h
	retlw	046h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	031h
	retlw	01h
	retlw	01h
	retlw	07Fh
	retlw	01h
	retlw	01h
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	03Fh
	retlw	01Fh
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	03Fh
	retlw	040h
	retlw	038h
	retlw	040h
	retlw	03Fh
	retlw	063h
	retlw	014h
	retlw	08h
	retlw	014h
	retlw	063h
	retlw	07h
	retlw	08h
	retlw	070h
	retlw	08h
	retlw	07h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	043h
	retlw	low(0)
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	low(0)
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	low(0)
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	low(0)
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	low(0)
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	low(0)
	retlw	020h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	078h
	retlw	07Fh
	retlw	048h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	020h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	048h
	retlw	07Fh
	retlw	038h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	018h
	retlw	08h
	retlw	07Eh
	retlw	09h
	retlw	01h
	retlw	02h
	retlw	0Ch
	retlw	052h
	retlw	052h
	retlw	052h
	retlw	03Eh
	retlw	07Fh
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	low(0)
	retlw	044h
	retlw	07Dh
	retlw	040h
	retlw	low(0)
	retlw	020h
	retlw	040h
	retlw	044h
	retlw	03Dh
	retlw	low(0)
	retlw	07Fh
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	low(0)
	retlw	low(0)
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	low(0)
	retlw	07Ch
	retlw	04h
	retlw	018h
	retlw	04h
	retlw	078h
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	07Ch
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	014h
	retlw	014h
	retlw	018h
	retlw	07Ch
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	08h
	retlw	048h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	020h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	040h
	retlw	020h
	retlw	03Ch
	retlw	040h
	retlw	040h
	retlw	020h
	retlw	07Ch
	retlw	01Ch
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Ch
	retlw	03Ch
	retlw	040h
	retlw	030h
	retlw	040h
	retlw	03Ch
	retlw	044h
	retlw	028h
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0Ch
	retlw	050h
	retlw	050h
	retlw	050h
	retlw	03Ch
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	044h
	retlw	low(0)
	retlw	08h
	retlw	036h
	retlw	041h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	07Fh
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	041h
	retlw	036h
	retlw	08h
	retlw	low(0)
	retlw	08h
	retlw	08h
	retlw	02Ah
	retlw	01Ch
	retlw	08h
	retlw	08h
	retlw	01Ch
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	low(0)
	retlw	low(0)
	retlw	0Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0Fh
	retlw	low(0)
	retlw	low(0)
	retlw	02Ch
	retlw	032h
	retlw	02h
	retlw	032h
	retlw	02Ch
	retlw	044h
	retlw	03Ch
	retlw	04h
	retlw	07Ch
	retlw	044h
	retlw	063h
	retlw	055h
	retlw	049h
	retlw	041h
	retlw	041h
	retlw	014h
	retlw	014h
	retlw	07Ch
	retlw	014h
	retlw	012h
	retlw	044h
	retlw	03Ch
	retlw	014h
	retlw	014h
	retlw	074h
	retlw	07Ch
	retlw	014h
	retlw	01Ch
	retlw	014h
	retlw	07Ch
	retlw	010h
	retlw	010h
	retlw	054h
	retlw	010h
	retlw	010h
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	070h
	retlw	050h
	retlw	070h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	0Fh
	retlw	01h
	retlw	01h
	retlw	040h
	retlw	040h
	retlw	078h
	retlw	low(0)
	retlw	low(0)
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	018h
	retlw	018h
	retlw	low(0)
	retlw	low(0)
	retlw	0Ah
	retlw	0Ah
	retlw	04Ah
	retlw	02Ah
	retlw	01Eh
	retlw	04h
	retlw	024h
	retlw	034h
	retlw	014h
	retlw	0Ch
	retlw	020h
	retlw	010h
	retlw	078h
	retlw	04h
	retlw	low(0)
	retlw	018h
	retlw	08h
	retlw	04Ch
	retlw	048h
	retlw	038h
	retlw	048h
	retlw	048h
	retlw	078h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	028h
	retlw	018h
	retlw	07Ch
	retlw	08h
	retlw	08h
	retlw	07Ch
	retlw	08h
	retlw	028h
	retlw	018h
	retlw	040h
	retlw	048h
	retlw	048h
	retlw	078h
	retlw	040h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	07Ch
	retlw	low(0)
	retlw	018h
	retlw	low(0)
	retlw	058h
	retlw	040h
	retlw	038h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	01h
	retlw	041h
	retlw	03Dh
	retlw	09h
	retlw	07h
	retlw	020h
	retlw	010h
	retlw	07Ch
	retlw	02h
	retlw	01h
	retlw	0Eh
	retlw	02h
	retlw	043h
	retlw	022h
	retlw	01Eh
	retlw	042h
	retlw	042h
	retlw	07Eh
	retlw	042h
	retlw	042h
	retlw	022h
	retlw	012h
	retlw	0Ah
	retlw	07Fh
	retlw	02h
	retlw	042h
	retlw	03Fh
	retlw	02h
	retlw	042h
	retlw	03Eh
	retlw	0Ah
	retlw	0Ah
	retlw	07Fh
	retlw	0Ah
	retlw	0Ah
	retlw	08h
	retlw	046h
	retlw	042h
	retlw	022h
	retlw	01Eh
	retlw	04h
	retlw	03h
	retlw	042h
	retlw	03Eh
	retlw	04h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	07Eh
	retlw	02h
	retlw	04Fh
	retlw	022h
	retlw	01Fh
	retlw	02h
	retlw	04Ah
	retlw	04Ah
	retlw	040h
	retlw	020h
	retlw	01Ch
	retlw	042h
	retlw	022h
	retlw	012h
	retlw	02Ah
	retlw	046h
	retlw	02h
	retlw	03Fh
	retlw	042h
	retlw	04Ah
	retlw	046h
	retlw	06h
	retlw	048h
	retlw	040h
	retlw	020h
	retlw	01Eh
	retlw	08h
	retlw	046h
	retlw	04Ah
	retlw	032h
	retlw	01Eh
	retlw	0Ah
	retlw	04Ah
	retlw	03Eh
	retlw	09h
	retlw	08h
	retlw	0Eh
	retlw	low(0)
	retlw	04Eh
	retlw	020h
	retlw	01Eh
	retlw	04h
	retlw	045h
	retlw	03Dh
	retlw	05h
	retlw	04h
	retlw	low(0)
	retlw	07Fh
	retlw	08h
	retlw	010h
	retlw	low(0)
	retlw	044h
	retlw	024h
	retlw	01Fh
	retlw	04h
	retlw	04h
	retlw	040h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	040h
	retlw	042h
	retlw	02Ah
	retlw	012h
	retlw	02Ah
	retlw	06h
	retlw	022h
	retlw	012h
	retlw	07Bh
	retlw	016h
	retlw	022h
	retlw	low(0)
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	low(0)
	retlw	078h
	retlw	low(0)
	retlw	02h
	retlw	04h
	retlw	078h
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	02h
	retlw	042h
	retlw	042h
	retlw	022h
	retlw	01Eh
	retlw	04h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	030h
	retlw	032h
	retlw	02h
	retlw	07Fh
	retlw	02h
	retlw	032h
	retlw	02h
	retlw	012h
	retlw	022h
	retlw	052h
	retlw	0Eh
	retlw	low(0)
	retlw	02Ah
	retlw	02Ah
	retlw	02Ah
	retlw	040h
	retlw	038h
	retlw	024h
	retlw	022h
	retlw	020h
	retlw	070h
	retlw	040h
	retlw	028h
	retlw	010h
	retlw	028h
	retlw	06h
	retlw	0Ah
	retlw	03Eh
	retlw	04Ah
	retlw	04Ah
	retlw	04Ah
	retlw	04h
	retlw	07Fh
	retlw	04h
	retlw	014h
	retlw	0Ch
	retlw	040h
	retlw	042h
	retlw	042h
	retlw	07Eh
	retlw	040h
	retlw	04Ah
	retlw	04Ah
	retlw	04Ah
	retlw	04Ah
	retlw	07Eh
	retlw	04h
	retlw	05h
	retlw	045h
	retlw	025h
	retlw	01Ch
	retlw	0Fh
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	low(0)
	retlw	07Ch
	retlw	low(0)
	retlw	07Eh
	retlw	080h
	retlw	030h
	retlw	07Eh
	retlw	040h
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	07Eh
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	07Eh
	retlw	0Eh
	retlw	02h
	retlw	042h
	retlw	022h
	retlw	01Eh
	retlw	042h
	retlw	042h
	retlw	040h
	retlw	020h
	retlw	018h
	retlw	02h
	retlw	04h
	retlw	01h
	retlw	02h
	retlw	low(0)
	retlw	07h
	retlw	05h
	retlw	07h
	retlw	low(0)
	retlw	low(0)
	global __end_of_Font
__end_of_Font:
	global	_Font
	global	_PORTA
_PORTA	set	0xC
	global	_PORTB
_PORTB	set	0xD
	global	_PORTC
_PORTC	set	0xE
	global	_PORTD
_PORTD	set	0xF
	global	_PORTE
_PORTE	set	0x10
	global	_RB3
_RB3	set	0x6B
	global	_RB4
_RB4	set	0x6C
	global	_RC0
_RC0	set	0x70
	global	_RC1
_RC1	set	0x71
	global	_RC2
_RC2	set	0x72
	global	_RC5
_RC5	set	0x75
	global	_RC6
_RC6	set	0x76
	global	_RC7
_RC7	set	0x77
	global	_RD0
_RD0	set	0x78
	global	_RD1
_RD1	set	0x79
	global	_RD2
_RD2	set	0x7A
	global	_RD4
_RD4	set	0x7C
	global	_RD5
_RD5	set	0x7D
	global	_RD6
_RD6	set	0x7E
	global	_ADCON0
_ADCON0	set	0x9D
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_ADRESH
_ADRESH	set	0x9C
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_TRISD
_TRISD	set	0x8F
	global	_TRISE
_TRISE	set	0x90
	global	_ADGO
_ADGO	set	0x4E9
	global	_CM1CON0
_CM1CON0	set	0x111
	global	_CM2CON0
_CM2CON0	set	0x113
	global	_FVRCON
_FVRCON	set	0x117
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELD
_ANSELD	set	0x18F
	global	_ANSELE
_ANSELE	set	0x190
	global	_SSPADD
_SSPADD	set	0x212
	global	_SSPBUF
_SSPBUF	set	0x211
	global	_SSPCON1
_SSPCON1	set	0x215
	global	_SSPCON2
_SSPCON2	set	0x216
	global	_SSPCON2bits
_SSPCON2bits	set	0x216
	global	_SSPSTAT
_SSPSTAT	set	0x214
	global	_SSPSTATbits
_SSPSTATbits	set	0x214
	
STR_5:	
	retlw	84	;'T'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	103	;'g'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	95	;'_'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	40	;'('
	retlw	41	;')'
	retlw	32	;' '
	retlw	59	;';'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	35	;'#'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	60	;'<'
	retlw	120	;'x'
	retlw	99	;'c'
	retlw	46	;'.'
	retlw	104	;'h'
	retlw	62	;'>'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	-78
	retlw	-36
	retlw	-64
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	118	;'v'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	40	;'('
	retlw	41	;')'
	retlw	32	;' '
	retlw	123	;'{'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	125	;'}'
	retlw	0
psect	stringtext
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_STVREN$OFF
__CFG_STVREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
	file	"glcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_addata:
       ds      2

_adflag:
       ds      2

_cnt:
       ds      2

	file	"glcd.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_glcd_readbusy:	; 1 bytes @ 0x0
??_glcd_readbusy:	; 1 bytes @ 0x0
?_glcd_en:	; 1 bytes @ 0x0
??_glcd_en:	; 1 bytes @ 0x0
?_delay_ms:	; 1 bytes @ 0x0
?_glcd_init:	; 1 bytes @ 0x0
?_glcd_clear:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	glcd_readbusy@i
glcd_readbusy@i:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
?_glcd_writelcd:	; 1 bytes @ 0x1
??___bmul:	; 1 bytes @ 0x1
	global	glcd_writelcd@cselect
glcd_writelcd@cselect:	; 1 bytes @ 0x1
	ds	1
??_glcd_writelcd:	; 1 bytes @ 0x2
??_delay_ms:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	glcd_writelcd@cmd
glcd_writelcd@cmd:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
??_glcd_init:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
	global	delay_ms@dly
delay_ms@dly:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
?_glcd_writelcdd:	; 1 bytes @ 0x6
	global	glcd_writelcdd@c
glcd_writelcdd@c:	; 1 bytes @ 0x6
	ds	1
	global	glcd_writelcdd@page
glcd_writelcdd@page:	; 1 bytes @ 0x7
	ds	1
??_glcd_writelcdd:	; 1 bytes @ 0x8
	ds	1
	global	glcd_writelcdd@cl
glcd_writelcdd@cl:	; 1 bytes @ 0x9
	ds	1
	global	glcd_writelcdd@cmd
glcd_writelcdd@cmd:	; 1 bytes @ 0xA
	ds	1
??_glcd_clear:	; 1 bytes @ 0xB
?_glcd_chr:	; 1 bytes @ 0xB
	global	glcd_chr@c
glcd_chr@c:	; 1 bytes @ 0xB
	ds	1
	global	glcd_chr@page
glcd_chr@page:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_glcd_chr:	; 1 bytes @ 0x0
	global	glcd_clear@l
glcd_clear@l:	; 2 bytes @ 0x0
	ds	2
	global	glcd_clear@m
glcd_clear@m:	; 2 bytes @ 0x2
	ds	4
	global	glcd_chr@moji
glcd_chr@moji:	; 1 bytes @ 0x6
	ds	1
	global	glcd_chr@i
glcd_chr@i:	; 2 bytes @ 0x7
	ds	2
?_glcd_str:	; 1 bytes @ 0x9
	global	glcd_str@str
glcd_str@str:	; 2 bytes @ 0x9
	ds	2
	global	glcd_str@c
glcd_str@c:	; 1 bytes @ 0xB
	ds	1
	global	glcd_str@page
glcd_str@page:	; 1 bytes @ 0xC
	ds	1
??_glcd_str:	; 1 bytes @ 0xD
	ds	3
	global	glcd_str@i
glcd_str@i:	; 2 bytes @ 0x10
	ds	2
??_main:	; 1 bytes @ 0x12
	ds	2
;!
;!Data Sizes:
;!    Strings     82
;!    Constant    960
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80     20      26
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    glcd_str@str	PTR unsigned char  size(2) Largest target is 18
;!		 -> STR_6(CODE[14]), STR_5(CODE[18]), STR_4(CODE[2]), STR_3(CODE[18]), 
;!		 -> STR_2(CODE[14]), STR_1(CODE[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_glcd_clear
;!    _glcd_str->_glcd_chr
;!    _glcd_chr->_glcd_writelcdd
;!    _glcd_init->_glcd_writelcd
;!    _glcd_clear->_glcd_writelcdd
;!    _glcd_writelcdd->___wmul
;!    _glcd_writelcd->_glcd_readbusy
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_glcd_str
;!    _glcd_str->_glcd_chr
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 7     7      0    8051
;!                                             18 BANK0      2     2      0
;!                           _delay_ms
;!                         _glcd_clear
;!                          _glcd_init
;!                           _glcd_str
;! ---------------------------------------------------------------------------------
;! (1) _glcd_str                                             9     5      4    3799
;!                                              9 BANK0      9     5      4
;!                             ___bmul
;!                           _delay_ms
;!                           _glcd_chr
;! ---------------------------------------------------------------------------------
;! (2) _glcd_chr                                            11     9      2    2339
;!                                             11 COMMON     2     0      2
;!                                              0 BANK0      9     9      0
;!                             ___bmul (ARG)
;!                             ___wmul
;!                     _glcd_writelcdd
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     198
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2     205
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               4     3      1     145
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _glcd_init                                            2     2      0    1016
;!                                              4 COMMON     2     2      0
;!                      _glcd_writelcd
;! ---------------------------------------------------------------------------------
;! (1) _glcd_clear                                           6     6      0    3031
;!                                             11 COMMON     2     2      0
;!                                              0 BANK0      4     4      0
;!                      _glcd_writelcd
;!                     _glcd_writelcdd
;! ---------------------------------------------------------------------------------
;! (3) _glcd_writelcdd                                       5     3      2    1879
;!                                              6 COMMON     5     3      2
;!                             ___wmul (ARG)
;!                            _glcd_en
;!                      _glcd_readbusy
;!                      _glcd_writelcd
;! ---------------------------------------------------------------------------------
;! (4) _glcd_writelcd                                        3     2      1    1016
;!                                              1 COMMON     3     2      1
;!                            _glcd_en
;!                      _glcd_readbusy
;! ---------------------------------------------------------------------------------
;! (5) _glcd_readbusy                                        1     1      0      23
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _glcd_en                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!   _glcd_clear
;!     _glcd_writelcd
;!       _glcd_en
;!       _glcd_readbusy
;!     _glcd_writelcdd
;!       ___wmul (ARG)
;!       _glcd_en (ARG)
;!       _glcd_readbusy (ARG)
;!       _glcd_writelcd (ARG)
;!         _glcd_en
;!         _glcd_readbusy
;!   _glcd_init
;!     _glcd_writelcd
;!       _glcd_en
;!       _glcd_readbusy
;!   _glcd_str
;!     ___bmul
;!     _delay_ms
;!     _glcd_chr
;!       ___bmul (ARG)
;!       ___wmul (ARG)
;!       _glcd_writelcdd (ARG)
;!         ___wmul (ARG)
;!         _glcd_en (ARG)
;!         _glcd_readbusy (ARG)
;!         _glcd_writelcd (ARG)
;!           _glcd_en
;!           _glcd_readbusy
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      D       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     14      1A       5       32.5%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0       0      19        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0      27      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BANK11              50      0       0      28        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BANK12              30      0       0      30        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0      27      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            3    0        float 
;;  log             2    0        int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_ms
;;		_glcd_clear
;;		_glcd_init
;;		_glcd_str
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\main.c"
	line	23
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\main.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 11
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	24
	
l1316:	
;main.c: 24: OSCCON = 0x70 ;
	movlw	low(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	25
	
l1318:	
;main.c: 25: CM1CON0 = 0 ;
	movlb 2	; select bank2
	clrf	(273)^0100h	;volatile
	line	26
	
l1320:	
;main.c: 26: CM2CON0 = 0 ;
	clrf	(275)^0100h	;volatile
	line	27
;main.c: 27: ANSELA = 0b11 ;
	movlw	low(03h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	28
	
l1322:	
;main.c: 28: ANSELB = 0 ;
	clrf	(397)^0180h	;volatile
	line	29
	
l1324:	
;main.c: 29: ANSELD = 0 ;
	clrf	(399)^0180h	;volatile
	line	30
	
l1326:	
;main.c: 30: ANSELE = 0 ;
	clrf	(400)^0180h	;volatile
	line	31
	
l1328:	
;main.c: 31: TRISA = 0b11 ;
	movlw	low(03h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	32
;main.c: 32: TRISB = 0 ;
	clrf	(141)^080h	;volatile
	line	33
	
l1330:	
;main.c: 33: TRISC = 0b00011000 ;
	movlw	low(018h)
	movwf	(142)^080h	;volatile
	line	34
	
l1332:	
;main.c: 34: TRISD = 0 ;
	clrf	(143)^080h	;volatile
	line	35
	
l1334:	
;main.c: 35: TRISE = 0 ;
	clrf	(144)^080h	;volatile
	line	36
	
l1336:	
;main.c: 36: RD6 = 1 ;
	movlb 0	; select bank0
	bsf	(126/8),(126)&7	;volatile
	line	37
	
l1338:	
;main.c: 37: PORTA = 0 ;
	clrf	(12)	;volatile
	line	38
	
l1340:	
;main.c: 38: PORTB = 0 ;
	clrf	(13)	;volatile
	line	39
	
l1342:	
;main.c: 39: PORTC = 0 ;
	clrf	(14)	;volatile
	line	40
	
l1344:	
;main.c: 40: PORTD = 0 ;
	clrf	(15)	;volatile
	line	41
	
l1346:	
;main.c: 41: PORTE = 0 ;
	clrf	(16)	;volatile
	line	42
;main.c: 42: FVRCON = 0b10000010 ;
	movlw	low(082h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	43
;main.c: 43: ADCON0 = 0b00000001 ;
	movlw	low(01h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	44
;main.c: 44: ADCON1 = 0b11110011 ;
	movlw	low(0F3h)
	movwf	(158)^080h	;volatile
	line	45
	
l1348:	
;main.c: 45: delay_ms(100) ;
	movlw	064h
	movwf	(delay_ms@count)
	movlw	0
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	46
	
l1350:	
;main.c: 46: glcd_init() ;
	fcall	_glcd_init
	line	47
	
l1352:	
;main.c: 47: glcd_clear() ;
	fcall	_glcd_clear
	goto	l1354
	line	50
;main.c: 48: float temp ;
;main.c: 49: int log ;
;main.c: 50: while(1) {
	
l250:	
	line	52
	
l1354:	
;main.c: 52: glcd_clear() ;
	fcall	_glcd_clear
	line	53
	
l1356:	
;main.c: 53: glcd_str("#include <xc.h>" ,0,0) ;
	movlw	low(((STR_1)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_1)|8000h))
	movwf	((glcd_str@str))+1
	clrf	(glcd_str@c)
	clrf	(glcd_str@page)
	fcall	_glcd_str
	line	54
	
l1358:	
;main.c: 54: glcd_str("void main() {" ,0,2) ;
	movlw	low(((STR_2)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_2)|8000h))
	movwf	((glcd_str@str))+1
	clrf	(glcd_str@c)
	movlw	low(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(glcd_str@page)
	fcall	_glcd_str
	line	55
	
l1360:	
;main.c: 55: glcd_str("    glcd_init() ;" ,0,3) ;
	movlw	low(((STR_3)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_3)|8000h))
	movwf	((glcd_str@str))+1
	clrf	(glcd_str@c)
	movlw	low(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(glcd_str@page)
	fcall	_glcd_str
	line	56
	
l1362:	
;main.c: 56: glcd_str("}" ,0,4) ;
	movlw	low(((STR_4)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_4)|8000h))
	movwf	((glcd_str@str))+1
	clrf	(glcd_str@c)
	movlw	low(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(glcd_str@page)
	fcall	_glcd_str
	line	57
	
l1364:	
;main.c: 57: glcd_str("This program was ",0,6) ;
	movlw	low(((STR_5)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_5)|8000h))
	movwf	((glcd_str@str))+1
	clrf	(glcd_str@c)
	movlw	low(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(glcd_str@page)
	fcall	_glcd_str
	line	58
	
l1366:	
;main.c: 58: glcd_str("maked by ²ÜÀ ",55,7) ;
	movlw	low(((STR_6)|8000h))
	movlb 0	; select bank0
	movwf	(glcd_str@str)
	movlw	high(((STR_6)|8000h))
	movwf	((glcd_str@str))+1
	movlw	low(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(glcd_str@c)
	movlw	low(07h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(glcd_str@page)
	fcall	_glcd_str
	line	60
	
l1368:	
;main.c: 60: delay_ms(4000) ;
	movlw	0A0h
	movwf	(delay_ms@count)
	movlw	0Fh
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	goto	l1354
	line	61
	
l251:	
	line	50
	goto	l1354
	
l252:	
	line	63
;main.c: 61: }
;main.c: 63: do { __builtin_software_breakpoint(); asm("reset"); }while(0) ;
	
l253:	
	opt	asmopt_off
	dw	0x0003
	opt	asmopt_on
# 63 "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\main.c"
reset ;# 
psect	maintext
	goto	l255
	
l254:	
	line	64
	
l255:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_glcd_str

;; *************** function _glcd_str *****************
;; Defined at:
;;		line 171 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;  str             2    9[BANK0 ] PTR unsigned char 
;;		 -> STR_6(14), STR_5(18), STR_4(2), STR_3(18), 
;;		 -> STR_2(14), STR_1(16), 
;;  c               1   11[BANK0 ] unsigned char 
;;  page            1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   16[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___bmul
;;		_delay_ms
;;		_glcd_chr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	171
global __ptext1
__ptext1:	;psect for function _glcd_str
psect	text1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	171
	global	__size_of_glcd_str
	__size_of_glcd_str	equ	__end_of_glcd_str-_glcd_str
	
_glcd_str:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	174
	
l1236:	
;glcd.c: 173: int i;
;glcd.c: 174: i = 0 ;
	movlb 0	; select bank0
	clrf	(glcd_str@i)
	clrf	(glcd_str@i+1)
	line	175
;glcd.c: 175: while(str[i] != 0x00){
	goto	l1244
	
l110:	
	line	176
	
l1238:	
;glcd.c: 176: glcd_chr(str[i],c+(6*i),page) ;
	movlw	low(06h)
	movwf	(??_glcd_str+0)+0
	movf	(??_glcd_str+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(glcd_str@i),w
	fcall	___bmul
	movlb 0	; select bank0
	addwf	(glcd_str@c),w
	movwf	(??_glcd_str+1)+0
	movf	(??_glcd_str+1)+0,w
	movwf	(glcd_chr@c)
	movf	(glcd_str@page),w
	movwf	(??_glcd_str+2)+0
	movf	(??_glcd_str+2)+0,w
	movwf	(glcd_chr@page)
	movf	(glcd_str@str),w
	addwf	(glcd_str@i),w
	movwf	fsr0l
	movf	(glcd_str@str+1),w
	addwfc	(glcd_str@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_glcd_chr
	line	177
	
l1240:	
;glcd.c: 177: delay_ms(150) ;
	movlw	096h
	movwf	(delay_ms@count)
	movlw	0
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	178
	
l1242:	
;glcd.c: 178: i++ ;
	movlw	01h
	movlb 0	; select bank0
	addwf	(glcd_str@i),f
	movlw	0
	addwfc	(glcd_str@i+1),f
	goto	l1244
	line	179
	
l109:	
	line	175
	
l1244:	
	movf	(glcd_str@str),w
	addwf	(glcd_str@i),w
	movwf	fsr0l
	movf	(glcd_str@str+1),w
	addwfc	(glcd_str@i+1),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l1238
u1450:
	goto	l112
	
l111:	
	line	180
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_str
	__end_of_glcd_str:
	signat	_glcd_str,12409
	global	_glcd_chr

;; *************** function _glcd_chr *****************
;; Defined at:
;;		line 163 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;  moji            1    wreg     unsigned char 
;;  c               1   11[COMMON] unsigned char 
;;  page            1   12[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  moji            1    6[BANK0 ] unsigned char 
;;  i               2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;;		_glcd_writelcdd
;; This function is called by:
;;		_glcd_str
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	163
global __ptext2
__ptext2:	;psect for function _glcd_chr
psect	text2
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	163
	global	__size_of_glcd_chr
	__size_of_glcd_chr	equ	__end_of_glcd_chr-_glcd_chr
	
_glcd_chr:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_chr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;glcd_chr@moji stored from wreg
	movlb 0	; select bank0
	movwf	(glcd_chr@moji)
	line	166
	
l1172:	
;glcd.c: 165: int i ;
;glcd.c: 166: for(i=0;i<5;i++){
	clrf	(glcd_chr@i)
	clrf	(glcd_chr@i+1)
	
l1174:	
	movf	(glcd_chr@i+1),w
	xorlw	80h
	movwf	(??_glcd_chr+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_chr+0)+0,w
	skipz
	goto	u1375
	movlw	05h
	subwf	(glcd_chr@i),w
u1375:

	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l1178
u1370:
	goto	l106
	
l1176:	
	goto	l106
	
l104:	
	line	167
	
l1178:	
;glcd.c: 167: glcd_writelcdd(Font[moji-32][i],c+i,page);
	movf	(glcd_chr@c),w
	movlb 0	; select bank0
	addwf	(glcd_chr@i),w
	movwf	(??_glcd_chr+0)+0
	movf	(??_glcd_chr+0)+0,w
	movwf	(glcd_writelcdd@c)
	movf	(glcd_chr@page),w
	movwf	(??_glcd_chr+1)+0
	movf	(??_glcd_chr+1)+0,w
	movwf	(glcd_writelcdd@page)
	movf	(glcd_chr@moji),w
	addlw	low(0FFE0h)
	movwf	(___wmul@multiplier)
	movlw	high(0FFE0h)
	skipnc
	movlw	(high(0FFE0h)+1)&0ffh
	movwf	((___wmul@multiplier))+1
	movlw	05h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlw	low(((_Font)|8000h))
	movlb 0	; select bank0
	movwf	(??_glcd_chr+2)+0
	movlw	high(((_Font)|8000h))
	movwf	(??_glcd_chr+2)+0+1
	movf	(0+(?___wmul)),w
	addwf	0+(??_glcd_chr+2)+0,w
	movwf	(??_glcd_chr+4)+0
	movf	(1+(?___wmul)),w
	addwfc	1+(??_glcd_chr+2)+0,w
	movwf	1+(??_glcd_chr+4)+0
	movf	0+(??_glcd_chr+4)+0,w
	addwf	(glcd_chr@i),w
	movwf	fsr0l
	movf	1+(??_glcd_chr+4)+0,w
	addwfc	(glcd_chr@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_glcd_writelcdd
	line	166
	
l1180:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(glcd_chr@i),f
	movlw	0
	addwfc	(glcd_chr@i+1),f
	
l1182:	
	movf	(glcd_chr@i+1),w
	xorlw	80h
	movwf	(??_glcd_chr+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_chr+0)+0,w
	skipz
	goto	u1385
	movlw	05h
	subwf	(glcd_chr@i),w
u1385:

	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l1178
u1380:
	goto	l106
	
l105:	
	line	169
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_chr
	__end_of_glcd_chr:
	signat	_glcd_chr,12409
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_glcd_chr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 13
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1154:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1156
	line	44
	
l349:	
	line	45
	
l1156:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l350
u1320:
	line	46
	
l1158:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l350:	
	line	47
	movlw	01h
	
u1335:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u1335
	line	48
	
l1160:	
	movlw	01h
	
u1345:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u1345
	line	49
	
l1162:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l1156
u1350:
	goto	l1164
	
l351:	
	line	52
	
l1164:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	goto	l352
	
l1166:	
	line	53
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 6 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;  count           2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  dly             2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_glcd_str
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	6
global __ptext4
__ptext4:	;psect for function _delay_ms
psect	text4
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	6
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 14
; Regs used in _delay_ms: [wreg]
	line	8
	
l1168:	
;glcd.c: 7: int dly ;
;glcd.c: 8: for(dly=1;dly<=count;dly++){
	movlw	01h
	movwf	(delay_ms@dly)
	movlw	0
	movwf	((delay_ms@dly))+1
	goto	l47
	
l48:	
	line	9
	
l1170:	
;glcd.c: 9: _delay((unsigned long)((1)*(8000000/4000.0))) ;
	opt asmopt_off
movlw	3
movwf	((??_delay_ms+0)+0+1),f
	movlw	151
movwf	((??_delay_ms+0)+0),f
u1567:
	decfsz	((??_delay_ms+0)+0),f
	goto	u1567
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u1567
	nop2
opt asmopt_on

	line	8
	movlw	01h
	addwf	(delay_ms@dly),f
	movlw	0
	addwfc	(delay_ms@dly+1),f
	
l47:	
	movf	(delay_ms@dly+1),w
	subwf	(delay_ms@count+1),w
	skipz
	goto	u1365
	movf	(delay_ms@dly),w
	subwf	(delay_ms@count),w
u1365:
	skipnc
	goto	u1361
	goto	u1360
u1361:
	goto	l1170
u1360:
	goto	l50
	
l49:	
	line	11
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_glcd_str
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul8.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___bmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.37\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 14
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1184:	
	clrf	(___bmul@product)
	goto	l1186
	line	42
	
l367:	
	line	43
	
l1186:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l1190
u1390:
	line	44
	
l1188:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1190
	
l368:	
	line	45
	
l1190:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1192:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l1186
u1400:
	goto	l1194
	
l369:	
	line	50
	
l1194:	
	movf	(___bmul@product),w
	goto	l370
	
l1196:	
	line	51
	
l370:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_glcd_init

;; *************** function _glcd_init *****************
;; Defined at:
;;		line 13 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_glcd_writelcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	13
global __ptext6
__ptext6:	;psect for function _glcd_init
psect	text6
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	13
	global	__size_of_glcd_init
	__size_of_glcd_init	equ	__end_of_glcd_init-_glcd_init
	
_glcd_init:	
;incstack = 0
	opt	stack 13
; Regs used in _glcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l1198:	
;glcd.c: 14: RD6 = 0 ;
	movlb 0	; select bank0
	bcf	(126/8),(126)&7	;volatile
	line	15
	
l1200:	
;glcd.c: 15: _delay((unsigned long)((10)*(8000000/4000000.0))) ;
	opt asmopt_off
movlw	6
movwf	(??_glcd_init+0)+0,f
u1577:
decfsz	(??_glcd_init+0)+0,f
	goto	u1577
	nop
opt asmopt_on

	line	16
	
l1202:	
;glcd.c: 16: RD6 = 1 ;
	movlb 0	; select bank0
	bsf	(126/8),(126)&7	;volatile
	line	17
;glcd.c: 17: _delay((unsigned long)((1000)*(8000000/4000000.0))) ;
	opt asmopt_off
movlw	3
movwf	((??_glcd_init+0)+0+1),f
	movlw	151
movwf	((??_glcd_init+0)+0),f
u1587:
	decfsz	((??_glcd_init+0)+0),f
	goto	u1587
	decfsz	((??_glcd_init+0)+0+1),f
	goto	u1587
	nop2
opt asmopt_on

	line	19
	
l1204:	
;glcd.c: 19: glcd_writelcd(0x3F,1) ;
	clrf	(glcd_writelcd@cselect)
	incf	(glcd_writelcd@cselect),f
	movlw	low(03Fh)
	fcall	_glcd_writelcd
	line	20
	
l1206:	
;glcd.c: 20: glcd_writelcd(0x3F,2) ;
	movlw	low(02h)
	movwf	(??_glcd_init+0)+0
	movf	(??_glcd_init+0)+0,w
	movwf	(glcd_writelcd@cselect)
	movlw	low(03Fh)
	fcall	_glcd_writelcd
	line	21
	
l1208:	
;glcd.c: 21: glcd_writelcd(0b11000000,1) ;
	clrf	(glcd_writelcd@cselect)
	incf	(glcd_writelcd@cselect),f
	movlw	low(0C0h)
	fcall	_glcd_writelcd
	line	22
	
l1210:	
;glcd.c: 22: glcd_writelcd(0b11000000,2) ;
	movlw	low(02h)
	movwf	(??_glcd_init+0)+0
	movf	(??_glcd_init+0)+0,w
	movwf	(glcd_writelcd@cselect)
	movlw	low(0C0h)
	fcall	_glcd_writelcd
	line	24
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_init
	__end_of_glcd_init:
	signat	_glcd_init,89
	global	_glcd_clear

;; *************** function _glcd_clear *****************
;; Defined at:
;;		line 119 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               2    2[BANK0 ] int 
;;  l               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_glcd_writelcd
;;		_glcd_writelcdd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	119
global __ptext7
__ptext7:	;psect for function _glcd_clear
psect	text7
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	119
	global	__size_of_glcd_clear
	__size_of_glcd_clear	equ	__end_of_glcd_clear-_glcd_clear
	
_glcd_clear:	
;incstack = 0
	opt	stack 12
; Regs used in _glcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	120
	
l1214:	
;glcd.c: 120: glcd_writelcd(0b11000000,1) ;
	clrf	(glcd_writelcd@cselect)
	incf	(glcd_writelcd@cselect),f
	movlw	low(0C0h)
	fcall	_glcd_writelcd
	line	121
;glcd.c: 121: glcd_writelcd(0b11000000,2) ;
	movlw	low(02h)
	movwf	(??_glcd_clear+0)+0
	movf	(??_glcd_clear+0)+0,w
	movwf	(glcd_writelcd@cselect)
	movlw	low(0C0h)
	fcall	_glcd_writelcd
	line	125
	
l1216:	
;glcd.c: 122: int l , m ;
;glcd.c: 125: for(l=0;l<8;l++){
	movlb 0	; select bank0
	clrf	(glcd_clear@l)
	clrf	(glcd_clear@l+1)
	
l1218:	
	movf	(glcd_clear@l+1),w
	xorlw	80h
	movwf	(??_glcd_clear+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_clear+0)+0,w
	skipz
	goto	u1415
	movlw	08h
	subwf	(glcd_clear@l),w
u1415:

	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l1222
u1410:
	goto	l91
	
l1220:	
	goto	l91
	
l87:	
	line	126
	
l1222:	
;glcd.c: 126: for(m=0;m<128;m++){
	movlb 0	; select bank0
	clrf	(glcd_clear@m)
	clrf	(glcd_clear@m+1)
	
l1224:	
	movf	(glcd_clear@m+1),w
	xorlw	80h
	movwf	(??_glcd_clear+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_clear+0)+0,w
	skipz
	goto	u1425
	movlw	080h
	subwf	(glcd_clear@m),w
u1425:

	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l1228
u1420:
	goto	l1234
	
l1226:	
	goto	l1234
	
l89:	
	line	127
	
l1228:	
;glcd.c: 127: glcd_writelcdd(0,m,l) ;
	movlb 0	; select bank0
	movf	(glcd_clear@m),w
	movwf	(??_glcd_clear+0)+0
	movf	(??_glcd_clear+0)+0,w
	movwf	(glcd_writelcdd@c)
	movf	(glcd_clear@l),w
	movwf	(??_glcd_clear+1)+0
	movf	(??_glcd_clear+1)+0,w
	movwf	(glcd_writelcdd@page)
	movlw	low(0)
	fcall	_glcd_writelcdd
	line	126
	
l1230:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(glcd_clear@m),f
	movlw	0
	addwfc	(glcd_clear@m+1),f
	
l1232:	
	movf	(glcd_clear@m+1),w
	xorlw	80h
	movwf	(??_glcd_clear+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_clear+0)+0,w
	skipz
	goto	u1435
	movlw	080h
	subwf	(glcd_clear@m),w
u1435:

	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l1228
u1430:
	goto	l1234
	
l90:	
	line	125
	
l1234:	
	movlw	01h
	movlb 0	; select bank0
	addwf	(glcd_clear@l),f
	movlw	0
	addwfc	(glcd_clear@l+1),f
	movf	(glcd_clear@l+1),w
	xorlw	80h
	movwf	(??_glcd_clear+0)+0
	movlw	(0)^80h
	subwf	(??_glcd_clear+0)+0,w
	skipz
	goto	u1445
	movlw	08h
	subwf	(glcd_clear@l),w
u1445:

	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1222
u1440:
	goto	l91
	
l88:	
	line	131
	
l91:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_clear
	__end_of_glcd_clear:
	signat	_glcd_clear,89
	global	_glcd_writelcdd

;; *************** function _glcd_writelcdd *****************
;; Defined at:
;;		line 182 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;;  c               1    6[COMMON] unsigned char 
;;  page            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1   10[COMMON] unsigned char 
;;  cl              1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_glcd_en
;;		_glcd_readbusy
;;		_glcd_writelcd
;; This function is called by:
;;		_glcd_clear
;;		_glcd_chr
;;		_glcd_writepage
;;		_glcd_pixel_write
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	182
global __ptext8
__ptext8:	;psect for function _glcd_writelcdd
psect	text8
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	182
	global	__size_of_glcd_writelcdd
	__size_of_glcd_writelcdd	equ	__end_of_glcd_writelcdd-_glcd_writelcdd
	
_glcd_writelcdd:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_writelcdd: [wreg+status,2+status,0+pclath+cstack]
;glcd_writelcdd@cmd stored from wreg
	movwf	(glcd_writelcdd@cmd)
	line	184
	
l1124:	
;glcd.c: 183: char cl ;
;glcd.c: 184: if(c<64){
	movlw	low(040h)
	subwf	(glcd_writelcdd@c),w
	skipnc
	goto	u1061
	goto	u1060
u1061:
	goto	l1130
u1060:
	line	185
	
l1126:	
;glcd.c: 185: glcd_writelcd((0x40 | c),2) ;
	movlw	low(02h)
	movwf	(??_glcd_writelcdd+0)+0
	movf	(??_glcd_writelcdd+0)+0,w
	movwf	(glcd_writelcd@cselect)
	movf	(glcd_writelcdd@c),w
	iorlw	040h
	fcall	_glcd_writelcd
	line	186
	
l1128:	
;glcd.c: 186: cl = 2 ;
	movlw	low(02h)
	movwf	(??_glcd_writelcdd+0)+0
	movf	(??_glcd_writelcdd+0)+0,w
	movwf	(glcd_writelcdd@cl)
	line	187
;glcd.c: 187: } else {
	goto	l1134
	
l115:	
	line	188
	
l1130:	
;glcd.c: 188: glcd_writelcd((0x40 | (c-64)) ,1) ;
	clrf	(glcd_writelcd@cselect)
	incf	(glcd_writelcd@cselect),f
	movf	(glcd_writelcdd@c),w
	addlw	0C0h
	iorlw	040h
	fcall	_glcd_writelcd
	line	189
	
l1132:	
;glcd.c: 189: cl = 1 ;
	clrf	(glcd_writelcdd@cl)
	incf	(glcd_writelcdd@cl),f
	goto	l1134
	line	190
	
l116:	
	line	191
;glcd.c: 190: }
;glcd.c: 191: while(glcd_readbusy() != 0) ;
	goto	l1134
	
l118:	
	goto	l1134
	
l117:	
	
l1134:	
	fcall	_glcd_readbusy
	xorlw	low(0)&0ffh
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l1134
u1070:
	goto	l1136
	
l119:	
	line	192
	
l1136:	
;glcd.c: 192: glcd_writelcd((0xB8 | page),cl) ;
	movf	(glcd_writelcdd@cl),w
	movwf	(??_glcd_writelcdd+0)+0
	movf	(??_glcd_writelcdd+0)+0,w
	movwf	(glcd_writelcd@cselect)
	movf	(glcd_writelcdd@page),w
	iorlw	0B8h
	fcall	_glcd_writelcd
	line	193
	
l1138:	
;glcd.c: 193: if(cl == 1){
		decf	((glcd_writelcdd@cl)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l120
u1080:
	line	194
	
l1140:	
;glcd.c: 194: RD4 = 0 ;
	movlb 0	; select bank0
	bcf	(124/8),(124)&7	;volatile
	line	195
;glcd.c: 195: } else {
	goto	l121
	
l120:	
	line	196
;glcd.c: 196: RD5 = 0 ;
	movlb 0	; select bank0
	bcf	(125/8),(125)&7	;volatile
	line	197
	
l121:	
	line	198
;glcd.c: 197: }
;glcd.c: 198: RD1 = 0 ;
	bcf	(121/8),(121)&7	;volatile
	line	199
;glcd.c: 199: RD0 = 1 ;
	bsf	(120/8),(120)&7	;volatile
	line	201
;glcd.c: 201: RC0 = cmd & 0x01 ;
	btfsc	(glcd_writelcdd@cmd),0
	goto	u1091
	goto	u1090
	
u1091:
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	u1104
u1090:
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
u1104:
	line	202
	
l1142:	
;glcd.c: 202: RC1 = (cmd >> 1) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	01h
u1115:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1115
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1121
	goto	u1120
	
u1121:
	movlb 0	; select bank0
	bsf	(113/8),(113)&7	;volatile
	goto	u1134
u1120:
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
u1134:
	line	203
;glcd.c: 203: RC2 = (cmd >> 2) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	02h
u1145:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1145
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1151
	goto	u1150
	
u1151:
	movlb 0	; select bank0
	bsf	(114/8),(114)&7	;volatile
	goto	u1164
u1150:
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
u1164:
	line	204
;glcd.c: 204: RB3 = (cmd >> 3) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	03h
u1175:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1175
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1181
	goto	u1180
	
u1181:
	movlb 0	; select bank0
	bsf	(107/8),(107)&7	;volatile
	goto	u1194
u1180:
	movlb 0	; select bank0
	bcf	(107/8),(107)&7	;volatile
u1194:
	line	205
;glcd.c: 205: RB4 = (cmd >> 4) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	04h
u1205:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1205
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1211
	goto	u1210
	
u1211:
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	goto	u1224
u1210:
	movlb 0	; select bank0
	bcf	(108/8),(108)&7	;volatile
u1224:
	line	206
;glcd.c: 206: RC5 = (cmd >> 5) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	05h
u1235:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1235
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1241
	goto	u1240
	
u1241:
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	goto	u1254
u1240:
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
u1254:
	line	207
;glcd.c: 207: RC6 = (cmd >> 6) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	06h
u1265:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1265
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1271
	goto	u1270
	
u1271:
	movlb 0	; select bank0
	bsf	(118/8),(118)&7	;volatile
	goto	u1284
u1270:
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
u1284:
	line	208
;glcd.c: 208: RC7 = (cmd >> 7) & 0x01 ;
	movf	(glcd_writelcdd@cmd),w
	movwf	(??_glcd_writelcdd+0)+0
	movlw	07h
u1295:
	lsrf	(??_glcd_writelcdd+0)+0,f
	decfsz	wreg,f
	goto	u1295
	btfsc	0+(??_glcd_writelcdd+0)+0,0
	goto	u1301
	goto	u1300
	
u1301:
	movlb 0	; select bank0
	bsf	(119/8),(119)&7	;volatile
	goto	u1314
u1300:
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
u1314:
	line	210
	
l1144:	
;glcd.c: 210: glcd_en() ;
	fcall	_glcd_en
	line	212
	
l1146:	
;glcd.c: 212: RD4 = 1 ;
	movlb 0	; select bank0
	bsf	(124/8),(124)&7	;volatile
	line	213
	
l1148:	
;glcd.c: 213: RD5 = 1 ;
	bsf	(125/8),(125)&7	;volatile
	line	214
	
l1150:	
;glcd.c: 214: RD1 = 0 ;
	bcf	(121/8),(121)&7	;volatile
	line	215
	
l1152:	
;glcd.c: 215: RD0 = 0 ;
	bcf	(120/8),(120)&7	;volatile
	line	217
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_writelcdd
	__end_of_glcd_writelcdd:
	signat	_glcd_writelcdd,12409
	global	_glcd_writelcd

;; *************** function _glcd_writelcd *****************
;; Defined at:
;;		line 26 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;;  cselect         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_glcd_en
;;		_glcd_readbusy
;; This function is called by:
;;		_glcd_init
;;		_glcd_clear
;;		_glcd_writelcdd
;;		_glcd_czero
;;		_glcd_pageset
;;		_glcd_setc
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	26
global __ptext9
__ptext9:	;psect for function _glcd_writelcd
psect	text9
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	26
	global	__size_of_glcd_writelcd
	__size_of_glcd_writelcd	equ	__end_of_glcd_writelcd-_glcd_writelcd
	
_glcd_writelcd:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_writelcd: [wreg+status,2+status,0+pclath+cstack]
;glcd_writelcd@cmd stored from wreg
	movwf	(glcd_writelcd@cmd)
	line	28
	
l1104:	
;glcd.c: 28: while(glcd_readbusy() != 0) ;
	goto	l1106
	
l57:	
	goto	l1106
	
l56:	
	
l1106:	
	fcall	_glcd_readbusy
	xorlw	low(0)&0ffh
	skipz
	goto	u811
	goto	u810
u811:
	goto	l1106
u810:
	goto	l1108
	
l58:	
	line	29
	
l1108:	
;glcd.c: 29: if(cselect == 1){
		decf	((glcd_writelcd@cselect)),w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l59
u820:
	line	30
	
l1110:	
;glcd.c: 30: RD4 = 0 ;
	movlb 0	; select bank0
	bcf	(124/8),(124)&7	;volatile
	line	31
;glcd.c: 31: RD5 = 1 ;
	bsf	(125/8),(125)&7	;volatile
	line	32
;glcd.c: 32: } else {
	goto	l60
	
l59:	
	line	33
;glcd.c: 33: RD5 = 0 ;
	movlb 0	; select bank0
	bcf	(125/8),(125)&7	;volatile
	line	34
;glcd.c: 34: RD4 = 1;
	bsf	(124/8),(124)&7	;volatile
	line	35
	
l60:	
	line	37
;glcd.c: 35: }
;glcd.c: 37: RD1 = 0 ;
	bcf	(121/8),(121)&7	;volatile
	line	38
;glcd.c: 38: RD0 = 0 ;
	bcf	(120/8),(120)&7	;volatile
	line	40
;glcd.c: 40: RC0 = cmd & 0x01 ;
	btfsc	(glcd_writelcd@cmd),0
	goto	u831
	goto	u830
	
u831:
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	u844
u830:
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
u844:
	line	41
	
l1112:	
;glcd.c: 41: RC1 = (cmd >> 1) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	01h
u855:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u855
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u861
	goto	u860
	
u861:
	movlb 0	; select bank0
	bsf	(113/8),(113)&7	;volatile
	goto	u874
u860:
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
u874:
	line	42
;glcd.c: 42: RC2 = (cmd >> 2) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	02h
u885:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u885
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u891
	goto	u890
	
u891:
	movlb 0	; select bank0
	bsf	(114/8),(114)&7	;volatile
	goto	u904
u890:
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
u904:
	line	43
;glcd.c: 43: RB3 = (cmd >> 3) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	03h
u915:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u915
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u921
	goto	u920
	
u921:
	movlb 0	; select bank0
	bsf	(107/8),(107)&7	;volatile
	goto	u934
u920:
	movlb 0	; select bank0
	bcf	(107/8),(107)&7	;volatile
u934:
	line	44
;glcd.c: 44: RB4 = (cmd >> 4) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	04h
u945:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u945
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u951
	goto	u950
	
u951:
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	goto	u964
u950:
	movlb 0	; select bank0
	bcf	(108/8),(108)&7	;volatile
u964:
	line	45
;glcd.c: 45: RC5 = (cmd >> 5) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	05h
u975:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u975
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u981
	goto	u980
	
u981:
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	goto	u994
u980:
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
u994:
	line	46
;glcd.c: 46: RC6 = (cmd >> 6) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	06h
u1005:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u1005
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u1011
	goto	u1010
	
u1011:
	movlb 0	; select bank0
	bsf	(118/8),(118)&7	;volatile
	goto	u1024
u1010:
	movlb 0	; select bank0
	bcf	(118/8),(118)&7	;volatile
u1024:
	line	47
;glcd.c: 47: RC7 = (cmd >> 7) & 0x01 ;
	movf	(glcd_writelcd@cmd),w
	movwf	(??_glcd_writelcd+0)+0
	movlw	07h
u1035:
	lsrf	(??_glcd_writelcd+0)+0,f
	decfsz	wreg,f
	goto	u1035
	btfsc	0+(??_glcd_writelcd+0)+0,0
	goto	u1041
	goto	u1040
	
u1041:
	movlb 0	; select bank0
	bsf	(119/8),(119)&7	;volatile
	goto	u1054
u1040:
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
u1054:
	line	49
	
l1114:	
;glcd.c: 49: glcd_en() ;
	fcall	_glcd_en
	line	51
	
l1116:	
;glcd.c: 51: RD4 = 1 ;
	movlb 0	; select bank0
	bsf	(124/8),(124)&7	;volatile
	line	52
	
l1118:	
;glcd.c: 52: RD5 = 1 ;
	bsf	(125/8),(125)&7	;volatile
	line	53
	
l1120:	
;glcd.c: 53: RD1 = 0 ;
	bcf	(121/8),(121)&7	;volatile
	line	54
	
l1122:	
;glcd.c: 54: RD0 = 0 ;
	bcf	(120/8),(120)&7	;volatile
	line	55
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_writelcd
	__end_of_glcd_writelcd:
	signat	_glcd_writelcd,8313
	global	_glcd_readbusy

;; *************** function _glcd_readbusy *****************
;; Defined at:
;;		line 59 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_glcd_writelcd
;;		_glcd_writelcdd
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	59
global __ptext10
__ptext10:	;psect for function _glcd_readbusy
psect	text10
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	59
	global	__size_of_glcd_readbusy
	__size_of_glcd_readbusy	equ	__end_of_glcd_readbusy-_glcd_readbusy
	
_glcd_readbusy:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_readbusy: [wreg+status,2]
	line	60
	
l1086:	
;glcd.c: 60: RC7 = 0 ;
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
	line	62
;glcd.c: 61: char i ;
;glcd.c: 62: TRISCbits.TRISC7 = 1 ;
	movlb 1	; select bank1
	bsf	(142)^080h,7	;volatile
	line	63
;glcd.c: 63: RD4 = 0 ;
	movlb 0	; select bank0
	bcf	(124/8),(124)&7	;volatile
	line	64
;glcd.c: 64: RD5 = 0 ;
	bcf	(125/8),(125)&7	;volatile
	line	65
;glcd.c: 65: RD1 = 1 ;
	bsf	(121/8),(121)&7	;volatile
	line	66
;glcd.c: 66: RD0 = 1 ;
	bsf	(120/8),(120)&7	;volatile
	line	67
;glcd.c: 67: RD4 = 0 ;
	bcf	(124/8),(124)&7	;volatile
	line	68
;glcd.c: 68: _delay((unsigned long)((1)*(8000000/4000000.0))) ;
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	69
;glcd.c: 69: RD2 = 1 ;
	movlb 0	; select bank0
	bsf	(122/8),(122)&7	;volatile
	line	70
;glcd.c: 70: _delay((unsigned long)((1)*(8000000/4000000.0))) ;
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	71
;glcd.c: 71: RD2 = 0 ;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7	;volatile
	line	72
;glcd.c: 72: _delay((unsigned long)((3)*(8000000/4000000.0))) ;
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	73
	
l1088:	
;glcd.c: 73: i = RC7 ;
	movlw	0
	movlb 0	; select bank0
	btfsc	(119/8),(119)&7	;volatile
	movlw	1
	movwf	(glcd_readbusy@i)
	line	75
	
l1090:	
;glcd.c: 75: RD4 = 1 ;
	bsf	(124/8),(124)&7	;volatile
	line	76
	
l1092:	
;glcd.c: 76: RD5 = 1 ;
	bsf	(125/8),(125)&7	;volatile
	line	77
	
l1094:	
;glcd.c: 77: RD1 = 0 ;
	bcf	(121/8),(121)&7	;volatile
	line	78
	
l1096:	
;glcd.c: 78: TRISCbits.TRISC7= 0 ;
	movlb 1	; select bank1
	bcf	(142)^080h,7	;volatile
	line	79
	
l1098:	
;glcd.c: 79: return i ;
	movf	(glcd_readbusy@i),w
	goto	l64
	
l1100:	
	line	80
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_readbusy
	__end_of_glcd_readbusy:
	signat	_glcd_readbusy,89
	global	_glcd_en

;; *************** function _glcd_en *****************
;; Defined at:
;;		line 113 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_glcd_writelcd
;;		_glcd_writelcdd
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	113
global __ptext11
__ptext11:	;psect for function _glcd_en
psect	text11
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1939\glcd\glcd.c"
	line	113
	global	__size_of_glcd_en
	__size_of_glcd_en	equ	__end_of_glcd_en-_glcd_en
	
_glcd_en:	
;incstack = 0
	opt	stack 11
; Regs used in _glcd_en: []
	line	114
	
l1102:	
;glcd.c: 114: RD2 = 1 ;
	movlb 0	; select bank0
	bsf	(122/8),(122)&7	;volatile
	line	115
;glcd.c: 115: _delay((unsigned long)((3)*(8000000/4000000.0))) ;
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	116
;glcd.c: 116: RD2 = 0 ;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7	;volatile
	line	117
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_glcd_en
	__end_of_glcd_en:
	signat	_glcd_en,89
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
