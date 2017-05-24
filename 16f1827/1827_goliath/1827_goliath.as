opt subtitle "Microchip Technology Omniscient Code Generator v1.37 (Free mode) build 201603110536"

opt pagewidth 120

	opt lm

	processor	16F1827
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
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.37\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_Lturn
	FNCALL	_main,_Rturn
	FNCALL	_main,_back
	FNCALL	_main,_forward
	FNCALL	_main,_get_usart
	FNCALL	_main,_init
	FNCALL	_get_usart,_getch
	FNCALL	_get_usart,_inRxData
	FNCALL	_forward,_SetPWM1
	FNCALL	_back,_SetPWM2
	FNCALL	_Rturn,_SetPWM1
	FNCALL	_Rturn,_SetPWM2
	FNCALL	_Lturn,_SetPWM1
	FNCALL	_Lturn,_SetPWM2
	FNROOT	_main
	global	_addata
	global	_data
	global	_INTCON
_INTCON	set	0xB
	global	_PR2
_PR2	set	0x1B
	global	_T2CON
_T2CON	set	0x1C
	global	_GIE
_GIE	set	0x5F
	global	_RCIF
_RCIF	set	0x8D
	global	_TXIF
_TXIF	set	0x8C
	global	_ADCON0
_ADCON0	set	0x9D
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
	global	_ADGO
_ADGO	set	0x4E9
	global	_ADON
_ADON	set	0x4E8
	global	_TRISB1
_TRISB1	set	0x469
	global	_TRISB2
_TRISB2	set	0x46A
	global	_C1ON
_C1ON	set	0x88F
	global	_LATA0
_LATA0	set	0x860
	global	_LATA1
_LATA1	set	0x861
	global	_LATA6
_LATA6	set	0x866
	global	_LATA7
_LATA7	set	0x867
	global	_RXDTSEL
_RXDTSEL	set	0x8EF
	global	_TXCKSEL
_TXCKSEL	set	0x8F0
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_RCREG
_RCREG	set	0x199
	global	_RCSTA
_RCSTA	set	0x19D
	global	_SPBRG
_SPBRG	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_TXSTA
_TXSTA	set	0x19E
	global	_CREN
_CREN	set	0xCEC
	global	_OERR
_OERR	set	0xCE9
	global	_CCP3CON
_CCP3CON	set	0x313
	global	_CCP4CON
_CCP4CON	set	0x31A
	global	_CCPR3L
_CCPR3L	set	0x311
	global	_CCPR4L
_CCPR4L	set	0x318
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_BORV$HI
__CFG_BORV$HI equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"1827_goliath.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_addata:
       ds      2

_contORE:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_data:
       ds      6

	file	"1827_goliath.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
?_init:	; 1 bytes @ 0x0
??_init:	; 1 bytes @ 0x0
?_get_usart:	; 1 bytes @ 0x0
?_forward:	; 1 bytes @ 0x0
?_back:	; 1 bytes @ 0x0
?_Rturn:	; 1 bytes @ 0x0
?_Lturn:	; 1 bytes @ 0x0
?_SetPWM1:	; 1 bytes @ 0x0
?_SetPWM2:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_getch:	; 1 bytes @ 0x0
??_getch:	; 1 bytes @ 0x0
?_inRxData:	; 1 bytes @ 0x0
??_inRxData:	; 1 bytes @ 0x0
	global	inRxData@rxData
inRxData@rxData:	; 1 bytes @ 0x0
	global	getch@cnt
getch@cnt:	; 2 bytes @ 0x0
	global	SetPWM1@dutycycle
SetPWM1@dutycycle:	; 2 bytes @ 0x0
	global	SetPWM2@dutycycle
SetPWM2@dutycycle:	; 2 bytes @ 0x0
	ds	1
	global	inRxData@cnt1
inRxData@cnt1:	; 2 bytes @ 0x1
	ds	1
??_SetPWM1:	; 1 bytes @ 0x2
??_SetPWM2:	; 1 bytes @ 0x2
	ds	1
	global	inRxData@cnt2
inRxData@cnt2:	; 2 bytes @ 0x3
	ds	1
??_forward:	; 1 bytes @ 0x4
??_back:	; 1 bytes @ 0x4
??_Rturn:	; 1 bytes @ 0x4
??_Lturn:	; 1 bytes @ 0x4
	ds	1
