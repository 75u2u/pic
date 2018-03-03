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
	FNCALL	_main,_emergency
	FNCALL	_main,_get_usart
	FNCALL	_main,_init
	FNCALL	_main,_init_pwm
	FNCALL	_main,_loading
	FNCALL	_main,_movetire1
	FNCALL	_main,_movetire2
	FNCALL	_main,_rotation
	FNCALL	_main,_shooting
	FNCALL	_rotation,_SetPWM3
	FNCALL	_movetire2,_SetPWM2
	FNCALL	_movetire1,_SetPWM1
	FNCALL	_loading,_SetPWM4
	FNCALL	_init_pwm,_OpenPWM1
	FNCALL	_init_pwm,_OpenPWM2
	FNCALL	_init_pwm,_OpenPWM3
	FNCALL	_init_pwm,_OpenPWM4
	FNCALL	_init_pwm,_SetPWM1
	FNCALL	_init_pwm,_SetPWM2
	FNCALL	_init_pwm,_SetPWM3
	FNCALL	_init_pwm,_SetPWM4
	FNCALL	_get_usart,_getch
	FNCALL	_get_usart,_inRxData
	FNCALL	_emergency,_SetPWM1
	FNCALL	_emergency,_SetPWM2
	FNCALL	_emergency,_SetPWM3
	FNCALL	_emergency,_SetPWM4
	FNROOT	_main
	global	_pwml
	global	_pwmr
	global	_data
	global	_PWML1
	global	_PWML2
	global	_PWMR1
	global	_PWMR2
	global	_PWMload1
	global	_PWMload2
	global	_PWMpwl1
	global	_PWMpwl2
	global	_addata
	global	_pwmload
	global	_pwmpwl
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
	global	_TRISB2
_TRISB2	set	0x46A
	global	_TRISB5
_TRISB5	set	0x46D
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
	global	_LATB7
_LATB7	set	0x86F
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
	global	_CCP1CON
_CCP1CON	set	0x293
	global	_CCP2CON
_CCP2CON	set	0x29A
	global	_CCPR1L
_CCPR1L	set	0x291
	global	_CCPR2L
_CCPR2L	set	0x298
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
	file	"moter.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_pwml:
       ds      2

_pwmr:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_data:
       ds      6

_PWML1:
       ds      2

_PWML2:
       ds      2

_PWMR1:
       ds      2

_PWMR2:
       ds      2

_PWMload1:
       ds      2

_PWMload2:
       ds      2

_PWMpwl1:
       ds      2

_PWMpwl2:
       ds      2

_addata:
       ds      2

_pwmload:
       ds      2

_pwmpwl:
       ds      2

_contORE:
       ds      1

	file	"moter.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	01Dh
	fcall	clear_ram0
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
?_init_pwm:	; 1 bytes @ 0x0
?_get_usart:	; 1 bytes @ 0x0
?_emergency:	; 1 bytes @ 0x0
?_rotation:	; 1 bytes @ 0x0
?_loading:	; 1 bytes @ 0x0
?_shooting:	; 1 bytes @ 0x0
??_shooting:	; 1 bytes @ 0x0
?_movetire1:	; 1 bytes @ 0x0
?_movetire2:	; 1 bytes @ 0x0
?_SetPWM1:	; 1 bytes @ 0x0
?_SetPWM2:	; 1 bytes @ 0x0
?_SetPWM3:	; 1 bytes @ 0x0
?_SetPWM4:	; 1 bytes @ 0x0
?_OpenPWM1:	; 1 bytes @ 0x0
??_OpenPWM1:	; 1 bytes @ 0x0
?_OpenPWM2:	; 1 bytes @ 0x0
??_OpenPWM2:	; 1 bytes @ 0x0
?_OpenPWM3:	; 1 bytes @ 0x0
??_OpenPWM3:	; 1 bytes @ 0x0
?_OpenPWM4:	; 1 bytes @ 0x0
??_OpenPWM4:	; 1 bytes @ 0x0
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
	global	SetPWM3@dutycycle
SetPWM3@dutycycle:	; 2 bytes @ 0x0
	global	SetPWM4@dutycycle
SetPWM4@dutycycle:	; 2 bytes @ 0x0
	ds	1
	global	OpenPWM1@period
OpenPWM1@period:	; 1 bytes @ 0x1
	global	OpenPWM2@period
OpenPWM2@period:	; 1 bytes @ 0x1
	global	OpenPWM3@period
OpenPWM3@period:	; 1 bytes @ 0x1
	global	OpenPWM4@period
OpenPWM4@period:	; 1 bytes @ 0x1
	global	inRxData@cnt1
inRxData@cnt1:	; 2 bytes @ 0x1
	ds	1
??_SetPWM1:	; 1 bytes @ 0x2
??_SetPWM2:	; 1 bytes @ 0x2
??_SetPWM3:	; 1 bytes @ 0x2
??_SetPWM4:	; 1 bytes @ 0x2
	ds	1
	global	inRxData@cnt2
inRxData@cnt2:	; 2 bytes @ 0x3
	ds	1
??_init_pwm:	; 1 bytes @ 0x4
??_emergency:	; 1 bytes @ 0x4
??_rotation:	; 1 bytes @ 0x4
??_loading:	; 1 bytes @ 0x4
??_movetire1:	; 1 bytes @ 0x4
??_movetire2:	; 1 bytes @ 0x4
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
;!    BSS         33
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      14
;!    BANK0            80      0      29
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
;!    _rotation->_SetPWM3
;!    _movetire2->_SetPWM2
;!    _movetire1->_SetPWM1
;!    _loading->_SetPWM4
;!    _init_pwm->_SetPWM1
;!    _init_pwm->_SetPWM2
;!    _init_pwm->_SetPWM3
;!    _init_pwm->_SetPWM4
;!    _get_usart->_inRxData
;!    _emergency->_SetPWM1
;!    _emergency->_SetPWM2
;!    _emergency->_SetPWM3
;!    _emergency->_SetPWM4
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
;! (0) _main                                                 2     2      0    5231
;!                                              8 COMMON     2     2      0
;!                          _emergency
;!                          _get_usart
;!                               _init
;!                           _init_pwm
;!                            _loading
;!                          _movetire1
;!                          _movetire2
;!                           _rotation
;!                           _shooting
;! ---------------------------------------------------------------------------------
;! (1) _shooting                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _rotation                                             1     1      0     415
;!                                              4 COMMON     1     1      0
;!                            _SetPWM3
;! ---------------------------------------------------------------------------------
;! (1) _movetire2                                            1     1      0     415
;!                                              4 COMMON     1     1      0
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (1) _movetire1                                            1     1      0     415
;!                                              4 COMMON     1     1      0
;!                            _SetPWM1
;! ---------------------------------------------------------------------------------
;! (1) _loading                                              1     1      0     415
;!                                              4 COMMON     1     1      0
;!                            _SetPWM4
;! ---------------------------------------------------------------------------------
;! (1) _init_pwm                                             0     0      0    1720
;!                           _OpenPWM1
;!                           _OpenPWM2
;!                           _OpenPWM3
;!                           _OpenPWM4
;!                            _SetPWM1
;!                            _SetPWM2
;!                            _SetPWM3
;!                            _SetPWM4
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM4                                             2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM3                                             2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM2                                             2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM1                                             2     2      0      15
;!                                              0 COMMON     2     2      0
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
;! (1) _emergency                                            0     0      0    1660
;!                            _SetPWM1
;!                            _SetPWM2
;!                            _SetPWM3
;!                            _SetPWM4
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM4                                              4     2      2     415
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM3                                              4     2      2     415
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM2                                              4     2      2     415
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _SetPWM1                                              4     2      2     415
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _emergency
;!     _SetPWM1
;!     _SetPWM2
;!     _SetPWM3
;!     _SetPWM4
;!   _get_usart
;!     _getch
;!     _inRxData
;!   _init
;!   _init_pwm
;!     _OpenPWM1
;!     _OpenPWM2
;!     _OpenPWM3
;!     _OpenPWM4
;!     _SetPWM1
;!     _SetPWM2
;!     _SetPWM3
;!     _SetPWM4
;!   _loading
;!     _SetPWM4
;!   _movetire1
;!     _SetPWM1
;!   _movetire2
;!     _SetPWM2
;!   _rotation
;!     _SetPWM3
;!   _shooting
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
;!COMMON               E      A       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      2B       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      0      1D       6       36.3%
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
;!DATA                 0      0      2B      15        0.0%
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
;;		line 76 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;		_emergency
;;		_get_usart
;;		_init
;;		_init_pwm
;;		_loading
;;		_movetire1
;;		_movetire2
;;		_rotation
;;		_shooting
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	76
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	76
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 14
; Regs used in _main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	78
	
l1554:	
;main.c: 78: init();
	fcall	_init
	line	79