??_get_usart:	; 1 bytes @ 0x5
	ds	1
	global	get_usart@i
get_usart@i:	; 2 bytes @ 0x6
	ds	2
??_main:	; 1 bytes @ 0x8
	global	main@cntError
main@cntError:	; 2 bytes @ 0x8
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      13
;!    BANK0            80      0       6
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_get_usart
;!    _get_usart->_inRxData
;!    _forward->_SetPWM1
;!    _back->_SetPWM2
;!    _Rturn->_SetPWM1
;!    _Rturn->_SetPWM2
;!    _Lturn->_SetPWM1
;!    _Lturn->_SetPWM2
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    2363
;!                                              8 COMMON     2     2      0
;!                              _Lturn
;!                              _Rturn
;!                               _back
;!                            _forward
;!                          _get_usart
;!                               _init
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_usart                                            3     3      0     165
;!                                              5 COMMON     3     3      0
;!                              _getch
;!                           _inRxData
;! ---------------------------------------------------------------------------------
;! (2) _inRxData                                             5     5      0      72
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _getch                                                2     2      0      24
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _forward                                              0     0      0     362
;!                            _SetPWM1
;! ---------------------------------------------------------------------------------
;! (1) _back                                                 0     0      0     362
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (1) _Rturn                                                0     0      0     724
;!                            _SetPWM1
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (1) _Lturn                                                0     0      0     724
;!                            _SetPWM1
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM2                                              4     2      2     362
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM1                                              4     2      2     362
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Lturn
;!     _SetPWM1
;!     _SetPWM2
;!   _Rturn
;!     _SetPWM1
;!     _SetPWM2
;!   _back
;!     _SetPWM2
;!   _forward
;!     _SetPWM1
;!   _get_usart
;!     _getch
;!     _inRxData
;!   _init
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             170      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      A       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      13       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      0       6       6        7.5%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            30      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               30      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!DATA                 0      0      13      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 51 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cntError        2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lturn
;;		_Rturn
;;		_back
;;		_forward
;;		_get_usart
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	51
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	51
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 14
; Regs used in _main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	53
	
l1007:	
;main.c: 53: init();
	fcall	_init
	line	54
	
l1009:	
;main.c: 54: unsigned int cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1011
	line	55
;main.c: 55: while(1)
	
l75:	
	line	57
	
l1011:	
;main.c: 56: {
;main.c: 57: if(get_usart()==0x01){
	fcall	_get_usart
	xorlw	01h&0ffh
	skipz
	goto	u611
	goto	u610
u611:
	goto	l1017
u610:
	line	59
	
l1013:	
;main.c: 59: forward();
	fcall	_forward
	line	60
;main.c: 60: back();
	fcall	_back
	line	61
;main.c: 61: Rturn();
	fcall	_Rturn
	line	62
;main.c: 62: Lturn();
	fcall	_Lturn
	line	64
	
l1015:	
;main.c: 64: cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	line	66
;main.c: 66: }
	goto	l1011
	line	67
	
l76:	
	line	69
	
l1017:	
;main.c: 67: else{
;main.c: 69: cntError++;
	movlw	01h
	addwf	(main@cntError),f
	movlw	0
	addwfc	(main@cntError+1),f
	line	70
;main.c: 70: if(cntError>=10)
	movlw	0
	subwf	(main@cntError+1),w
	movlw	0Ah
	skipnz
	subwf	(main@cntError),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l1011
u620:
	line	72
	
l1019:	
;main.c: 71: {
;main.c: 72: cntError=0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1011
	line	73
	
l78:	
	goto	l1011
	line	74
	
l77:	
	goto	l1011
	line	75
	
l79:	
	line	55
	goto	l1011
	
l80:	
	line	76
	
l81:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 116 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	116
global __ptext1
__ptext1:	;psect for function _init
psect	text1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	116
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 15
; Regs used in _init: [wreg+status,2]
	line	118
	
l703:	
;main.c: 118: INTCON=0;
	clrf	(11)	;volatile
	line	119
	
l705:	
;main.c: 119: TRISB1 = 1; TRISB2 = 1; SPBRG = ((int)(32000000L/(16UL * 115200) -1)); RCSTA = (0|0x90); TXSTA = (0x4|0|0x20);
	movlb 1	; select bank1
	bsf	(1129/8)^080h,(1129)&7	;volatile
	
l707:	
	bsf	(1130/8)^080h,(1130)&7	;volatile
	
l709:	
	movlw	low(010h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	
l711:	
	movlw	low(090h)
	movwf	(413)^0180h	;volatile
	
l713:	
	movlw	low(024h)
	movwf	(414)^0180h	;volatile
	line	120
	
l715:	
;main.c: 120: OSCCON = 0b01110000;
	movlw	low(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	121
	
l717:	
;main.c: 121: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	122
	
l719:	
;main.c: 122: C1ON = 0;
	movlb 2	; select bank2
	bcf	(2191/8)^0100h,(2191)&7	;volatile
	line	123
;main.c: 123: ANSELA = 0b00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	124
;main.c: 124: TRISA = 0b00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	125
;main.c: 125: ANSELB = 0b00000000;
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	126
	
l721:	
;main.c: 126: TRISB = 0b00000010;
	movlw	low(02h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	127
	
l723:	
;main.c: 127: TXCKSEL = 1;
	movlb 2	; select bank2
	bsf	(2288/8)^0100h,(2288)&7	;volatile
	line	128
	
l725:	
;main.c: 128: RXDTSEL = 0;
	bcf	(2287/8)^0100h,(2287)&7	;volatile
	line	130
	
l727:	
;main.c: 130: T2CON |= 0b00000001;
	movlb 0	; select bank0
	bsf	(28)+(0/8),(0)&7	;volatile
	line	131
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,89
	global	_get_usart

;; *************** function _get_usart *****************
;; Defined at:
;;		line 201 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_getch
;;		_inRxData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	201
global __ptext2
__ptext2:	;psect for function _get_usart
psect	text2
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	201
	global	__size_of_get_usart
	__size_of_get_usart	equ	__end_of_get_usart-_get_usart
	
_get_usart:	
;incstack = 0
	opt	stack 14
; Regs used in _get_usart: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	222
	
l917:	
;main.c: 222: unsigned int i=0;
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	line	224
	
l919:	
;main.c: 224: if(inRxData(0x80)==0x01)
	movlw	low(080h)
	fcall	_inRxData
	xorlw	01h&0ffh
	skipz
	goto	u431
	goto	u430
u431:
	goto	l939
u430:
	line	227
	
l921:	
;main.c: 225: {
;main.c: 227: for(i=0;i<6;i++)
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	
l923:	
	movlw	0
	subwf	(get_usart@i+1),w
	movlw	06h
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u441
	goto	u440
u441:
	goto	l927
u440:
	goto	l933
	
l925:	
	goto	l933
	line	228
	
l141:	
	line	229
	
l927:	
;main.c: 228: {
;main.c: 229: data[i] = getch();
	fcall	_getch
	movwf	(??_get_usart+0)+0
	movf	(get_usart@i),w
	addlw	low(_data|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_get_usart+0)+0,w
	movwf	indf1
	line	227
	
l929:	
	movlw	01h
	addwf	(get_usart@i),f
	movlw	0
	addwfc	(get_usart@i+1),f
	
l931:	
	movlw	0
	subwf	(get_usart@i+1),w
	movlw	06h
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l927
u450:
	goto	l933
	
l142:	
	line	231
	
l933:	
;main.c: 230: }
;main.c: 231: if(inRxData((data[0]+data[1]+data[2]+data[3]+data[4]+data[5])&0x7f)==0x01)
	movlb 0	; select bank0
	movf	0+(_data)+01h,w
	addwf	0+(_data)+02h,w
	addwf	0+(_data)+03h,w
	addwf	0+(_data)+04h,w
	addwf	0+(_data)+05h,w
	addwf	(_data),w
	andlw	07Fh
	fcall	_inRxData
	xorlw	01h&0ffh
	skipz
	goto	u461
	goto	u460
u461:
	goto	l939
u460:
	line	233
	
l935:	
;main.c: 232: {
;main.c: 233: return 0x01;
	movlw	low(01h)
	goto	l144
	
l937:	
	goto	l144
	line	234
	
l143:	
	line	235
;main.c: 234: }
;main.c: 235: }
	goto	l939
	line	237
	
l140:	
	goto	l939
	line	240
;main.c: 237: else
;main.c: 238: {
	
l145:	
	line	241
	
l939:	
;main.c: 240: }
;main.c: 241: return 0x00;
	movlw	low(0)
	goto	l144
	
l941:	
	line	242
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_get_usart
	__end_of_get_usart:
	signat	_get_usart,89
	global	_inRxData

;; *************** function _inRxData *****************
;; Defined at:
;;		line 173 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
;; Parameters:    Size  Location     Type
;;  rxData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rxData          1    0[COMMON] unsigned char 
;;  cnt2            2    3[COMMON] unsigned int 
;;  cnt1            2    1[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_usart
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	173
global __ptext3
__ptext3:	;psect for function _inRxData
psect	text3
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	173
	global	__size_of_inRxData
	__size_of_inRxData	equ	__end_of_inRxData-_inRxData
	
_inRxData:	
;incstack = 0
	opt	stack 14
; Regs used in _inRxData: [wreg+status,2]
;inRxData@rxData stored from wreg
	movwf	(inRxData@rxData)
	line	175
	
l893:	
;main.c: 175: unsigned int cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	176
;main.c: 176: unsigned int cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	goto	l895
	line	177
;main.c: 177: while(1)
	
l127:	
	line	179
	
l895:	
;main.c: 178: {
;main.c: 179: if(OERR )
	movlb 3	; select bank3
	btfss	(3305/8)^0180h,(3305)&7	;volatile
	goto	u381
	goto	u380
u381:
	goto	l128
u380:
	line	180
	
l897:	
;main.c: 180: CREN=0;
	bcf	(3308/8)^0180h,(3308)&7	;volatile
	
l128:	
	line	181
;main.c: 181: CREN=1;
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	182
;main.c: 182: while(!RCIF)
	goto	l129
	
l130:	
	line	184
	
l899:	
;main.c: 183: {
;main.c: 184: cnt1++;
	movlw	01h
	addwf	(inRxData@cnt1),f
	movlw	0
	addwfc	(inRxData@cnt1+1),f
	line	185
;main.c: 185: if(cnt1>=100)
	movlw	0
	subwf	(inRxData@cnt1+1),w
	movlw	064h
	skipnz
	subwf	(inRxData@cnt1),w
	skipc
	goto	u391
	goto	u390
u391:
	goto	l129
u390:
	line	187
	
l901:	
;main.c: 186: {
;main.c: 187: cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	188
;main.c: 188: break;
	goto	l903
	line	189
	
l131:	
	line	190
	
l129:	
	line	182
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u401
	goto	u400
u401:
	goto	l899
u400:
	goto	l903
	
l132:	
	line	191
	
l903:	
;main.c: 189: }
;main.c: 190: }
;main.c: 191: if(RCREG==rxData)
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	xorwf	(inRxData@rxData),w
	skipz
	goto	u411
	goto	u410
u411:
	goto	l909
u410:
	line	192
	
l905:	
;main.c: 192: return 0x01;
	movlw	low(01h)
	goto	l134
	
l907:	
	goto	l134
	
l133:	
	line	193
	
l909:	
;main.c: 193: cnt2++;
	movlw	01h
	addwf	(inRxData@cnt2),f
	movlw	0
	addwfc	(inRxData@cnt2+1),f
	line	194
;main.c: 194: if(cnt2>=10)
	movlw	0
	subwf	(inRxData@cnt2+1),w
	movlw	0Ah
	skipnz
	subwf	(inRxData@cnt2),w
	skipc
	goto	u421
	goto	u420
u421:
	goto	l895
u420:
	line	196
	
l911:	
;main.c: 195: {
;main.c: 196: cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	line	197
	
l913:	
;main.c: 197: return 0x00;
	movlw	low(0)
	goto	l134
	
l915:	
	goto	l134
	line	198
	
l135:	
	goto	l895
	line	199
	
l136:	
	line	177
	goto	l895
	
l137:	
	line	200
	
l134:	
	return
	opt stack 0
GLOBAL	__end_of_inRxData
	__end_of_inRxData:
	signat	_inRxData,4217
	global	_getch

;; *************** function _getch *****************
;; Defined at:
;;		line 153 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_usart
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	153
global __ptext4
__ptext4:	;psect for function _getch
psect	text4
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	153
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
;incstack = 0
	opt	stack 14
; Regs used in _getch: [wreg+status,2]
	line	154
	
l883:	
;main.c: 154: unsigned int cnt=0;
	clrf	(getch@cnt)
	clrf	(getch@cnt+1)
	line	155
;main.c: 155: while(!RCIF)
	goto	l117
	
l118:	
	line	157
	
l885:	
;main.c: 156: {
;main.c: 157: cnt++;
	movlw	01h
	addwf	(getch@cnt),f
	movlw	0
	addwfc	(getch@cnt+1),f
	line	158
;main.c: 158: if(cnt>=1000)
	movlw	03h
	subwf	(getch@cnt+1),w
	movlw	0E8h
	skipnz
	subwf	(getch@cnt),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l117
u360:
	goto	l889
	line	160
	
l887:	
;main.c: 159: {
;main.c: 160: break;
	goto	l889
	line	161
	
l119:	
	line	162
	
l117:	
	line	155
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u371
	goto	u370
u371:
	goto	l885
u370:
	goto	l889
	
l120:	
	line	163
	
l889:	
;main.c: 161: }
;main.c: 162: }
;main.c: 163: return RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	goto	l121
	
l891:	
	line	164
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
	signat	_getch,89
	global	_forward

;; *************** function _forward *****************
;; Defined at:
;;		line 78 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	78
global __ptext5
__ptext5:	;psect for function _forward
psect	text5
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	78
	global	__size_of_forward
	__size_of_forward	equ	__end_of_forward-_forward
	
_forward:	
;incstack = 0
	opt	stack 14
; Regs used in _forward: [wreg+status,2+status,0+pclath+cstack]
	line	79
	
l943:	
;main.c: 79: if(data[4] < 0x64 && data[4] > 0x24 && data[5] == 0x00){
	movlw	low(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+04h,w
	skipnc
	goto	u471
	goto	u470
u471:
	goto	l953
u470:
	
l945:	
	movlw	low(025h)
	subwf	0+(_data)+04h,w
	skipc
	goto	u481
	goto	u480
u481:
	goto	l953
u480:
	
l947:	
	movf	(0+(_data)+05h),w
	btfss	status,2
	goto	u491
	goto	u490
u491:
	goto	l953
u490:
	line	80
	
l949:	
;main.c: 80: LATA1=0; LATA0=1; SetPWM1(512);
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7	;volatile
	bsf	(2144/8)^0100h,(2144)&7	;volatile
	
l951:	
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movlw	02h
	movwf	((SetPWM1@dutycycle))+1
	fcall	_SetPWM1
	line	81
;main.c: 81: }
	goto	l88
	line	82
	
l84:	
	
l953:	
;main.c: 82: else if(data[4] <0x64 && data[4] > 0x24 && data[5] == 0x7f){
	movlw	low(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+04h,w
	skipnc
	goto	u501
	goto	u500
u501:
	goto	l86
u500:
	
l955:	
	movlw	low(025h)
	subwf	0+(_data)+04h,w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l86
u510:
	
l957:	
		movlw	127
	xorwf	(0+(_data)+05h),w
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l86
u520:
	line	83
	
l959:	
;main.c: 83: LATA1=1; LATA0=0; SetPWM1(512);
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7	;volatile
	bcf	(2144/8)^0100h,(2144)&7	;volatile
	
l961:	
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movlw	02h
	movwf	((SetPWM1@dutycycle))+1
	fcall	_SetPWM1
	line	84
;main.c: 84: }
	goto	l88
	line	85
	
l86:	
	line	86
;main.c: 85: else{
;main.c: 86: LATA1=0; LATA0=0; SetPWM1(0);
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7	;volatile
	bcf	(2144/8)^0100h,(2144)&7	;volatile
	
l963:	
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movwf	(SetPWM1@dutycycle+1)
	fcall	_SetPWM1
	goto	l88
	line	87
	
l87:	
	goto	l88
	
l85:	
	line	88
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_forward
	__end_of_forward:
	signat	_forward,89
	global	_back

;; *************** function _back *****************
;; Defined at:
;;		line 90 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	90
global __ptext6
__ptext6:	;psect for function _back
psect	text6
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	90
	global	__size_of_back
	__size_of_back	equ	__end_of_back-_back
	
_back:	
;incstack = 0
	opt	stack 14
; Regs used in _back: [wreg+status,2+status,0+pclath+cstack]
	line	91
	
l965:	
;main.c: 91: if(data[2] < 0x64 && data[2] > 0x24 && data[3] == 0x00){
	movlw	low(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+02h,w
	skipnc
	goto	u531
	goto	u530
u531:
	goto	l975
u530:
	
l967:	
	movlw	low(025h)
	subwf	0+(_data)+02h,w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l975
u540:
	
l969:	
	movf	(0+(_data)+03h),w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l975
u550:
	line	92
	
l971:	
;main.c: 92: LATA7=0; LATA6=1; SetPWM2(512);
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	bsf	(2150/8)^0100h,(2150)&7	;volatile
	
l973:	
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movlw	02h
	movwf	((SetPWM2@dutycycle))+1
	fcall	_SetPWM2
	line	93
;main.c: 93: }
	goto	l95
	line	94
	
l91:	
	
l975:	
;main.c: 94: else if(data[2] <0x64 && data[2] > 0x24 && data[3] == 0x7f){
	movlw	low(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+02h,w
	skipnc
	goto	u561
	goto	u560
u561:
	goto	l93
u560:
	
l977:	
	movlw	low(025h)
	subwf	0+(_data)+02h,w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l93
u570:
	
l979:	
		movlw	127
	xorwf	(0+(_data)+03h),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l93
u580:
	line	95
	
l981:	
;main.c: 95: LATA7=1; LATA6=0; SetPWM2(512);
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	bcf	(2150/8)^0100h,(2150)&7	;volatile
	
l983:	
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movlw	02h
	movwf	((SetPWM2@dutycycle))+1
	fcall	_SetPWM2
	line	96
;main.c: 96: }
	goto	l95
	line	97
	
l93:	
	line	98
;main.c: 97: else{
;main.c: 98: LATA7=0; LATA6=0; SetPWM2(0);
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	bcf	(2150/8)^0100h,(2150)&7	;volatile
	
l985:	
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movwf	(SetPWM2@dutycycle+1)
	fcall	_SetPWM2
	goto	l95
	line	99
	
l94:	
	goto	l95
	
l92:	
	line	100
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_back
	__end_of_back:
	signat	_back,89
	global	_Rturn

;; *************** function _Rturn *****************
;; Defined at:
;;		line 102 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM1
;;		_SetPWM2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	102
global __ptext7
__ptext7:	;psect for function _Rturn
psect	text7
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	102
	global	__size_of_Rturn
	__size_of_Rturn	equ	__end_of_Rturn-_Rturn
	
_Rturn:	
;incstack = 0
	opt	stack 14
; Regs used in _Rturn: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l987:	
;main.c: 103: if((data[1]&0x40)!=0){
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(6)&7
	goto	u591
	goto	u590
u591:
	goto	l99
u590:
	line	104
	
l989:	
;main.c: 104: LATA1=1; LATA0=0; SetPWM1(512);
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7	;volatile
	bcf	(2144/8)^0100h,(2144)&7	;volatile
	
l991:	
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movlw	02h
	movwf	((SetPWM1@dutycycle))+1
	fcall	_SetPWM1
	line	105
	
l993:	
;main.c: 105: LATA7=0; LATA6=1; SetPWM2(512);
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	
l995:	
	bsf	(2150/8)^0100h,(2150)&7	;volatile
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movlw	02h
	movwf	((SetPWM2@dutycycle))+1
	fcall	_SetPWM2
	goto	l99
	line	106
	
l98:	
	line	107
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_Rturn
	__end_of_Rturn:
	signat	_Rturn,89
	global	_Lturn

;; *************** function _Lturn *****************
;; Defined at:
;;		line 109 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM1
;;		_SetPWM2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	109
global __ptext8
__ptext8:	;psect for function _Lturn
psect	text8
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\main.c"
	line	109
	global	__size_of_Lturn
	__size_of_Lturn	equ	__end_of_Lturn-_Lturn
	
_Lturn:	
;incstack = 0
	opt	stack 14
; Regs used in _Lturn: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l997:	
;main.c: 110: if((data[1]&0x20)!=0){
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(5)&7
	goto	u601
	goto	u600
u601:
	goto	l103
u600:
	line	111
	
l999:	
;main.c: 111: LATA1=0; LATA0=1; SetPWM1(512);
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7	;volatile
	bsf	(2144/8)^0100h,(2144)&7	;volatile
	
l1001:	
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movlw	02h
	movwf	((SetPWM1@dutycycle))+1
	fcall	_SetPWM1
	line	112
	
l1003:	
;main.c: 112: LATA7=1; LATA6=0; SetPWM2(512);
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	
l1005:	
	bcf	(2150/8)^0100h,(2150)&7	;volatile
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movlw	02h
	movwf	((SetPWM2@dutycycle))+1
	fcall	_SetPWM2
	goto	l103
	line	113
	
l102:	
	line	114
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_Lturn
	__end_of_Lturn:
	signat	_Lturn,89
	global	_SetPWM2

;; *************** function _SetPWM2 *****************
;; Defined at:
;;		line 50 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\pwm.c"
;; Parameters:    Size  Location     Type
;;  dutycycle       2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_back
;;		_Rturn
;;		_Lturn
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\pwm.c"
	line	50
global __ptext9
__ptext9:	;psect for function _SetPWM2
psect	text9
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\pwm.c"
	line	50
	global	__size_of_SetPWM2
	__size_of_SetPWM2	equ	__end_of_SetPWM2-_SetPWM2
	
_SetPWM2:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM2: [wreg+status,2+status,0]
	line	53
	
l881:	
;pwm.c: 53: CCPR4L = dutycycle >> 2;
	movf	(SetPWM2@dutycycle+1),w
	movwf	(??_SetPWM2+0)+0+1
	movf	(SetPWM2@dutycycle),w
	movwf	(??_SetPWM2+0)+0
	lsrf	(??_SetPWM2+0)+1,f
	rrf	(??_SetPWM2+0)+0,f
	lsrf	(??_SetPWM2+0)+1,f
	rrf	(??_SetPWM2+0)+0,f
	movf	0+(??_SetPWM2+0)+0,w
	movlb 6	; select bank6
	movwf	(792)^0300h	;volatile
	line	55
;pwm.c: 55: CCP4CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM2@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM2+0)+0
	movlw	(04h)-1
u355:
	lslf	(??_SetPWM2+0)+0,f
	addlw	-1
	skipz
	goto	u355
	lslf	(??_SetPWM2+0)+0,w
	movwf	(??_SetPWM2+1)+0
	movf	(??_SetPWM2+1)+0,w
	iorwf	(794)^0300h,f	;volatile
	line	56
	
l205:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM2
	__end_of_SetPWM2:
	signat	_SetPWM2,4217
	global	_SetPWM1

;; *************** function _SetPWM1 *****************
;; Defined at:
;;		line 43 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\pwm.c"
;; Parameters:    Size  Location     Type
;;  dutycycle       2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_forward
;;		_Rturn
;;		_Lturn
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	43
global __ptext10
__ptext10:	;psect for function _SetPWM1
psect	text10
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_goliath\pwm.c"
	line	43
	global	__size_of_SetPWM1
	__size_of_SetPWM1	equ	__end_of_SetPWM1-_SetPWM1
	
_SetPWM1:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM1: [wreg+status,2+status,0]
	line	46
	
l879:	
;pwm.c: 46: CCPR3L = dutycycle >> 2;
	movf	(SetPWM1@dutycycle+1),w
	movwf	(??_SetPWM1+0)+0+1
	movf	(SetPWM1@dutycycle),w
	movwf	(??_SetPWM1+0)+0
	lsrf	(??_SetPWM1+0)+1,f
	rrf	(??_SetPWM1+0)+0,f
	lsrf	(??_SetPWM1+0)+1,f
	rrf	(??_SetPWM1+0)+0,f
	movf	0+(??_SetPWM1+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	48
;pwm.c: 48: CCP3CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM1@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM1+0)+0
	movlw	(04h)-1
u345:
	lslf	(??_SetPWM1+0)+0,f
	addlw	-1
	skipz
	goto	u345
	lslf	(??_SetPWM1+0)+0,w
	movwf	(??_SetPWM1+1)+0
	movf	(??_SetPWM1+1)+0,w
	iorwf	(787)^0300h,f	;volatile
	line	49
	
l202:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM1
	__end_of_SetPWM1:
	signat	_SetPWM1,4217
global	___latbits
___latbits	equ	1
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