;main.c: 79: init_pwm();
	fcall	_init_pwm
	line	80
	
l1556:	
;main.c: 80: unsigned int cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1558
	line	81
;main.c: 81: while(1)
	
l136:	
	line	84
	
l1558:	
;main.c: 82: {
;main.c: 84: if(get_usart()==0x01){
	fcall	_get_usart
	xorlw	01h&0ffh
	skipz
	goto	u1641
	goto	u1640
u1641:
	goto	l1574
u1640:
	line	86
	
l1560:	
;main.c: 86: cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	line	88
	
l1562:	
;main.c: 88: emergency();
	fcall	_emergency
	line	89
	
l1564:	
;main.c: 89: rotation();
	fcall	_rotation
	line	90
	
l1566:	
;main.c: 90: loading();
	fcall	_loading
	line	91
	
l1568:	
;main.c: 91: shooting();
	fcall	_shooting
	line	92
	
l1570:	
;main.c: 92: movetire1();
	fcall	_movetire1
	line	93
	
l1572:	
;main.c: 93: movetire2();
	fcall	_movetire2
	line	95
;main.c: 95: }
	goto	l1558
	line	96
	
l137:	
	line	98
	
l1574:	
;main.c: 96: else{
;main.c: 98: cntError++;
	movlw	01h
	addwf	(main@cntError),f
	movlw	0
	addwfc	(main@cntError+1),f
	line	99
;main.c: 99: if(cntError>=10)
	movlw	0
	subwf	(main@cntError+1),w
	movlw	0Ah
	skipnz
	subwf	(main@cntError),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1558
u1650:
	line	101
	
l1576:	
;main.c: 100: {
;main.c: 101: cntError=0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1558
	line	102
	
l139:	
	goto	l1558
	line	103
	
l138:	
	goto	l1558
	line	104
	
l140:	
	line	81
	goto	l1558
	
l141:	
	line	105
	
l142:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_shooting

;; *************** function _shooting *****************
;; Defined at:
;;		line 208 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
	line	208
global __ptext1
__ptext1:	;psect for function _shooting
psect	text1
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	208
	global	__size_of_shooting
	__size_of_shooting	equ	__end_of_shooting-_shooting
	
_shooting:	
;incstack = 0
	opt	stack 15
; Regs used in _shooting: []
	line	209
	
l1410:	
;main.c: 209: if((data[1]&0x40)!=0) LATB7=1;
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(6)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l189
u1270:
	
l1412:	
	movlb 2	; select bank2
	bsf	(2159/8)^0100h,(2159)&7	;volatile
	
l189:	
	line	210
;main.c: 210: if((data[1]&0x10)!=0) LATB7=0;
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(4)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l191
u1280:
	
l1414:	
	movlb 2	; select bank2
	bcf	(2159/8)^0100h,(2159)&7	;volatile
	goto	l191
	
l190:	
	line	211
	
l191:	
	return
	opt stack 0
GLOBAL	__end_of_shooting
	__end_of_shooting:
	signat	_shooting,89
	global	_rotation

;; *************** function _rotation *****************
;; Defined at:
;;		line 118 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM3
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	118
global __ptext2
__ptext2:	;psect for function _rotation
psect	text2
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	118
	global	__size_of_rotation
	__size_of_rotation	equ	__end_of_rotation-_rotation
	
_rotation:	
;incstack = 0
	opt	stack 14
; Regs used in _rotation: [wreg+status,2+status,0+pclath+cstack]
	line	119
	
l1298:	
;main.c: 119: if((data[0]&0x08)!=0){
	movlb 0	; select bank0
	btfss	(_data),(3)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l149
u1010:
	line	120
	
l1300:	
;main.c: 120: if(pwmpwl==PWMpwl1){
	movf	(_PWMpwl1+1),w
	xorwf	(_pwmpwl+1),w
	skipz
	goto	u1025
	movf	(_PWMpwl1),w
	xorwf	(_pwmpwl),w
u1025:

	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1314
u1020:
	line	121
	
l1302:	
;main.c: 121: if(pwmpwl<960){
	movf	(_pwmpwl+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(03h)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1035
	movlw	0C0h
	subwf	(_pwmpwl),w
u1035:

	skipnc
	goto	u1031
	goto	u1030
u1031:
	goto	l1310
u1030:
	line	122
	
l1304:	
;main.c: 122: pwmpwl+=48;
	movlw	030h
	movlb 0	; select bank0
	addwf	(_pwmpwl),f
	movlw	0
	addwfc	(_pwmpwl+1),f
	line	123
	
l1306:	
;main.c: 123: SetPWM3(pwmpwl);
	movf	(_pwmpwl+1),w
	movwf	(SetPWM3@dutycycle+1)
	movf	(_pwmpwl),w
	movwf	(SetPWM3@dutycycle)
	fcall	_SetPWM3
	line	124
	
l1308:	
;main.c: 124: LATA7=1;
	movlb 2	; select bank2
	bsf	(2151/8)^0100h,(2151)&7	;volatile
	goto	l1310
	line	125
	
l151:	
	line	126
	
l1310:	
;main.c: 125: }
;main.c: 126: if(PWMpwl1<960) PWMpwl1+=48;
	movlb 0	; select bank0
	movf	(_PWMpwl1+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(03h)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1045
	movlw	0C0h
	subwf	(_PWMpwl1),w
u1045:

	skipnc
	goto	u1041
	goto	u1040
u1041:
	goto	l166
u1040:
	
l1312:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMpwl1),f
	movlw	0
	addwfc	(_PWMpwl1+1),f
	goto	l166
	
l152:	
	line	127
;main.c: 127: }
	goto	l166
	line	128
	
l150:	
	line	129
	
l1314:	
;main.c: 128: else{
;main.c: 129: if(pwmpwl>0){
	movf	(_pwmpwl+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(0)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1055
	movlw	01h
	subwf	(_pwmpwl),w
u1055:

	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l1320
u1050:
	line	130
	
l1316:	
;main.c: 130: pwmpwl-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmpwl),f
	movlw	0FFh
	addwfc	(_pwmpwl+1),f
	line	131
	
l1318:	
;main.c: 131: SetPWM3(pwmpwl);
	movf	(_pwmpwl+1),w
	movwf	(SetPWM3@dutycycle+1)
	movf	(_pwmpwl),w
	movwf	(SetPWM3@dutycycle)
	fcall	_SetPWM3
	goto	l1320
	line	132
	
l154:	
	line	133
	
l1320:	
;main.c: 132: }
;main.c: 133: if(PWMpwl1>0) PWMpwl1-=48;
	movlb 0	; select bank0
	movf	(_PWMpwl1+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(0)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1065
	movlw	01h
	subwf	(_PWMpwl1),w
u1065:

	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l166
u1060:
	
l1322:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMpwl1),f
	movlw	0FFh
	addwfc	(_PWMpwl1+1),f
	goto	l166
	
l155:	
	goto	l166
	line	134
	
l153:	
	line	135
;main.c: 134: }
;main.c: 135: }
	goto	l166
	line	136
	
l149:	
;main.c: 136: else if((data[0]&0x10)!=0){
	btfss	(_data),(4)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1348
u1070:
	line	137
	
l1324:	
;main.c: 137: if(pwmpwl==PWMpwl2){
	movf	(_PWMpwl2+1),w
	xorwf	(_pwmpwl+1),w
	skipz
	goto	u1085
	movf	(_PWMpwl2),w
	xorwf	(_pwmpwl),w
u1085:

	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l1338
u1080:
	line	138
	
l1326:	
;main.c: 138: if(pwmpwl<960){
	movf	(_pwmpwl+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(03h)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1095
	movlw	0C0h
	subwf	(_pwmpwl),w
u1095:

	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l1334
u1090:
	line	139
	
l1328:	
;main.c: 139: pwmpwl+=48;
	movlw	030h
	movlb 0	; select bank0
	addwf	(_pwmpwl),f
	movlw	0
	addwfc	(_pwmpwl+1),f
	line	140
	
l1330:	
;main.c: 140: SetPWM3(pwmpwl);
	movf	(_pwmpwl+1),w
	movwf	(SetPWM3@dutycycle+1)
	movf	(_pwmpwl),w
	movwf	(SetPWM3@dutycycle)
	fcall	_SetPWM3
	line	141
	
l1332:	
;main.c: 141: LATA7=0;
	movlb 2	; select bank2
	bcf	(2151/8)^0100h,(2151)&7	;volatile
	goto	l1334
	line	142
	
l159:	
	line	143
	
l1334:	
;main.c: 142: }
;main.c: 143: if(PWMpwl2<960) PWMpwl2+=48;
	movlb 0	; select bank0
	movf	(_PWMpwl2+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(03h)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1105
	movlw	0C0h
	subwf	(_PWMpwl2),w
u1105:

	skipnc
	goto	u1101
	goto	u1100
u1101:
	goto	l166
u1100:
	
l1336:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMpwl2),f
	movlw	0
	addwfc	(_PWMpwl2+1),f
	goto	l166
	
l160:	
	line	144
;main.c: 144: }
	goto	l166
	line	145
	
l158:	
	line	146
	
l1338:	
;main.c: 145: else{
;main.c: 146: if(pwmpwl>0){
	movf	(_pwmpwl+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(0)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1115
	movlw	01h
	subwf	(_pwmpwl),w
u1115:

	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l1344
u1110:
	line	147
	
l1340:	
;main.c: 147: pwmpwl-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmpwl),f
	movlw	0FFh
	addwfc	(_pwmpwl+1),f
	line	148
	
l1342:	
;main.c: 148: SetPWM3(pwmpwl);
	movf	(_pwmpwl+1),w
	movwf	(SetPWM3@dutycycle+1)
	movf	(_pwmpwl),w
	movwf	(SetPWM3@dutycycle)
	fcall	_SetPWM3
	goto	l1344
	line	149
	
l162:	
	line	150
	
l1344:	
;main.c: 149: }
;main.c: 150: if(PWMpwl2>0) PWMpwl2-=48;
	movlb 0	; select bank0
	movf	(_PWMpwl2+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(0)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1125
	movlw	01h
	subwf	(_PWMpwl2),w
u1125:

	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l166
u1120:
	
l1346:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMpwl2),f
	movlw	0FFh
	addwfc	(_PWMpwl2+1),f
	goto	l166
	
l163:	
	goto	l166
	line	151
	
l161:	
	line	152
;main.c: 151: }
;main.c: 152: }
	goto	l166
	line	154
	
l157:	
	line	155
	
l1348:	
;main.c: 154: else{
;main.c: 155: if(pwmpwl>0){
	movf	(_pwmpwl+1),w
	xorlw	80h
	movwf	(??_rotation+0)+0
	movlw	(0)^80h
	subwf	(??_rotation+0)+0,w
	skipz
	goto	u1135
	movlw	01h
	subwf	(_pwmpwl),w
u1135:

	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l166
u1130:
	line	156
	
l1350:	
;main.c: 156: pwmpwl-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmpwl),f
	movlw	0FFh
	addwfc	(_pwmpwl+1),f
	line	157
	
l1352:	
;main.c: 157: SetPWM3(pwmpwl);
	movf	(_pwmpwl+1),w
	movwf	(SetPWM3@dutycycle+1)
	movf	(_pwmpwl),w
	movwf	(SetPWM3@dutycycle)
	fcall	_SetPWM3
	goto	l166
	line	158
	
l165:	
	goto	l166
	line	159
	
l164:	
	goto	l166
	
l156:	
	line	160
	
l166:	
	return
	opt stack 0
GLOBAL	__end_of_rotation
	__end_of_rotation:
	signat	_rotation,89
	global	_movetire2

;; *************** function _movetire2 *****************
;; Defined at:
;;		line 261 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	261
global __ptext3
__ptext3:	;psect for function _movetire2
psect	text3
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	261
	global	__size_of_movetire2
	__size_of_movetire2	equ	__end_of_movetire2-_movetire2
	
_movetire2:	
;incstack = 0
	opt	stack 14
; Regs used in _movetire2: [wreg+status,2+status,0+pclath+cstack]
	line	263
	
l1482:	
;main.c: 263: if(data[2] < 0x77 && data[2] > 0x0A && data[3] == 0x00){
	movlw	low(077h)
	movlb 0	; select bank0
	subwf	0+(_data)+02h,w
	skipnc
	goto	u1461
	goto	u1460
u1461:
	goto	l1512
u1460:
	
l1484:	
	movlw	low(0Bh)
	subwf	0+(_data)+02h,w
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l1512
u1470:
	
l1486:	
	movf	(0+(_data)+03h),w
	btfss	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l1512
u1480:
	line	264
	
l1488:	
;main.c: 264: if(pwml==PWML1){
	movf	(_PWML1+1),w
	xorwf	(_pwml+1),w
	skipz
	goto	u1495
	movf	(_PWML1),w
	xorwf	(_pwml),w
u1495:

	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l1502
u1490:
	line	265
	
l1490:	
;main.c: 265: if(pwml<1008){
	movf	(_pwml+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1505
	movlw	0F0h
	subwf	(_pwml),w
u1505:

	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l1498
u1500:
	line	266
	
l1492:	
;main.c: 266: pwml+=48;
	movlw	030h
	addwf	(_pwml),f
	movlw	0
	addwfc	(_pwml+1),f
	line	267
	
l1494:	
;main.c: 267: SetPWM2(pwml);
	movf	(_pwml+1),w
	movwf	(SetPWM2@dutycycle+1)
	movf	(_pwml),w
	movwf	(SetPWM2@dutycycle)
	fcall	_SetPWM2
	line	268
	
l1496:	
;main.c: 268: LATA0=1;
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7	;volatile
	goto	l1498
	line	269
	
l216:	
	line	270
	
l1498:	
;main.c: 269: }
;main.c: 270: if(PWML1<1008) PWML1+=48;
	movlb 0	; select bank0
	movf	(_PWML1+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1515
	movlw	0F0h
	subwf	(_PWML1),w
u1515:

	skipnc
	goto	u1511
	goto	u1510
u1511:
	goto	l231
u1510:
	
l1500:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWML1),f
	movlw	0
	addwfc	(_PWML1+1),f
	goto	l231
	
l217:	
	line	271
;main.c: 271: }
	goto	l231
	line	272
	
l215:	
	line	273
	
l1502:	
;main.c: 272: else{
;main.c: 273: if(pwml>0){
	movf	(_pwml+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(0)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1525
	movlw	01h
	subwf	(_pwml),w
u1525:

	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l1508
u1520:
	line	274
	
l1504:	
;main.c: 274: pwml-=48;
	movlw	0D0h
	addwf	(_pwml),f
	movlw	0FFh
	addwfc	(_pwml+1),f
	line	275
	
l1506:	
;main.c: 275: SetPWM2(pwml);
	movf	(_pwml+1),w
	movwf	(SetPWM2@dutycycle+1)
	movf	(_pwml),w
	movwf	(SetPWM2@dutycycle)
	fcall	_SetPWM2
	goto	l1508
	line	276
	
l219:	
	line	277
	
l1508:	
;main.c: 276: }
;main.c: 277: if(PWML1>0) PWML1-=48;
	movlb 0	; select bank0
	movf	(_PWML1+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(0)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1535
	movlw	01h
	subwf	(_PWML1),w
u1535:

	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l231
u1530:
	
l1510:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWML1),f
	movlw	0FFh
	addwfc	(_PWML1+1),f
	goto	l231
	
l220:	
	goto	l231
	line	278
	
l218:	
	line	279
;main.c: 278: }
;main.c: 279: }
	goto	l231
	line	281
	
l214:	
	
l1512:	
;main.c: 281: else if(data[2] <0x77 && data[2] > 0x0A && data[3] == 0x7f){
	movlw	low(077h)
	subwf	0+(_data)+02h,w
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l1542
u1540:
	
l1514:	
	movlw	low(0Bh)
	subwf	0+(_data)+02h,w
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l1542
u1550:
	
l1516:	
		movlw	127
	xorwf	(0+(_data)+03h),w
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l1542
u1560:
	line	282
	
l1518:	
;main.c: 282: if(pwml==PWML2){
	movf	(_PWML2+1),w
	xorwf	(_pwml+1),w
	skipz
	goto	u1575
	movf	(_PWML2),w
	xorwf	(_pwml),w
u1575:

	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l1532
u1570:
	line	283
	
l1520:	
;main.c: 283: if(pwml<1008){
	movf	(_pwml+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1585
	movlw	0F0h
	subwf	(_pwml),w
u1585:

	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l1528
u1580:
	line	284
	
l1522:	
;main.c: 284: pwml+=48;
	movlw	030h
	addwf	(_pwml),f
	movlw	0
	addwfc	(_pwml+1),f
	line	285
	
l1524:	
;main.c: 285: SetPWM2(pwml);
	movf	(_pwml+1),w
	movwf	(SetPWM2@dutycycle+1)
	movf	(_pwml),w
	movwf	(SetPWM2@dutycycle)
	fcall	_SetPWM2
	line	286
	
l1526:	
;main.c: 286: LATA0=0;
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7	;volatile
	goto	l1528
	line	287
	
l224:	
	line	288
	
l1528:	
;main.c: 287: }
;main.c: 288: if(PWML2<1008) PWML2+=48;
	movlb 0	; select bank0
	movf	(_PWML2+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1595
	movlw	0F0h
	subwf	(_PWML2),w
u1595:

	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l231
u1590:
	
l1530:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWML2),f
	movlw	0
	addwfc	(_PWML2+1),f
	goto	l231
	
l225:	
	line	289
;main.c: 289: }
	goto	l231
	line	290
	
l223:	
	line	291
	
l1532:	
;main.c: 290: else{
;main.c: 291: if(pwml>0){
	movf	(_pwml+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(0)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1605
	movlw	01h
	subwf	(_pwml),w
u1605:

	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l1538
u1600:
	line	292
	
l1534:	
;main.c: 292: pwml-=48;
	movlw	0D0h
	addwf	(_pwml),f
	movlw	0FFh
	addwfc	(_pwml+1),f
	line	293
	
l1536:	
;main.c: 293: SetPWM2(pwml);
	movf	(_pwml+1),w
	movwf	(SetPWM2@dutycycle+1)
	movf	(_pwml),w
	movwf	(SetPWM2@dutycycle)
	fcall	_SetPWM2
	goto	l1538
	line	294
	
l227:	
	line	295
	
l1538:	
;main.c: 294: }
;main.c: 295: if(PWML2>0) PWML2-=48;
	movlb 0	; select bank0
	movf	(_PWML2+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(0)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1615
	movlw	01h
	subwf	(_PWML2),w
u1615:

	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l231
u1610:
	
l1540:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWML2),f
	movlw	0FFh
	addwfc	(_PWML2+1),f
	goto	l231
	
l228:	
	goto	l231
	line	296
	
l226:	
	line	297
;main.c: 296: }
;main.c: 297: }
	goto	l231
	line	299
	
l222:	
	line	300
	
l1542:	
;main.c: 299: else{
;main.c: 300: if(pwml>0){
	movf	(_pwml+1),w
	xorlw	80h
	movwf	(??_movetire2+0)+0
	movlw	(0)^80h
	subwf	(??_movetire2+0)+0,w
	skipz
	goto	u1625
	movlw	01h
	subwf	(_pwml),w
u1625:

	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l231
u1620:
	line	301
	
l1544:	
;main.c: 301: pwml-=48;
	movlw	0D0h
	addwf	(_pwml),f
	movlw	0FFh
	addwfc	(_pwml+1),f
	line	302
	
l1546:	
;main.c: 302: SetPWM2(pwml);
	movf	(_pwml+1),w
	movwf	(SetPWM2@dutycycle+1)
	movf	(_pwml),w
	movwf	(SetPWM2@dutycycle)
	fcall	_SetPWM2
	goto	l231
	line	303
	
l230:	
	goto	l231
	line	304
	
l229:	
	goto	l231
	
l221:	
	line	305
	
l231:	
	return
	opt stack 0
GLOBAL	__end_of_movetire2
	__end_of_movetire2:
	signat	_movetire2,89
	global	_movetire1

;; *************** function _movetire1 *****************
;; Defined at:
;;		line 214 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	214
global __ptext4
__ptext4:	;psect for function _movetire1
psect	text4
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	214
	global	__size_of_movetire1
	__size_of_movetire1	equ	__end_of_movetire1-_movetire1
	
_movetire1:	
;incstack = 0
	opt	stack 14
; Regs used in _movetire1: [wreg+status,2+status,0+pclath+cstack]
	line	216
	
l1416:	
;main.c: 216: if(data[4] < 0x77 && data[4] > 0x0A && data[5] == 0x00){
	movlw	low(077h)
	movlb 0	; select bank0
	subwf	0+(_data)+04h,w
	skipnc
	goto	u1291
	goto	u1290
u1291:
	goto	l1446
u1290:
	
l1418:	
	movlw	low(0Bh)
	subwf	0+(_data)+04h,w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1446
u1300:
	
l1420:	
	movf	(0+(_data)+05h),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1446
u1310:
	line	217
	
l1422:	
;main.c: 217: if(pwmr==PWMR1){
	movf	(_PWMR1+1),w
	xorwf	(_pwmr+1),w
	skipz
	goto	u1325
	movf	(_PWMR1),w
	xorwf	(_pwmr),w
u1325:

	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l1436
u1320:
	line	218
	
l1424:	
;main.c: 218: if(pwmr<1008){
	movf	(_pwmr+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1335
	movlw	0F0h
	subwf	(_pwmr),w
u1335:

	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1432
u1330:
	line	219
	
l1426:	
;main.c: 219: pwmr+=48;
	movlw	030h
	addwf	(_pwmr),f
	movlw	0
	addwfc	(_pwmr+1),f
	line	220
	
l1428:	
;main.c: 220: SetPWM1(pwmr);
	movf	(_pwmr+1),w
	movwf	(SetPWM1@dutycycle+1)
	movf	(_pwmr),w
	movwf	(SetPWM1@dutycycle)
	fcall	_SetPWM1
	line	221
	
l1430:	
;main.c: 221: LATA1=1;
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7	;volatile
	goto	l1432
	line	222
	
l196:	
	line	223
	
l1432:	
;main.c: 222: }
;main.c: 223: if(PWMR1<1008) PWMR1+=48;
	movlb 0	; select bank0
	movf	(_PWMR1+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1345
	movlw	0F0h
	subwf	(_PWMR1),w
u1345:

	skipnc
	goto	u1341
	goto	u1340
u1341:
	goto	l211
u1340:
	
l1434:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMR1),f
	movlw	0
	addwfc	(_PWMR1+1),f
	goto	l211
	
l197:	
	line	224
;main.c: 224: }
	goto	l211
	line	225
	
l195:	
	line	226
	
l1436:	
;main.c: 225: else{
;main.c: 226: if(pwmr>0){
	movf	(_pwmr+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(0)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1355
	movlw	01h
	subwf	(_pwmr),w
u1355:

	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l1442
u1350:
	line	227
	
l1438:	
;main.c: 227: pwmr-=48;
	movlw	0D0h
	addwf	(_pwmr),f
	movlw	0FFh
	addwfc	(_pwmr+1),f
	line	228
	
l1440:	
;main.c: 228: SetPWM1(pwmr);
	movf	(_pwmr+1),w
	movwf	(SetPWM1@dutycycle+1)
	movf	(_pwmr),w
	movwf	(SetPWM1@dutycycle)
	fcall	_SetPWM1
	goto	l1442
	line	229
	
l199:	
	line	230
	
l1442:	
;main.c: 229: }
;main.c: 230: if(PWMR1>0) PWMR1-=48;
	movlb 0	; select bank0
	movf	(_PWMR1+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(0)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1365
	movlw	01h
	subwf	(_PWMR1),w
u1365:

	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l211
u1360:
	
l1444:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMR1),f
	movlw	0FFh
	addwfc	(_PWMR1+1),f
	goto	l211
	
l200:	
	goto	l211
	line	231
	
l198:	
	line	232
;main.c: 231: }
;main.c: 232: }
	goto	l211
	line	234
	
l194:	
	
l1446:	
;main.c: 234: else if(data[4] <0x77 && data[4] > 0x0A && data[5] == 0x7f){
	movlw	low(077h)
	subwf	0+(_data)+04h,w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l1476
u1370:
	
l1448:	
	movlw	low(0Bh)
	subwf	0+(_data)+04h,w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l1476
u1380:
	
l1450:	
		movlw	127
	xorwf	(0+(_data)+05h),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l1476
u1390:
	line	235
	
l1452:	
;main.c: 235: if(pwmr==PWMR2){
	movf	(_PWMR2+1),w
	xorwf	(_pwmr+1),w
	skipz
	goto	u1405
	movf	(_PWMR2),w
	xorwf	(_pwmr),w
u1405:

	skipz
	goto	u1401
	goto	u1400
u1401:
	goto	l1466
u1400:
	line	236
	
l1454:	
;main.c: 236: if(pwmr<1008){
	movf	(_pwmr+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1415
	movlw	0F0h
	subwf	(_pwmr),w
u1415:

	skipnc
	goto	u1411
	goto	u1410
u1411:
	goto	l1462
u1410:
	line	237
	
l1456:	
;main.c: 237: pwmr+=48;
	movlw	030h
	addwf	(_pwmr),f
	movlw	0
	addwfc	(_pwmr+1),f
	line	238
	
l1458:	
;main.c: 238: SetPWM1(pwmr);
	movf	(_pwmr+1),w
	movwf	(SetPWM1@dutycycle+1)
	movf	(_pwmr),w
	movwf	(SetPWM1@dutycycle)
	fcall	_SetPWM1
	line	239
	
l1460:	
;main.c: 239: LATA1=0;
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7	;volatile
	goto	l1462
	line	240
	
l204:	
	line	241
	
l1462:	
;main.c: 240: }
;main.c: 241: if(PWMR2<1008) PWMR2+=48;
	movlb 0	; select bank0
	movf	(_PWMR2+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(03h)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1425
	movlw	0F0h
	subwf	(_PWMR2),w
u1425:

	skipnc
	goto	u1421
	goto	u1420
u1421:
	goto	l211
u1420:
	
l1464:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMR2),f
	movlw	0
	addwfc	(_PWMR2+1),f
	goto	l211
	
l205:	
	line	242
;main.c: 242: }
	goto	l211
	line	243
	
l203:	
	line	244
	
l1466:	
;main.c: 243: else{
;main.c: 244: if(pwmr>0){
	movf	(_pwmr+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(0)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1435
	movlw	01h
	subwf	(_pwmr),w
u1435:

	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l1472
u1430:
	line	245
	
l1468:	
;main.c: 245: pwmr-=48;
	movlw	0D0h
	addwf	(_pwmr),f
	movlw	0FFh
	addwfc	(_pwmr+1),f
	line	246
	
l1470:	
;main.c: 246: SetPWM1(pwmr);
	movf	(_pwmr+1),w
	movwf	(SetPWM1@dutycycle+1)
	movf	(_pwmr),w
	movwf	(SetPWM1@dutycycle)
	fcall	_SetPWM1
	goto	l1472
	line	247
	
l207:	
	line	248
	
l1472:	
;main.c: 247: }
;main.c: 248: if(PWMR2>0) PWMR2-=48;
	movlb 0	; select bank0
	movf	(_PWMR2+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(0)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1445
	movlw	01h
	subwf	(_PWMR2),w
u1445:

	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l211
u1440:
	
l1474:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMR2),f
	movlw	0FFh
	addwfc	(_PWMR2+1),f
	goto	l211
	
l208:	
	goto	l211
	line	249
	
l206:	
	line	250
;main.c: 249: }
;main.c: 250: }
	goto	l211
	line	252
	
l202:	
	line	253
	
l1476:	
;main.c: 252: else{
;main.c: 253: if(pwmr>0){
	movf	(_pwmr+1),w
	xorlw	80h
	movwf	(??_movetire1+0)+0
	movlw	(0)^80h
	subwf	(??_movetire1+0)+0,w
	skipz
	goto	u1455
	movlw	01h
	subwf	(_pwmr),w
u1455:

	skipc
	goto	u1451
	goto	u1450
u1451:
	goto	l211
u1450:
	line	254
	
l1478:	
;main.c: 254: pwmr-=48;
	movlw	0D0h
	addwf	(_pwmr),f
	movlw	0FFh
	addwfc	(_pwmr+1),f
	line	255
	
l1480:	
;main.c: 255: SetPWM1(pwmr);
	movf	(_pwmr+1),w
	movwf	(SetPWM1@dutycycle+1)
	movf	(_pwmr),w
	movwf	(SetPWM1@dutycycle)
	fcall	_SetPWM1
	goto	l211
	line	256
	
l210:	
	goto	l211
	line	257
	
l209:	
	goto	l211
	
l201:	
	line	258
	
l211:	
	return
	opt stack 0
GLOBAL	__end_of_movetire1
	__end_of_movetire1:
	signat	_movetire1,89
	global	_loading

;; *************** function _loading *****************
;; Defined at:
;;		line 163 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SetPWM4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	163
global __ptext5
__ptext5:	;psect for function _loading
psect	text5
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	163
	global	__size_of_loading
	__size_of_loading	equ	__end_of_loading-_loading
	
_loading:	
;incstack = 0
	opt	stack 14
; Regs used in _loading: [wreg+status,2+status,0+pclath+cstack]
	line	164
	
l1354:	
;main.c: 164: if((data[0]&0x02)!=0){
	movlb 0	; select bank0
	btfss	(_data),(1)&7
	goto	u1141
	goto	u1140
u1141:
	goto	l169
u1140:
	line	165
	
l1356:	
;main.c: 165: if(pwmload==PWMload1){
	movf	(_PWMload1+1),w
	xorwf	(_pwmload+1),w
	skipz
	goto	u1155
	movf	(_PWMload1),w
	xorwf	(_pwmload),w
u1155:

	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l1370
u1150:
	line	166
	
l1358:	
;main.c: 166: if(pwmload<960){
	movf	(_pwmload+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(03h)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1165
	movlw	0C0h
	subwf	(_pwmload),w
u1165:

	skipnc
	goto	u1161
	goto	u1160
u1161:
	goto	l1366
u1160:
	line	167
	
l1360:	
;main.c: 167: pwmload+=48;
	movlw	030h
	movlb 0	; select bank0
	addwf	(_pwmload),f
	movlw	0
	addwfc	(_pwmload+1),f
	line	168
	
l1362:	
;main.c: 168: SetPWM4(pwmload);
	movf	(_pwmload+1),w
	movwf	(SetPWM4@dutycycle+1)
	movf	(_pwmload),w
	movwf	(SetPWM4@dutycycle)
	fcall	_SetPWM4
	line	169
	
l1364:	
;main.c: 169: LATA6=1;
	movlb 2	; select bank2
	bsf	(2150/8)^0100h,(2150)&7	;volatile
	goto	l1366
	line	170
	
l171:	
	line	171
	
l1366:	
;main.c: 170: }
;main.c: 171: if(PWMload1<960) PWMload1+=48;
	movlb 0	; select bank0
	movf	(_PWMload1+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(03h)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1175
	movlw	0C0h
	subwf	(_PWMload1),w
u1175:

	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l186
u1170:
	
l1368:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMload1),f
	movlw	0
	addwfc	(_PWMload1+1),f
	goto	l186
	
l172:	
	line	172
;main.c: 172: }
	goto	l186
	line	173
	
l170:	
	line	174
	
l1370:	
;main.c: 173: else{
;main.c: 174: if(pwmload>0){
	movf	(_pwmload+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(0)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1185
	movlw	01h
	subwf	(_pwmload),w
u1185:

	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l1376
u1180:
	line	175
	
l1372:	
;main.c: 175: pwmload-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmload),f
	movlw	0FFh
	addwfc	(_pwmload+1),f
	line	176
	
l1374:	
;main.c: 176: SetPWM4(pwmload);
	movf	(_pwmload+1),w
	movwf	(SetPWM4@dutycycle+1)
	movf	(_pwmload),w
	movwf	(SetPWM4@dutycycle)
	fcall	_SetPWM4
	goto	l1376
	line	177
	
l174:	
	line	178
	
l1376:	
;main.c: 177: }
;main.c: 178: if(PWMload1>0) PWMload1-=48;
	movlb 0	; select bank0
	movf	(_PWMload1+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(0)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1195
	movlw	01h
	subwf	(_PWMload1),w
u1195:

	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l186
u1190:
	
l1378:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMload1),f
	movlw	0FFh
	addwfc	(_PWMload1+1),f
	goto	l186
	
l175:	
	goto	l186
	line	179
	
l173:	
	line	180
;main.c: 179: }
;main.c: 180: }
	goto	l186
	line	182
	
l169:	
;main.c: 182: else if((data[0]&0x04)!=0){
	btfss	(_data),(2)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l1404
u1200:
	line	183
	
l1380:	
;main.c: 183: if(pwmload==PWMload2){
	movf	(_PWMload2+1),w
	xorwf	(_pwmload+1),w
	skipz
	goto	u1215
	movf	(_PWMload2),w
	xorwf	(_pwmload),w
u1215:

	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l1394
u1210:
	line	184
	
l1382:	
;main.c: 184: if(pwmload<960){
	movf	(_pwmload+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(03h)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1225
	movlw	0C0h
	subwf	(_pwmload),w
u1225:

	skipnc
	goto	u1221
	goto	u1220
u1221:
	goto	l1390
u1220:
	line	185
	
l1384:	
;main.c: 185: pwmload+=48;
	movlw	030h
	movlb 0	; select bank0
	addwf	(_pwmload),f
	movlw	0
	addwfc	(_pwmload+1),f
	line	186
	
l1386:	
;main.c: 186: SetPWM4(pwmload);
	movf	(_pwmload+1),w
	movwf	(SetPWM4@dutycycle+1)
	movf	(_pwmload),w
	movwf	(SetPWM4@dutycycle)
	fcall	_SetPWM4
	line	187
	
l1388:	
;main.c: 187: LATA6=0;
	movlb 2	; select bank2
	bcf	(2150/8)^0100h,(2150)&7	;volatile
	goto	l1390
	line	188
	
l179:	
	line	189
	
l1390:	
;main.c: 188: }
;main.c: 189: if(PWMload2<960) PWMload2+=48;
	movlb 0	; select bank0
	movf	(_PWMload2+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(03h)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1235
	movlw	0C0h
	subwf	(_PWMload2),w
u1235:

	skipnc
	goto	u1231
	goto	u1230
u1231:
	goto	l186
u1230:
	
l1392:	
	movlw	030h
	movlb 0	; select bank0
	addwf	(_PWMload2),f
	movlw	0
	addwfc	(_PWMload2+1),f
	goto	l186
	
l180:	
	line	190
;main.c: 190: }
	goto	l186
	line	191
	
l178:	
	line	192
	
l1394:	
;main.c: 191: else{
;main.c: 192: if(pwmload>0){
	movf	(_pwmload+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(0)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1245
	movlw	01h
	subwf	(_pwmload),w
u1245:

	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l1400
u1240:
	line	193
	
l1396:	
;main.c: 193: pwmload-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmload),f
	movlw	0FFh
	addwfc	(_pwmload+1),f
	line	194
	
l1398:	
;main.c: 194: SetPWM4(pwmload);
	movf	(_pwmload+1),w
	movwf	(SetPWM4@dutycycle+1)
	movf	(_pwmload),w
	movwf	(SetPWM4@dutycycle)
	fcall	_SetPWM4
	goto	l1400
	line	195
	
l182:	
	line	196
	
l1400:	
;main.c: 195: }
;main.c: 196: if(PWMload2>0) PWMload2-=48;
	movlb 0	; select bank0
	movf	(_PWMload2+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(0)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1255
	movlw	01h
	subwf	(_PWMload2),w
u1255:

	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l186
u1250:
	
l1402:	
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_PWMload2),f
	movlw	0FFh
	addwfc	(_PWMload2+1),f
	goto	l186
	
l183:	
	goto	l186
	line	197
	
l181:	
	line	198
;main.c: 197: }
;main.c: 198: }
	goto	l186
	line	200
	
l177:	
	line	201
	
l1404:	
;main.c: 200: else{
;main.c: 201: if(pwmload>0){
	movf	(_pwmload+1),w
	xorlw	80h
	movwf	(??_loading+0)+0
	movlw	(0)^80h
	subwf	(??_loading+0)+0,w
	skipz
	goto	u1265
	movlw	01h
	subwf	(_pwmload),w
u1265:

	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l186
u1260:
	line	202
	
l1406:	
;main.c: 202: pwmload-=48;
	movlw	0D0h
	movlb 0	; select bank0
	addwf	(_pwmload),f
	movlw	0FFh
	addwfc	(_pwmload+1),f
	line	203
	
l1408:	
;main.c: 203: SetPWM4(pwmload);
	movf	(_pwmload+1),w
	movwf	(SetPWM4@dutycycle+1)
	movf	(_pwmload),w
	movwf	(SetPWM4@dutycycle)
	fcall	_SetPWM4
	goto	l186
	line	204
	
l185:	
	goto	l186
	line	205
	
l184:	
	goto	l186
	
l176:	
	line	206
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of_loading
	__end_of_loading:
	signat	_loading,89
	global	_init_pwm

;; *************** function _init_pwm *****************
;; Defined at:
;;		line 4 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
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
;;		_OpenPWM1
;;		_OpenPWM2
;;		_OpenPWM3
;;		_OpenPWM4
;;		_SetPWM1
;;		_SetPWM2
;;		_SetPWM3
;;		_SetPWM4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	4
global __ptext6
__ptext6:	;psect for function _init_pwm
psect	text6
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	4
	global	__size_of_init_pwm
	__size_of_init_pwm	equ	__end_of_init_pwm-_init_pwm
	
_init_pwm:	
;incstack = 0
	opt	stack 14
; Regs used in _init_pwm: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1264:	
;pwm.c: 23: T2CON |= 0b00000010;
	movlb 0	; select bank0
	bsf	(28)+(1/8),(1)&7	;volatile
	line	25
	
l1266:	
;pwm.c: 25: OpenPWM1(0xff);
	movlw	low(0FFh)
	fcall	_OpenPWM1
	line	26
;pwm.c: 26: OpenPWM2(0xff);
	movlw	low(0FFh)
	fcall	_OpenPWM2
	line	27
;pwm.c: 27: OpenPWM3(0xff);
	movlw	low(0FFh)
	fcall	_OpenPWM3
	line	28
;pwm.c: 28: OpenPWM4(0xff);
	movlw	low(0FFh)
	fcall	_OpenPWM4
	line	29
;pwm.c: 29: SetPWM1(0);
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movwf	(SetPWM1@dutycycle+1)
	fcall	_SetPWM1
	line	30
;pwm.c: 30: SetPWM2(0);
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movwf	(SetPWM2@dutycycle+1)
	fcall	_SetPWM2
	line	31
;pwm.c: 31: SetPWM3(0);
	movlw	0
	movwf	(SetPWM3@dutycycle)
	movwf	(SetPWM3@dutycycle+1)
	fcall	_SetPWM3
	line	32
;pwm.c: 32: SetPWM4(0);
	movlw	0
	movwf	(SetPWM4@dutycycle)
	movwf	(SetPWM4@dutycycle+1)
	fcall	_SetPWM4
	line	33
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_init_pwm
	__end_of_init_pwm:
	signat	_init_pwm,89
	global	_OpenPWM4

;; *************** function _OpenPWM4 *****************
;; Defined at:
;;		line 53 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	53
global __ptext7
__ptext7:	;psect for function _OpenPWM4
psect	text7
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	53
	global	__size_of_OpenPWM4
	__size_of_OpenPWM4	equ	__end_of_OpenPWM4-_OpenPWM4
	
_OpenPWM4:	
;incstack = 0
	opt	stack 14
; Regs used in _OpenPWM4: [wreg+status,2+status,0]
;OpenPWM4@period stored from wreg
	movwf	(OpenPWM4@period)
	line	55
	
l856:	
;pwm.c: 55: CCP2CON |= 0b00001100;
	movlw	low(0Ch)
	movwf	(??_OpenPWM4+0)+0
	movf	(??_OpenPWM4+0)+0,w
	movlb 5	; select bank5
	iorwf	(666)^0280h,f	;volatile
	line	56
	
l858:	
;pwm.c: 56: PR2 = period;
	movf	(OpenPWM4@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	57
	
l860:	
;pwm.c: 57: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	58
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM4
	__end_of_OpenPWM4:
	signat	_OpenPWM4,4217
	global	_OpenPWM3

;; *************** function _OpenPWM3 *****************
;; Defined at:
;;		line 47 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	47
global __ptext8
__ptext8:	;psect for function _OpenPWM3
psect	text8
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	47
	global	__size_of_OpenPWM3
	__size_of_OpenPWM3	equ	__end_of_OpenPWM3-_OpenPWM3
	
_OpenPWM3:	
;incstack = 0
	opt	stack 14
; Regs used in _OpenPWM3: [wreg+status,2+status,0]
;OpenPWM3@period stored from wreg
	movwf	(OpenPWM3@period)
	line	49
	
l850:	
;pwm.c: 49: CCP1CON |= 0b00001100;
	movlw	low(0Ch)
	movwf	(??_OpenPWM3+0)+0
	movf	(??_OpenPWM3+0)+0,w
	movlb 5	; select bank5
	iorwf	(659)^0280h,f	;volatile
	line	50
	
l852:	
;pwm.c: 50: PR2 = period;
	movf	(OpenPWM3@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	51
	
l854:	
;pwm.c: 51: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	52
	
l321:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM3
	__end_of_OpenPWM3:
	signat	_OpenPWM3,4217
	global	_OpenPWM2

;; *************** function _OpenPWM2 *****************
;; Defined at:
;;		line 41 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	41
global __ptext9
__ptext9:	;psect for function _OpenPWM2
psect	text9
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	41
	global	__size_of_OpenPWM2
	__size_of_OpenPWM2	equ	__end_of_OpenPWM2-_OpenPWM2
	
_OpenPWM2:	
;incstack = 0
	opt	stack 14
; Regs used in _OpenPWM2: [wreg+status,2+status,0]
;OpenPWM2@period stored from wreg
	movwf	(OpenPWM2@period)
	line	43
	
l844:	
;pwm.c: 43: CCP4CON |= 0b00001100;
	movlw	low(0Ch)
	movwf	(??_OpenPWM2+0)+0
	movf	(??_OpenPWM2+0)+0,w
	movlb 6	; select bank6
	iorwf	(794)^0300h,f	;volatile
	line	44
	
l846:	
;pwm.c: 44: PR2 = period;
	movf	(OpenPWM2@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	45
	
l848:	
;pwm.c: 45: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	46
	
l318:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM2
	__end_of_OpenPWM2:
	signat	_OpenPWM2,4217
	global	_OpenPWM1

;; *************** function _OpenPWM1 *****************
;; Defined at:
;;		line 35 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	35
global __ptext10
__ptext10:	;psect for function _OpenPWM1
psect	text10
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	35
	global	__size_of_OpenPWM1
	__size_of_OpenPWM1	equ	__end_of_OpenPWM1-_OpenPWM1
	
_OpenPWM1:	
;incstack = 0
	opt	stack 14
; Regs used in _OpenPWM1: [wreg+status,2+status,0]
;OpenPWM1@period stored from wreg
	movwf	(OpenPWM1@period)
	line	37
	
l838:	
;pwm.c: 37: CCP3CON |= 0b00001100;
	movlw	low(0Ch)
	movwf	(??_OpenPWM1+0)+0
	movf	(??_OpenPWM1+0)+0,w
	movlb 6	; select bank6
	iorwf	(787)^0300h,f	;volatile
	line	38
	
l840:	
;pwm.c: 38: PR2 = period;
	movf	(OpenPWM1@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	39
	
l842:	
;pwm.c: 39: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	40
	
l315:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM1
	__end_of_OpenPWM1:
	signat	_OpenPWM1,4217
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 308 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	308
global __ptext11
__ptext11:	;psect for function _init
psect	text11
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	308
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 15
; Regs used in _init: [wreg+status,2]
	line	310
	
l862:	
;main.c: 310: INTCON=0;
	clrf	(11)	;volatile
	line	311
	
l864:	
;main.c: 311: TRISB2 = 1; TRISB5 = 1; SPBRG = ((int)(32000000L/(16UL * 115200) -1)); RCSTA = (0|0x90); TXSTA = (0x4|0|0x20);
	movlb 1	; select bank1
	bsf	(1130/8)^080h,(1130)&7	;volatile
	
l866:	
	bsf	(1133/8)^080h,(1133)&7	;volatile
	
l868:	
	movlw	low(010h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	
l870:	
	movlw	low(090h)
	movwf	(413)^0180h	;volatile
	
l872:	
	movlw	low(024h)
	movwf	(414)^0180h	;volatile
	line	312
	
l874:	
;main.c: 312: OSCCON = 0b01110000;
	movlw	low(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	313
	
l876:	
;main.c: 313: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	314
	
l878:	
;main.c: 314: C1ON = 0;
	movlb 2	; select bank2
	bcf	(2191/8)^0100h,(2191)&7	;volatile
	line	315
;main.c: 315: ANSELA = 0b00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	316
;main.c: 316: TRISA = 0b00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	317
;main.c: 317: ANSELB = 0b00000000;
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	318
	
l880:	
;main.c: 318: TRISB = 0b00000010;
	movlw	low(02h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	319
	
l882:	
;main.c: 319: TXCKSEL = 1;
	movlb 2	; select bank2
	bsf	(2288/8)^0100h,(2288)&7	;volatile
	line	320
	
l884:	
;main.c: 320: RXDTSEL = 1;
	bsf	(2287/8)^0100h,(2287)&7	;volatile
	line	322
	
l886:	
;main.c: 322: T2CON |= 0b00000001;
	movlb 0	; select bank0
	bsf	(28)+(0/8),(0)&7	;volatile
	line	323
	
l234:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,89
	global	_get_usart

;; *************** function _get_usart *****************
;; Defined at:
;;		line 397 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1
	line	397
global __ptext12
__ptext12:	;psect for function _get_usart
psect	text12
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	397
	global	__size_of_get_usart
	__size_of_get_usart	equ	__end_of_get_usart-_get_usart
	
_get_usart:	
;incstack = 0
	opt	stack 14
; Regs used in _get_usart: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	418
	
l1268:	
;main.c: 418: unsigned int i=0;
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	line	420
	
l1270:	
;main.c: 420: if(inRxData(0x80)==0x01)
	movlw	low(080h)
	fcall	_inRxData
	xorlw	01h&0ffh
	skipz
	goto	u961
	goto	u960
u961:
	goto	l1290
u960:
	line	423
	
l1272:	
;main.c: 421: {
;main.c: 423: for(i=0;i<6;i++)
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	
l1274:	
	movlw	0
	subwf	(get_usart@i+1),w
	movlw	06h
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u971
	goto	u970
u971:
	goto	l1278
u970:
	goto	l1284
	
l1276:	
	goto	l1284
	line	424
	
l269:	
	line	425
	
l1278:	
;main.c: 424: {
;main.c: 425: data[i] = getch();
	fcall	_getch
	movwf	(??_get_usart+0)+0
	movf	(get_usart@i),w
	addlw	low(_data|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_get_usart+0)+0,w
	movwf	indf1
	line	423
	
l1280:	
	movlw	01h
	addwf	(get_usart@i),f
	movlw	0
	addwfc	(get_usart@i+1),f
	
l1282:	
	movlw	0
	subwf	(get_usart@i+1),w
	movlw	06h
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u981
	goto	u980
u981:
	goto	l1278
u980:
	goto	l1284
	
l270:	
	line	427
	
l1284:	
;main.c: 426: }
;main.c: 427: if(inRxData((data[0]+data[1]+data[2]+data[3]+data[4]+data[5])&0x7f)==0x01)
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
	goto	u991
	goto	u990
u991:
	goto	l1290
u990:
	line	429
	
l1286:	
;main.c: 428: {
;main.c: 429: return 0x01;
	movlw	low(01h)
	goto	l272
	
l1288:	
	goto	l272
	line	430
	
l271:	
	line	431
;main.c: 430: }
;main.c: 431: }
	goto	l1290
	line	433
	
l268:	
	goto	l1290
	line	436
;main.c: 433: else
;main.c: 434: {
	
l273:	
	line	437
	
l1290:	
;main.c: 436: }
;main.c: 437: return 0x00;
	movlw	low(0)
	goto	l272
	
l1292:	
	line	438
	
l272:	
	return
	opt stack 0
GLOBAL	__end_of_get_usart
	__end_of_get_usart:
	signat	_get_usart,89
	global	_inRxData

;; *************** function _inRxData *****************
;; Defined at:
;;		line 367 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1
	line	367
global __ptext13
__ptext13:	;psect for function _inRxData
psect	text13
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	367
	global	__size_of_inRxData
	__size_of_inRxData	equ	__end_of_inRxData-_inRxData
	
_inRxData:	
;incstack = 0
	opt	stack 14
; Regs used in _inRxData: [wreg+status,2]
;inRxData@rxData stored from wreg
	movwf	(inRxData@rxData)
	line	369
	
l1240:	
;main.c: 369: unsigned int cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	370
;main.c: 370: unsigned int cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	goto	l1242
	line	371
;main.c: 371: while(1)
	
l255:	
	line	373
	
l1242:	
;main.c: 372: {
;main.c: 373: if(OERR )
	movlb 3	; select bank3
	btfss	(3305/8)^0180h,(3305)&7	;volatile
	goto	u911
	goto	u910
u911:
	goto	l256
u910:
	line	374
	
l1244:	
;main.c: 374: CREN=0;
	bcf	(3308/8)^0180h,(3308)&7	;volatile
	
l256:	
	line	375
;main.c: 375: CREN=1;
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	376
;main.c: 376: while(!RCIF)
	goto	l257
	
l258:	
	line	378
	
l1246:	
;main.c: 377: {
;main.c: 378: cnt1++;
	movlw	01h
	addwf	(inRxData@cnt1),f
	movlw	0
	addwfc	(inRxData@cnt1+1),f
	line	379
;main.c: 379: if(cnt1>=100)
	movlw	0
	subwf	(inRxData@cnt1+1),w
	movlw	064h
	skipnz
	subwf	(inRxData@cnt1),w
	skipc
	goto	u921
	goto	u920
u921:
	goto	l257
u920:
	line	381
	
l1248:	
;main.c: 380: {
;main.c: 381: cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	382
;main.c: 382: break;
	goto	l1250
	line	383
	
l259:	
	line	384
	
l257:	
	line	376
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u931
	goto	u930
u931:
	goto	l1246
u930:
	goto	l1250
	
l260:	
	line	385
	
l1250:	
;main.c: 383: }
;main.c: 384: }
;main.c: 385: if(RCREG==rxData)
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	xorwf	(inRxData@rxData),w
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1256
u940:
	line	386
	
l1252:	
;main.c: 386: return 0x01;
	movlw	low(01h)
	goto	l262
	
l1254:	
	goto	l262
	
l261:	
	line	387
	
l1256:	
;main.c: 387: cnt2++;
	movlw	01h
	addwf	(inRxData@cnt2),f
	movlw	0
	addwfc	(inRxData@cnt2+1),f
	line	388
;main.c: 388: if(cnt2>=10)
	movlw	0
	subwf	(inRxData@cnt2+1),w
	movlw	0Ah
	skipnz
	subwf	(inRxData@cnt2),w
	skipc
	goto	u951
	goto	u950
u951:
	goto	l1242
u950:
	line	390
	
l1258:	
;main.c: 389: {
;main.c: 390: cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	line	391
	
l1260:	
;main.c: 391: return 0x00;
	movlw	low(0)
	goto	l262
	
l1262:	
	goto	l262
	line	392
	
l263:	
	goto	l1242
	line	393
	
l264:	
	line	371
	goto	l1242
	
l265:	
	line	394
	
l262:	
	return
	opt stack 0
GLOBAL	__end_of_inRxData
	__end_of_inRxData:
	signat	_inRxData,4217
	global	_getch

;; *************** function _getch *****************
;; Defined at:
;;		line 345 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1
	line	345
global __ptext14
__ptext14:	;psect for function _getch
psect	text14
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	345
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
;incstack = 0
	opt	stack 14
; Regs used in _getch: [wreg+status,2]
	line	346
	
l1230:	
;main.c: 346: unsigned int cnt=0;
	clrf	(getch@cnt)
	clrf	(getch@cnt+1)
	line	347
;main.c: 347: while(!RCIF)
	goto	l245
	
l246:	
	line	349
	
l1232:	
;main.c: 348: {
;main.c: 349: cnt++;
	movlw	01h
	addwf	(getch@cnt),f
	movlw	0
	addwfc	(getch@cnt+1),f
	line	350
;main.c: 350: if(cnt>=1000)
	movlw	03h
	subwf	(getch@cnt+1),w
	movlw	0E8h
	skipnz
	subwf	(getch@cnt),w
	skipc
	goto	u891
	goto	u890
u891:
	goto	l245
u890:
	goto	l1236
	line	352
	
l1234:	
;main.c: 351: {
;main.c: 352: break;
	goto	l1236
	line	353
	
l247:	
	line	354
	
l245:	
	line	347
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u901
	goto	u900
u901:
	goto	l1232
u900:
	goto	l1236
	
l248:	
	line	355
	
l1236:	
;main.c: 353: }
;main.c: 354: }
;main.c: 355: return RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	goto	l249
	
l1238:	
	line	356
	
l249:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
	signat	_getch,89
	global	_emergency

;; *************** function _emergency *****************
;; Defined at:
;;		line 108 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
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
;;		_SetPWM3
;;		_SetPWM4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	108
global __ptext15
__ptext15:	;psect for function _emergency
psect	text15
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\main.c"
	line	108
	global	__size_of_emergency
	__size_of_emergency	equ	__end_of_emergency-_emergency
	
_emergency:	
;incstack = 0
	opt	stack 14
; Regs used in _emergency: [wreg+status,2+status,0+pclath+cstack]
	line	109
	
l1294:	
;main.c: 109: if((data[0]&0x01)!=0){
	movlb 0	; select bank0
	btfss	(_data),(0)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l146
u1000:
	line	110
	
l1296:	
;main.c: 110: SetPWM1(0);
	movlw	0
	movwf	(SetPWM1@dutycycle)
	movwf	(SetPWM1@dutycycle+1)
	fcall	_SetPWM1
	line	111
;main.c: 111: SetPWM2(0);
	movlw	0
	movwf	(SetPWM2@dutycycle)
	movwf	(SetPWM2@dutycycle+1)
	fcall	_SetPWM2
	line	112
;main.c: 112: SetPWM3(0);
	movlw	0
	movwf	(SetPWM3@dutycycle)
	movwf	(SetPWM3@dutycycle+1)
	fcall	_SetPWM3
	line	113
;main.c: 113: SetPWM4(0);
	movlw	0
	movwf	(SetPWM4@dutycycle)
	movwf	(SetPWM4@dutycycle+1)
	fcall	_SetPWM4
	goto	l146
	line	114
	
l145:	
	line	115
	
l146:	
	return
	opt stack 0
GLOBAL	__end_of_emergency
	__end_of_emergency:
	signat	_emergency,89
	global	_SetPWM4

;; *************** function _SetPWM4 *****************
;; Defined at:
;;		line 80 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
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
;;		_emergency
;;		_loading
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	80
global __ptext16
__ptext16:	;psect for function _SetPWM4
psect	text16
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	80
	global	__size_of_SetPWM4
	__size_of_SetPWM4	equ	__end_of_SetPWM4-_SetPWM4
	
_SetPWM4:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM4: [wreg+status,2+status,0]
	line	83
	
l1228:	
;pwm.c: 83: CCPR2L = dutycycle >> 2;
	movf	(SetPWM4@dutycycle+1),w
	movwf	(??_SetPWM4+0)+0+1
	movf	(SetPWM4@dutycycle),w
	movwf	(??_SetPWM4+0)+0
	lsrf	(??_SetPWM4+0)+1,f
	rrf	(??_SetPWM4+0)+0,f
	lsrf	(??_SetPWM4+0)+1,f
	rrf	(??_SetPWM4+0)+0,f
	movf	0+(??_SetPWM4+0)+0,w
	movlb 5	; select bank5
	movwf	(664)^0280h	;volatile
	line	85
;pwm.c: 85: CCP2CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM4@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM4+0)+0
	movlw	(04h)-1
u885:
	lslf	(??_SetPWM4+0)+0,f
	addlw	-1
	skipz
	goto	u885
	lslf	(??_SetPWM4+0)+0,w
	movwf	(??_SetPWM4+1)+0
	movf	(??_SetPWM4+1)+0,w
	iorwf	(666)^0280h,f	;volatile
	line	86
	
l336:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM4
	__end_of_SetPWM4:
	signat	_SetPWM4,4217
	global	_SetPWM3

;; *************** function _SetPWM3 *****************
;; Defined at:
;;		line 73 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
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
;;		_emergency
;;		_rotation
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	73
global __ptext17
__ptext17:	;psect for function _SetPWM3
psect	text17
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	73
	global	__size_of_SetPWM3
	__size_of_SetPWM3	equ	__end_of_SetPWM3-_SetPWM3
	
_SetPWM3:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM3: [wreg+status,2+status,0]
	line	76
	
l1226:	
;pwm.c: 76: CCPR1L = dutycycle >> 2;
	movf	(SetPWM3@dutycycle+1),w
	movwf	(??_SetPWM3+0)+0+1
	movf	(SetPWM3@dutycycle),w
	movwf	(??_SetPWM3+0)+0
	lsrf	(??_SetPWM3+0)+1,f
	rrf	(??_SetPWM3+0)+0,f
	lsrf	(??_SetPWM3+0)+1,f
	rrf	(??_SetPWM3+0)+0,f
	movf	0+(??_SetPWM3+0)+0,w
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	78
;pwm.c: 78: CCP1CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM3@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM3+0)+0
	movlw	(04h)-1
u875:
	lslf	(??_SetPWM3+0)+0,f
	addlw	-1
	skipz
	goto	u875
	lslf	(??_SetPWM3+0)+0,w
	movwf	(??_SetPWM3+1)+0
	movf	(??_SetPWM3+1)+0,w
	iorwf	(659)^0280h,f	;volatile
	line	79
	
l333:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM3
	__end_of_SetPWM3:
	signat	_SetPWM3,4217
	global	_SetPWM2

;; *************** function _SetPWM2 *****************
;; Defined at:
;;		line 66 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
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
;;		_emergency
;;		_movetire2
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	66
global __ptext18
__ptext18:	;psect for function _SetPWM2
psect	text18
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	66
	global	__size_of_SetPWM2
	__size_of_SetPWM2	equ	__end_of_SetPWM2-_SetPWM2
	
_SetPWM2:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM2: [wreg+status,2+status,0]
	line	69
	
l1224:	
;pwm.c: 69: CCPR4L = dutycycle >> 2;
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
	line	71
;pwm.c: 71: CCP4CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM2@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM2+0)+0
	movlw	(04h)-1
u865:
	lslf	(??_SetPWM2+0)+0,f
	addlw	-1
	skipz
	goto	u865
	lslf	(??_SetPWM2+0)+0,w
	movwf	(??_SetPWM2+1)+0
	movf	(??_SetPWM2+1)+0,w
	iorwf	(794)^0300h,f	;volatile
	line	72
	
l330:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM2
	__end_of_SetPWM2:
	signat	_SetPWM2,4217
	global	_SetPWM1

;; *************** function _SetPWM1 *****************
;; Defined at:
;;		line 59 in file "C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
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
;;		_emergency
;;		_movetire1
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	59
global __ptext19
__ptext19:	;psect for function _SetPWM1
psect	text19
	file	"C:\Users\yuya\Desktop\pic\16f1827\moter\pwm.c"
	line	59
	global	__size_of_SetPWM1
	__size_of_SetPWM1	equ	__end_of_SetPWM1-_SetPWM1
	
_SetPWM1:	
;incstack = 0
	opt	stack 14
; Regs used in _SetPWM1: [wreg+status,2+status,0]
	line	62
	
l1222:	
;pwm.c: 62: CCPR3L = dutycycle >> 2;
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
	line	64
;pwm.c: 64: CCP3CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM1@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM1+0)+0
	movlw	(04h)-1
u855:
	lslf	(??_SetPWM1+0)+0,f
	addlw	-1
	skipz
	goto	u855
	lslf	(??_SetPWM1+0)+0,w
	movwf	(??_SetPWM1+1)+0
	movf	(??_SetPWM1+1)+0,w
	iorwf	(787)^0300h,f	;volatile
	line	65
	
l327:	
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
