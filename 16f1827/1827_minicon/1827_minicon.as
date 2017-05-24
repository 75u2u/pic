opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 12136"

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
# 7 "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
psect config,class=CONFIG,delta=2 ;# 
# 7 "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
dw 0xFFFC & 0xFFE7 & 0xFFDF & 0xFFBF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFFF & 0xEFFF & 0xDFFF ;# 
# 10 "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
psect config,class=CONFIG,delta=2 ;# 
# 10 "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
dw 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xDFFF ;# 
	FNCALL	_main,_init
	FNCALL	_main,_init_pwm
	FNCALL	_main,_get_usart
	FNCALL	_main,_SetPWM1
	FNCALL	_main,_SetPWM2
	FNCALL	_init_pwm,_OpenPWM1
	FNCALL	_init_pwm,_OpenPWM2
	FNCALL	_init_pwm,_SetPWM1
	FNCALL	_init_pwm,_SetPWM2
	FNCALL	_get_usart,_inRxData
	FNCALL	_get_usart,_getch
	FNROOT	_main
	global	_pwmdirleft
	global	_pwmdirright
	global	_data
	global	_addata
	global	_pwmtireleft
	global	_pwmtireright
	global	_transam
	global	_contORE
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
	global	_LATB2
_LATB2	set	0x86A
	global	_LATB3
_LATB3	set	0x86B
	global	_LATB6
_LATB6	set	0x86E
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
psect	text250,local,class=CODE,delta=2,merge=1
global __ptext250
__ptext250:
	file	"1827_minicon.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_pwmdirleft:
       ds      2

_pwmdirright:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_data:
       ds      6

_addata:
       ds      2

_pwmtireleft:
       ds      2

_pwmtireright:
       ds      2

_transam:
       ds      2

_contORE:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
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
	movlw	0Fh
	fcall	clear_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	?_init_pwm
?_init_pwm:	; 0 bytes @ 0x0
	global	?_SetPWM1
?_SetPWM1:	; 0 bytes @ 0x0
	global	?_SetPWM2
?_SetPWM2:	; 0 bytes @ 0x0
	global	?_OpenPWM1
?_OpenPWM1:	; 0 bytes @ 0x0
	global	??_OpenPWM1
??_OpenPWM1:	; 0 bytes @ 0x0
	global	?_OpenPWM2
?_OpenPWM2:	; 0 bytes @ 0x0
	global	??_OpenPWM2
??_OpenPWM2:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	??_inRxData
??_inRxData:	; 0 bytes @ 0x0
	global	?_get_usart
?_get_usart:	; 1 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?_inRxData
?_inRxData:	; 1 bytes @ 0x0
	global	inRxData@rxData
inRxData@rxData:	; 1 bytes @ 0x0
	global	getch@cnt
getch@cnt:	; 2 bytes @ 0x0
	global	SetPWM1@dutycycle
SetPWM1@dutycycle:	; 2 bytes @ 0x0
	global	SetPWM2@dutycycle
SetPWM2@dutycycle:	; 2 bytes @ 0x0
	ds	1
	global	OpenPWM1@period
OpenPWM1@period:	; 1 bytes @ 0x1
	global	OpenPWM2@period
OpenPWM2@period:	; 1 bytes @ 0x1
	global	inRxData@cnt1
inRxData@cnt1:	; 2 bytes @ 0x1
	ds	1
	global	??_SetPWM1
??_SetPWM1:	; 0 bytes @ 0x2
	global	??_SetPWM2
??_SetPWM2:	; 0 bytes @ 0x2
	ds	1
	global	inRxData@cnt2
inRxData@cnt2:	; 2 bytes @ 0x3
	ds	1
	global	??_init_pwm
??_init_pwm:	; 0 bytes @ 0x4
	ds	1
	global	??_get_usart
??_get_usart:	; 0 bytes @ 0x5
	ds	1
	global	get_usart@i
get_usart@i:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
	global	main@cntError
main@cntError:	; 2 bytes @ 0x8
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         19
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      14
;!    BANK0            80      0      15
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
;!    _init_pwm->_SetPWM1
;!    _init_pwm->_SetPWM2
;!    _get_usart->_inRxData
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
;! (0) _main                                                 2     2      0     411
;!                                              8 COMMON     2     2      0
;!                               _init
;!                           _init_pwm
;!                          _get_usart
;!                            _SetPWM1
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (1) _init_pwm                                             0     0      0     132
;!                           _OpenPWM1
;!                           _OpenPWM2
;!                            _SetPWM1
;!                            _SetPWM2
;! ---------------------------------------------------------------------------------
;! (1) _SetPWM1                                              4     2      2      44
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _get_usart                                            3     3      0     165
;!                                              5 COMMON     3     3      0
;!                           _inRxData
;!                              _getch
;! ---------------------------------------------------------------------------------
;! (1) _SetPWM2                                              4     2      2      44
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _getch                                                2     2      0      24
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM1                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _inRxData                                             5     5      0      72
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _OpenPWM2                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!   _init_pwm
;!     _OpenPWM1
;!     _OpenPWM2
;!     _SetPWM1
;!     _SetPWM2
;!   _get_usart
;!     _inRxData
;!     _getch
;!   _SetPWM1
;!   _SetPWM2
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
;!STACK                0      0       2       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      1D       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      0       F       6       18.8%
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
;!DATA                 0      0      1F      15        0.0%
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
;;		line 62 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cntError        2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
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
;;		_init
;;		_init_pwm
;;		_get_usart
;;		_SetPWM1
;;		_SetPWM2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
global __pmaintext
__pmaintext:
psect	maintext
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 14
; Regs used in _main: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	63
	
l1078:	
;main.c: 63: init();
	fcall	_init
	line	64
;main.c: 64: init_pwm();
	fcall	_init_pwm
	line	65
	
l1080:	
;main.c: 65: unsigned int cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1082
	line	66
;main.c: 66: while(1)
	
l102:	
	line	68
	
l1082:	
;main.c: 67: {
;main.c: 68: if(get_usart()==0x01){
	fcall	_get_usart
	xorlw	01h&0ffh
	skipz
	goto	u801
	goto	u800
u801:
	goto	l1222
u800:
	line	70
	
l1084:	
;main.c: 70: cntError = 0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	line	72
	
l1086:	
;main.c: 72: LATB6=0;
	movlb 2	; select bank2
	bcf	(2158/8)^0100h,(2158)&7	;volatile
	line	73
	
l1088:	
;main.c: 73: SetPWM1(0);
	movlw	low(0)
	movwf	(?_SetPWM1)
	movlw	high(0)
	movwf	((?_SetPWM1))+1
	fcall	_SetPWM1
	line	74
	
l1090:	
;main.c: 74: SetPWM2(0);
	movlw	low(0)
	movwf	(?_SetPWM2)
	movlw	high(0)
	movwf	((?_SetPWM2))+1
	fcall	_SetPWM2
	line	76
	
l1092:	
;main.c: 76: if((data[0]&0x08)!=0){
	movlb 0	; select bank0
	btfss	(_data),(3)&7
	goto	u811
	goto	u810
u811:
	goto	l104
u810:
	line	78
	
l1094:	
;main.c: 78: for(pwmdirright=0; pwmdirright<=300; pwmdirright++){
	clrf	(_pwmdirright)
	clrf	(_pwmdirright+1)
	
l1096:	
	movf	(_pwmdirright+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u825
	movlw	low(012Dh)
	subwf	(_pwmdirright),w
u825:

	skipc
	goto	u821
	goto	u820
u821:
	goto	l105
u820:
	goto	l1120
	
l1098:	
	goto	l1120
	
l105:	
	line	79
;main.c: 79: LATB2=1; SetPWM2(pwmdirright);
	movlb 2	; select bank2
	bsf	(2154/8)^0100h,(2154)&7	;volatile
	
l1100:	
	movf	(_pwmdirright+1),w
	clrf	(?_SetPWM2+1)
	addwf	(?_SetPWM2+1)
	movf	(_pwmdirright),w
	clrf	(?_SetPWM2)
	addwf	(?_SetPWM2)

	fcall	_SetPWM2
	line	78
	
l1102:	
	movlw	low(01h)
	addwf	(_pwmdirright),f
	movlw	high(01h)
	addwfc	(_pwmdirright+1),f
	
l1104:	
	movf	(_pwmdirright+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u835
	movlw	low(012Dh)
	subwf	(_pwmdirright),w
u835:

	skipc
	goto	u831
	goto	u830
u831:
	goto	l105
u830:
	goto	l1120
	
l106:	
	line	81
;main.c: 80: }
;main.c: 81: }
	goto	l1120
	line	82
	
l104:	
;main.c: 82: else if((data[0]&0x02)!=0){
	btfss	(_data),(1)&7
	goto	u841
	goto	u840
u841:
	goto	l1118
u840:
	line	84
	
l1106:	
;main.c: 84: for(pwmdirleft=0; pwmdirleft<=300; pwmdirleft++){
	clrf	(_pwmdirleft)
	clrf	(_pwmdirleft+1)
	
l1108:	
	movf	(_pwmdirleft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u855
	movlw	low(012Dh)
	subwf	(_pwmdirleft),w
u855:

	skipc
	goto	u851
	goto	u850
u851:
	goto	l109
u850:
	goto	l1120
	
l1110:	
	goto	l1120
	
l109:	
	line	85
;main.c: 85: LATB2=0; SetPWM2(pwmdirleft);
	movlb 2	; select bank2
	bcf	(2154/8)^0100h,(2154)&7	;volatile
	
l1112:	
	movf	(_pwmdirleft+1),w
	clrf	(?_SetPWM2+1)
	addwf	(?_SetPWM2+1)
	movf	(_pwmdirleft),w
	clrf	(?_SetPWM2)
	addwf	(?_SetPWM2)

	fcall	_SetPWM2
	line	84
	
l1114:	
	movlw	low(01h)
	addwf	(_pwmdirleft),f
	movlw	high(01h)
	addwfc	(_pwmdirleft+1),f
	
l1116:	
	movf	(_pwmdirleft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u865
	movlw	low(012Dh)
	subwf	(_pwmdirleft),w
u865:

	skipc
	goto	u861
	goto	u860
u861:
	goto	l109
u860:
	goto	l1120
	
l110:	
	line	87
;main.c: 86: }
;main.c: 87: }
	goto	l1120
	line	88
	
l108:	
	line	89
	
l1118:	
;main.c: 88: else{
;main.c: 89: pwmdirright = pwmdirright - 1;
	movf	(_pwmdirright),w
	addlw	low(-1)
	movwf	(_pwmdirright)
	movlw	high(-1)
	addwfc	(_pwmdirright+1),w
	movwf	1+(_pwmdirright)
	line	90
;main.c: 90: pwmdirleft = pwmdirleft - 1;
	movf	(_pwmdirleft),w
	addlw	low(-1)
	movwf	(_pwmdirleft)
	movlw	high(-1)
	addwfc	(_pwmdirleft+1),w
	movwf	1+(_pwmdirleft)
	goto	l1120
	line	91
	
l111:	
	goto	l1120
	
l107:	
	line	93
	
l1120:	
;main.c: 91: }
;main.c: 93: if((data[1]&0x40)!=0){
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(6)&7
	goto	u871
	goto	u870
u871:
	goto	l112
u870:
	line	94
	
l1122:	
;main.c: 94: LATB6=1;
	movlb 2	; select bank2
	bsf	(2158/8)^0100h,(2158)&7	;volatile
	line	95
	
l112:	
	line	97
;main.c: 95: }
;main.c: 97: if((data[1]&0x10)!=0){
	movlb 0	; select bank0
	btfss	0+(_data)+01h,(4)&7
	goto	u881
	goto	u880
u881:
	goto	l1126
u880:
	line	98
	
l1124:	
;main.c: 98: SetPWM1(0);
	movlw	low(0)
	movwf	(?_SetPWM1)
	movlw	high(0)
	movwf	((?_SetPWM1))+1
	fcall	_SetPWM1
	line	99
;main.c: 99: SetPWM2(0);
	movlw	low(0)
	movwf	(?_SetPWM2)
	movlw	high(0)
	movwf	((?_SetPWM2))+1
	fcall	_SetPWM2
	goto	l1126
	line	100
	
l113:	
	line	103
	
l1126:	
;main.c: 100: }
;main.c: 102: if(data[5] <0x64 && data[5] > 0x24 && data[4] == 0x7f
;main.c: 103: ||data[3] <0x64 && data[3] > 0x24 && data[2] == 0x7f){
	movlw	(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+05h,w
	skipnc
	goto	u891
	goto	u890
u891:
	goto	l1132
u890:
	
l1128:	
	movlw	(025h)
	subwf	0+(_data)+05h,w
	skipc
	goto	u901
	goto	u900
u901:
	goto	l1132
u900:
	
l1130:	
	movf	0+(_data)+04h,w
	xorlw	07Fh&0ffh
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l1138
u910:
	goto	l1132
	
l118:	
	
l1132:	
	movlw	(064h)
	subwf	0+(_data)+03h,w
	skipnc
	goto	u921
	goto	u920
u921:
	goto	l1150
u920:
	
l1134:	
	movlw	(025h)
	subwf	0+(_data)+03h,w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l1150
u930:
	
l1136:	
	movf	0+(_data)+02h,w
	xorlw	07Fh&0ffh
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1150
u940:
	goto	l1138
	
l116:	
	line	105
	
l1138:	
;main.c: 105: for(pwmtireright=0; pwmtireright<=240; pwmtireright++){
	clrf	(_pwmtireright)
	clrf	(_pwmtireright+1)
	
l1140:	
	movf	(_pwmtireright+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u955
	movlw	low(0F1h)
	subwf	(_pwmtireright),w
u955:

	skipc
	goto	u951
	goto	u950
u951:
	goto	l119
u950:
	goto	l1176
	
l1142:	
	goto	l1176
	
l119:	
	line	106
;main.c: 106: LATB3=1; SetPWM1(pwmtireright);
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	
l1144:	
	movlb 0	; select bank0
	movf	(_pwmtireright+1),w
	clrf	(?_SetPWM1+1)
	addwf	(?_SetPWM1+1)
	movf	(_pwmtireright),w
	clrf	(?_SetPWM1)
	addwf	(?_SetPWM1)

	fcall	_SetPWM1
	line	105
	
l1146:	
	movlw	low(01h)
	movlb 0	; select bank0
	addwf	(_pwmtireright),f
	movlw	high(01h)
	addwfc	(_pwmtireright+1),f
	
l1148:	
	movf	(_pwmtireright+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u965
	movlw	low(0F1h)
	subwf	(_pwmtireright),w
u965:

	skipc
	goto	u961
	goto	u960
u961:
	goto	l119
u960:
	goto	l1176
	
l120:	
	line	108
;main.c: 107: }
;main.c: 108: }
	goto	l1176
	line	109
	
l114:	
	line	110
	
l1150:	
;main.c: 109: else if(data[5] <0x64 && data[5] > 0x24 && data[4] == 0x00
;main.c: 110: ||data[3] <0x64 && data[3] > 0x24 && data[2] == 0x00){
	movlw	(064h)
	movlb 0	; select bank0
	subwf	0+(_data)+05h,w
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l1156
u970:
	
l1152:	
	movlw	(025h)
	subwf	0+(_data)+05h,w
	skipc
	goto	u981
	goto	u980
u981:
	goto	l1156
u980:
	
l1154:	
	movf	0+(_data)+04h,w
	skipz
	goto	u990
	goto	l1162
u990:
	goto	l1156
	
l126:	
	
l1156:	
	movlw	(064h)
	subwf	0+(_data)+03h,w
	skipnc
	goto	u1001
	goto	u1000
u1001:
	goto	l1174
u1000:
	
l1158:	
	movlw	(025h)
	subwf	0+(_data)+03h,w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1174
u1010:
	
l1160:	
	movf	0+(_data)+02h,f
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1174
u1020:
	goto	l1162
	
l124:	
	line	112
	
l1162:	
;main.c: 112: for(pwmtireleft=0; pwmtireleft<=240; pwmtireleft++){
	clrf	(_pwmtireleft)
	clrf	(_pwmtireleft+1)
	
l1164:	
	movf	(_pwmtireleft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1035
	movlw	low(0F1h)
	subwf	(_pwmtireleft),w
u1035:

	skipc
	goto	u1031
	goto	u1030
u1031:
	goto	l127
u1030:
	goto	l1176
	
l1166:	
	goto	l1176
	
l127:	
	line	113
;main.c: 113: LATB3=0; SetPWM1(pwmtireleft);
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7	;volatile
	
l1168:	
	movlb 0	; select bank0
	movf	(_pwmtireleft+1),w
	clrf	(?_SetPWM1+1)
	addwf	(?_SetPWM1+1)
	movf	(_pwmtireleft),w
	clrf	(?_SetPWM1)
	addwf	(?_SetPWM1)

	fcall	_SetPWM1
	line	112
	
l1170:	
	movlw	low(01h)
	movlb 0	; select bank0
	addwf	(_pwmtireleft),f
	movlw	high(01h)
	addwfc	(_pwmtireleft+1),f
	
l1172:	
	movf	(_pwmtireleft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1045
	movlw	low(0F1h)
	subwf	(_pwmtireleft),w
u1045:

	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l127
u1040:
	goto	l1176
	
l128:	
	line	115
;main.c: 114: }
;main.c: 115: }
	goto	l1176
	line	116
	
l122:	
	line	117
	
l1174:	
;main.c: 116: else{
;main.c: 117: pwmtireright = pwmtireright - 1;
	movlb 0	; select bank0
	movf	(_pwmtireright),w
	addlw	low(-1)
	movwf	(_pwmtireright)
	movlw	high(-1)
	addwfc	(_pwmtireright+1),w
	movwf	1+(_pwmtireright)
	line	118
;main.c: 118: pwmtireleft = pwmtireleft - 1;
	movf	(_pwmtireleft),w
	addlw	low(-1)
	movwf	(_pwmtireleft)
	movlw	high(-1)
	addwfc	(_pwmtireleft+1),w
	movwf	1+(_pwmtireleft)
	goto	l1176
	line	119
	
l129:	
	goto	l1176
	
l121:	
	line	123
	
l1176:	
;main.c: 119: }
;main.c: 121: if((transam==1)
;main.c: 122: &&((data[5] <0x64 && data[5] > 0x24 && data[4] == 0x7f)
;main.c: 123: ||(data[3] <0x64 && data[3] > 0x24 && data[2] == 0x7f))){
	movlw	01h
	movlb 0	; select bank0
	xorwf	(_transam),w
	iorwf	(_transam+1),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l1192
u1050:
	
l1178:	
	movlw	(064h)
	subwf	0+(_data)+05h,w
	skipnc
	goto	u1061
	goto	u1060
u1061:
	goto	l1184
u1060:
	
l1180:	
	movlw	(025h)
	subwf	0+(_data)+05h,w
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1184
u1070:
	
l1182:	
	movf	0+(_data)+04h,w
	xorlw	07Fh&0ffh
	skipnz
	goto	u1081
	goto	u1080
u1081:
	goto	l132
u1080:
	goto	l1184
	
l134:	
	
l1184:	
	movlw	(064h)
	subwf	0+(_data)+03h,w
	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l1192
u1090:
	
l1186:	
	movlw	(025h)
	subwf	0+(_data)+03h,w
	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l1192
u1100:
	
l1188:	
	movf	0+(_data)+02h,w
	xorlw	07Fh&0ffh
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1192
u1110:
	
l132:	
	line	124
;main.c: 124: LATB3=1; SetPWM1(1023);
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7	;volatile
	
l1190:	
	movlw	low(03FFh)
	movwf	(?_SetPWM1)
	movlw	high(03FFh)
	movwf	((?_SetPWM1))+1
	fcall	_SetPWM1
	line	128
;main.c: 128: }
	goto	l1210
	line	129
	
l130:	
	line	131
	
l1192:	
;main.c: 129: else if((transam==1)
;main.c: 130: &&((data[5] <0x64 && data[5] > 0x24 && data[4] == 0x00)
;main.c: 131: ||(data[3] <0x64 && data[3] > 0x24 && data[2] == 0x00))){
	movlw	01h
	movlb 0	; select bank0
	xorwf	(_transam),w
	iorwf	(_transam+1),w
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l1208
u1120:
	
l1194:	
	movlw	(064h)
	subwf	0+(_data)+05h,w
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l1200
u1130:
	
l1196:	
	movlw	(025h)
	subwf	0+(_data)+05h,w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l1200
u1140:
	
l1198:	
	movf	0+(_data)+04h,w
	skipz
	goto	u1150
	goto	l138
u1150:
	goto	l1200
	
l140:	
	
l1200:	
	movlw	(064h)
	subwf	0+(_data)+03h,w
	skipnc
	goto	u1161
	goto	u1160
u1161:
	goto	l1208
u1160:
	
l1202:	
	movlw	(025h)
	subwf	0+(_data)+03h,w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l1208
u1170:
	
l1204:	
	movf	0+(_data)+02h,f
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l1208
u1180:
	
l138:	
	line	132
;main.c: 132: LATB3=0; SetPWM1(1023);
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7	;volatile
	
l1206:	
	movlw	low(03FFh)
	movwf	(?_SetPWM1)
	movlw	high(03FFh)
	movwf	((?_SetPWM1))+1
	fcall	_SetPWM1
	line	136
;main.c: 136: }
	goto	l1210
	line	137
	
l136:	
	line	138
	
l1208:	
;main.c: 137: else{
;main.c: 138: pwmdirright = pwmdirright - 1;
	movf	(_pwmdirright),w
	addlw	low(-1)
	movwf	(_pwmdirright)
	movlw	high(-1)
	addwfc	(_pwmdirright+1),w
	movwf	1+(_pwmdirright)
	line	139
;main.c: 139: pwmdirleft = pwmdirleft - 1;
	movf	(_pwmdirleft),w
	addlw	low(-1)
	movwf	(_pwmdirleft)
	movlw	high(-1)
	addwfc	(_pwmdirleft+1),w
	movwf	1+(_pwmdirleft)
	goto	l1210
	line	140
	
l141:	
	goto	l1210
	
l135:	
	line	142
	
l1210:	
;main.c: 140: }
;main.c: 142: if((data[0]&0x01) != 0 && transam==0){
	movlb 0	; select bank0
	btfss	(_data),(0)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l1216
u1190:
	
l1212:	
	movf	((_transam+1)),w
	iorwf	((_transam)),w
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l1216
u1200:
	line	143
	
l1214:	
;main.c: 143: transam=1;
	movlw	low(01h)
	movwf	(_transam)
	movlw	high(01h)
	movwf	((_transam))+1
	goto	l1216
	line	144
	
l142:	
	line	145
	
l1216:	
;main.c: 144: }
;main.c: 145: if((data[0]&0x01) != 0 && transam==1){
	btfss	(_data),(0)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l1082
u1210:
	
l1218:	
	movlw	01h
	xorwf	(_transam),w
	iorwf	(_transam+1),w
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l1082
u1220:
	line	146
	
l1220:	
;main.c: 146: transam=0;
	clrf	(_transam)
	clrf	(_transam+1)
	goto	l1082
	line	147
	
l143:	
	line	149
;main.c: 147: }
;main.c: 149: }
	goto	l1082
	line	151
	
l103:	
	line	152
	
l1222:	
;main.c: 151: else{
;main.c: 152: cntError++;
	movlw	low(01h)
	addwf	(main@cntError),f
	movlw	high(01h)
	addwfc	(main@cntError+1),f
	line	153
;main.c: 153: if(cntError>=10)
	movlw	high(0Ah)
	subwf	(main@cntError+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(main@cntError),w
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l1082
u1230:
	line	155
	
l1224:	
;main.c: 154: {
;main.c: 155: cntError=0;
	clrf	(main@cntError)
	clrf	(main@cntError+1)
	goto	l1082
	line	156
	
l145:	
	goto	l1082
	line	157
	
l144:	
	goto	l1082
	line	158
	
l146:	
	line	66
	goto	l1082
	
l147:	
	line	159
	
l148:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init_pwm

;; *************** function _init_pwm *****************
;; Defined at:
;;		line 4 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;;		_SetPWM1
;;		_SetPWM2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251,local,class=CODE,delta=2,merge=1
global __ptext251
__ptext251:
psect	text251
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
	line	4
	global	__size_of_init_pwm
	__size_of_init_pwm	equ	__end_of_init_pwm-_init_pwm
	
_init_pwm:	
	opt	stack 14
; Regs used in _init_pwm: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1048:	
;pwm.c: 23: T2CON |= 0b00000001;
	movlb 0	; select bank0
	bsf	(28)+(0/8),(0)&7	;volatile
	line	25
	
l1050:	
;pwm.c: 25: OpenPWM1(63);
	movlw	(03Fh)
	fcall	_OpenPWM1
	line	26
;pwm.c: 26: OpenPWM2(63);
	movlw	(03Fh)
	fcall	_OpenPWM2
	line	27
;pwm.c: 27: SetPWM1(0x3ff);
	movlw	low(03FFh)
	movwf	(?_SetPWM1)
	movlw	high(03FFh)
	movwf	((?_SetPWM1))+1
	fcall	_SetPWM1
	line	28
;pwm.c: 28: SetPWM2(0x3ff);
	movlw	low(03FFh)
	movwf	(?_SetPWM2)
	movlw	high(03FFh)
	movwf	((?_SetPWM2))+1
	fcall	_SetPWM2
	line	29
	
l213:	
	return
	opt stack 0
GLOBAL	__end_of_init_pwm
	__end_of_init_pwm:
	signat	_init_pwm,88
	global	_SetPWM1

;; *************** function _SetPWM1 *****************
;; Defined at:
;;		line 44 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
;; Parameters:    Size  Location     Type
;;  dutycycle       2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;;		_main
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text252,local,class=CODE,delta=2,merge=1
global __ptext252
__ptext252:
psect	text252
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
	line	44
	global	__size_of_SetPWM1
	__size_of_SetPWM1	equ	__end_of_SetPWM1-_SetPWM1
	
_SetPWM1:	
	opt	stack 15
; Regs used in _SetPWM1: [wreg+status,2+status,0]
	line	46
	
l994:	
;pwm.c: 46: CCPR3L = dutycycle >> 2;
	movf	(SetPWM1@dutycycle+1),w
	movwf	(??_SetPWM1+0)+0+1
	movf	(SetPWM1@dutycycle),w
	movwf	(??_SetPWM1+0)+0
	movlw	02h
u655:
	lsrf	(??_SetPWM1+0)+1,f
	rrf	(??_SetPWM1+0)+0,f
	decfsz	wreg,f
	goto	u655
	movf	0+(??_SetPWM1+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	48
;pwm.c: 48: CCP3CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM1@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM1+0)+0
	movlw	(04h)-1
u665:
	lslf	(??_SetPWM1+0)+0,f
	addlw	-1
	skipz
	goto	u665
	lslf	(??_SetPWM1+0)+0,w
	movwf	(??_SetPWM1+1)+0
	movf	(??_SetPWM1+1)+0,w
	iorwf	(787)^0300h,f	;volatile
	line	49
	
l222:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM1
	__end_of_SetPWM1:
	signat	_SetPWM1,4216
	global	_get_usart

;; *************** function _get_usart *****************
;; Defined at:
;;		line 247 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
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
;;		_inRxData
;;		_getch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text253,local,class=CODE,delta=2,merge=1
global __ptext253
__ptext253:
psect	text253
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
	line	247
	global	__size_of_get_usart
	__size_of_get_usart	equ	__end_of_get_usart-_get_usart
	
_get_usart:	
	opt	stack 14
; Regs used in _get_usart: [wreg+fsr1l-status,0+pclath+cstack]
	line	267
	
l1052:	
;main.c: 267: unsigned int i=0;
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	line	269
	
l1054:	
;main.c: 269: if(inRxData(0x80)==0x01)
	movlw	(080h)
	fcall	_inRxData
	xorlw	01h&0ffh
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1074
u760:
	line	272
	
l1056:	
;main.c: 270: {
;main.c: 272: for(i=0;i<6;i++)
	clrf	(get_usart@i)
	clrf	(get_usart@i+1)
	
l1058:	
	movlw	high(06h)
	subwf	(get_usart@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l1062
u770:
	goto	l1068
	
l1060:	
	goto	l1068
	line	273
	
l186:	
	line	274
	
l1062:	
;main.c: 273: {
;main.c: 274: data[i] = getch();
	fcall	_getch
	movwf	(??_get_usart+0)+0
	movf	(get_usart@i),w
	addlw	_data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_get_usart+0)+0,w
	movwf	indf1
	line	272
	
l1064:	
	movlw	low(01h)
	addwf	(get_usart@i),f
	movlw	high(01h)
	addwfc	(get_usart@i+1),f
	
l1066:	
	movlw	high(06h)
	subwf	(get_usart@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(get_usart@i),w
	skipc
	goto	u781
	goto	u780
u781:
	goto	l1062
u780:
	goto	l1068
	
l187:	
	line	276
	
l1068:	
;main.c: 275: }
;main.c: 276: if(inRxData((data[0]+data[1]+data[2]+data[3]+data[4]+data[5])&0x7f)==0x01)
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
	goto	u791
	goto	u790
u791:
	goto	l1074
u790:
	line	278
	
l1070:	
;main.c: 277: {
;main.c: 278: return 0x01;
	movlw	(01h)
	goto	l189
	
l1072:	
	goto	l189
	line	279
	
l188:	
	line	280
;main.c: 279: }
;main.c: 280: }
	goto	l1074
	line	282
	
l185:	
	goto	l1074
	line	285
;main.c: 282: else
;main.c: 283: {
	
l190:	
	line	286
	
l1074:	
;main.c: 285: }
;main.c: 286: return 0x00;
	movlw	(0)
	goto	l189
	
l1076:	
	line	287
	
l189:	
	return
	opt stack 0
GLOBAL	__end_of_get_usart
	__end_of_get_usart:
	signat	_get_usart,89
	global	_SetPWM2

;; *************** function _SetPWM2 *****************
;; Defined at:
;;		line 51 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
;; Parameters:    Size  Location     Type
;;  dutycycle       2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;;		_main
;;		_init_pwm
;; This function uses a non-reentrant model
;;
psect	text254,local,class=CODE,delta=2,merge=1
global __ptext254
__ptext254:
psect	text254
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
	line	51
	global	__size_of_SetPWM2
	__size_of_SetPWM2	equ	__end_of_SetPWM2-_SetPWM2
	
_SetPWM2:	
	opt	stack 15
; Regs used in _SetPWM2: [wreg+status,2+status,0]
	line	53
	
l996:	
;pwm.c: 53: CCPR4L = dutycycle >> 2;
	movf	(SetPWM2@dutycycle+1),w
	movwf	(??_SetPWM2+0)+0+1
	movf	(SetPWM2@dutycycle),w
	movwf	(??_SetPWM2+0)+0
	movlw	02h
u675:
	lsrf	(??_SetPWM2+0)+1,f
	rrf	(??_SetPWM2+0)+0,f
	decfsz	wreg,f
	goto	u675
	movf	0+(??_SetPWM2+0)+0,w
	movlb 6	; select bank6
	movwf	(792)^0300h	;volatile
	line	55
;pwm.c: 55: CCP4CON |= (dutycycle & 0x0003) << 4;
	movf	(SetPWM2@dutycycle),w
	andlw	03h
	movwf	(??_SetPWM2+0)+0
	movlw	(04h)-1
u685:
	lslf	(??_SetPWM2+0)+0,f
	addlw	-1
	skipz
	goto	u685
	lslf	(??_SetPWM2+0)+0,w
	movwf	(??_SetPWM2+1)+0
	movf	(??_SetPWM2+1)+0,w
	iorwf	(794)^0300h,f	;volatile
	line	56
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM2
	__end_of_SetPWM2:
	signat	_SetPWM2,4216
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 161 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text255,local,class=CODE,delta=2,merge=1
global __ptext255
__ptext255:
psect	text255
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
	line	161
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 15
; Regs used in _init: [wreg+status,2]
	line	163
	
l968:	
;main.c: 163: INTCON=0;
	clrf	(11)	;volatile
	line	164
	
l970:	
;main.c: 164: TRISB1 = 1; TRISB2 = 1; SPBRG = ((int)(32000000L/(16UL * 115200) -1)); RCSTA = (0|0x90); TXSTA = (0x4|0|0x20);
	movlb 1	; select bank1
	bsf	(1129/8)^080h,(1129)&7	;volatile
	
l972:	
	bsf	(1130/8)^080h,(1130)&7	;volatile
	
l974:	
	movlw	(010h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	
l976:	
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	
l978:	
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	165
	
l980:	
;main.c: 165: OSCCON = 0b01110000;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	166
	
l982:	
;main.c: 166: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	167
	
l984:	
;main.c: 167: C1ON = 0;
	movlb 2	; select bank2
	bcf	(2191/8)^0100h,(2191)&7	;volatile
	line	168
;main.c: 168: ANSELA = 0b00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	169
;main.c: 169: TRISA = 0b00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	170
;main.c: 170: ANSELB = 0b00000000;
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	171
	
l986:	
;main.c: 171: TRISB = 0b00000010;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	172
	
l988:	
;main.c: 172: TXCKSEL = 1;
	movlb 2	; select bank2
	bsf	(2288/8)^0100h,(2288)&7	;volatile
	line	173
	
l990:	
;main.c: 173: RXDTSEL = 0;
	bcf	(2287/8)^0100h,(2287)&7	;volatile
	line	175
	
l992:	
;main.c: 175: T2CON |= 0b00000001;
	movlb 0	; select bank0
	bsf	(28)+(0/8),(0)&7	;volatile
	line	176
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_getch

;; *************** function _getch *****************
;; Defined at:
;;		line 198 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
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
psect	text256,local,class=CODE,delta=2,merge=1
global __ptext256
__ptext256:
psect	text256
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
	line	198
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 14
; Regs used in _getch: [wreg+status,2]
	line	199
	
l998:	
;main.c: 199: unsigned int cnt=0;
	clrf	(getch@cnt)
	clrf	(getch@cnt+1)
	line	200
;main.c: 200: while(!RCIF)
	goto	l162
	
l163:	
	line	202
	
l1000:	
;main.c: 201: {
;main.c: 202: cnt++;
	movlw	low(01h)
	addwf	(getch@cnt),f
	movlw	high(01h)
	addwfc	(getch@cnt+1),f
	line	203
;main.c: 203: if(cnt>=1000)
	movlw	high(03E8h)
	subwf	(getch@cnt+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(getch@cnt),w
	skipc
	goto	u691
	goto	u690
u691:
	goto	l162
u690:
	goto	l1004
	line	205
	
l1002:	
;main.c: 204: {
;main.c: 205: break;
	goto	l1004
	line	206
	
l164:	
	line	207
	
l162:	
	line	200
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u701
	goto	u700
u701:
	goto	l1000
u700:
	goto	l1004
	
l165:	
	line	208
	
l1004:	
;main.c: 206: }
;main.c: 207: }
;main.c: 208: return RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	goto	l166
	
l1006:	
	line	209
	
l166:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
	signat	_getch,89
	global	_OpenPWM1

;; *************** function _OpenPWM1 *****************
;; Defined at:
;;		line 32 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text257,local,class=CODE,delta=2,merge=1
global __ptext257
__ptext257:
psect	text257
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
	line	32
	global	__size_of_OpenPWM1
	__size_of_OpenPWM1	equ	__end_of_OpenPWM1-_OpenPWM1
	
_OpenPWM1:	
	opt	stack 14
; Regs used in _OpenPWM1: [wreg+status,2+status,0]
;OpenPWM1@period stored from wreg
	movwf	(OpenPWM1@period)
	line	33
	
l1036:	
;pwm.c: 33: CCP3CON |= 0b00001100;
	movlw	(0Ch)
	movwf	(??_OpenPWM1+0)+0
	movf	(??_OpenPWM1+0)+0,w
	movlb 6	; select bank6
	iorwf	(787)^0300h,f	;volatile
	line	34
	
l1038:	
;pwm.c: 34: PR2 = period;
	movf	(OpenPWM1@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	35
	
l1040:	
;pwm.c: 35: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	36
	
l216:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM1
	__end_of_OpenPWM1:
	signat	_OpenPWM1,4216
	global	_inRxData

;; *************** function _inRxData *****************
;; Defined at:
;;		line 219 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
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
psect	text258,local,class=CODE,delta=2,merge=1
global __ptext258
__ptext258:
psect	text258
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\main.c"
	line	219
	global	__size_of_inRxData
	__size_of_inRxData	equ	__end_of_inRxData-_inRxData
	
_inRxData:	
	opt	stack 14
; Regs used in _inRxData: [wreg+status,2]
;inRxData@rxData stored from wreg
	movwf	(inRxData@rxData)
	line	220
	
l1012:	
;main.c: 220: unsigned int cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	221
;main.c: 221: unsigned int cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	goto	l1014
	line	222
;main.c: 222: while(1)
	
l172:	
	line	224
	
l1014:	
;main.c: 223: {
;main.c: 224: if(OERR )
	movlb 3	; select bank3
	btfss	(3305/8)^0180h,(3305)&7	;volatile
	goto	u711
	goto	u710
u711:
	goto	l173
u710:
	line	225
	
l1016:	
;main.c: 225: CREN=0;
	bcf	(3308/8)^0180h,(3308)&7	;volatile
	
l173:	
	line	226
;main.c: 226: CREN=1;
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	227
;main.c: 227: while(!RCIF)
	goto	l174
	
l175:	
	line	229
	
l1018:	
;main.c: 228: {
;main.c: 229: cnt1++;
	movlw	low(01h)
	addwf	(inRxData@cnt1),f
	movlw	high(01h)
	addwfc	(inRxData@cnt1+1),f
	line	230
;main.c: 230: if(cnt1>=100)
	movlw	high(064h)
	subwf	(inRxData@cnt1+1),w
	movlw	low(064h)
	skipnz
	subwf	(inRxData@cnt1),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l174
u720:
	line	232
	
l1020:	
;main.c: 231: {
;main.c: 232: cnt1=0;
	clrf	(inRxData@cnt1)
	clrf	(inRxData@cnt1+1)
	line	233
;main.c: 233: break;
	goto	l1022
	line	234
	
l176:	
	line	235
	
l174:	
	line	227
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u731
	goto	u730
u731:
	goto	l1018
u730:
	goto	l1022
	
l177:	
	line	236
	
l1022:	
;main.c: 234: }
;main.c: 235: }
;main.c: 236: if(RCREG==rxData)
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	xorwf	(inRxData@rxData),w
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1028
u740:
	line	237
	
l1024:	
;main.c: 237: return 0x01;
	movlw	(01h)
	goto	l179
	
l1026:	
	goto	l179
	
l178:	
	line	238
	
l1028:	
;main.c: 238: cnt2++;
	movlw	low(01h)
	addwf	(inRxData@cnt2),f
	movlw	high(01h)
	addwfc	(inRxData@cnt2+1),f
	line	239
;main.c: 239: if(cnt2>=10)
	movlw	high(0Ah)
	subwf	(inRxData@cnt2+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(inRxData@cnt2),w
	skipc
	goto	u751
	goto	u750
u751:
	goto	l1014
u750:
	line	241
	
l1030:	
;main.c: 240: {
;main.c: 241: cnt2=0;
	clrf	(inRxData@cnt2)
	clrf	(inRxData@cnt2+1)
	line	242
	
l1032:	
;main.c: 242: return 0x00;
	movlw	(0)
	goto	l179
	
l1034:	
	goto	l179
	line	243
	
l180:	
	goto	l1014
	line	244
	
l181:	
	line	222
	goto	l1014
	
l182:	
	line	245
	
l179:	
	return
	opt stack 0
GLOBAL	__end_of_inRxData
	__end_of_inRxData:
	signat	_inRxData,4217
	global	_OpenPWM2

;; *************** function _OpenPWM2 *****************
;; Defined at:
;;		line 38 in file "C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
;; Parameters:    Size  Location     Type
;;  period          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text259,local,class=CODE,delta=2,merge=1
global __ptext259
__ptext259:
psect	text259
	file	"C:\Users\yuya\Desktop\ROBOCON\pic program\PIC_16F1827\1827_minicon\pwm.c"
	line	38
	global	__size_of_OpenPWM2
	__size_of_OpenPWM2	equ	__end_of_OpenPWM2-_OpenPWM2
	
_OpenPWM2:	
	opt	stack 14
; Regs used in _OpenPWM2: [wreg+status,2+status,0]
;OpenPWM2@period stored from wreg
	movwf	(OpenPWM2@period)
	line	39
	
l1042:	
;pwm.c: 39: CCP4CON |= 0b00001100;
	movlw	(0Ch)
	movwf	(??_OpenPWM2+0)+0
	movf	(??_OpenPWM2+0)+0,w
	movlb 6	; select bank6
	iorwf	(794)^0300h,f	;volatile
	line	40
	
l1044:	
;pwm.c: 40: PR2 = period;
	movf	(OpenPWM2@period),w
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	41
	
l1046:	
;pwm.c: 41: T2CON |= 0b00000100;
	bsf	(28)+(2/8),(2)&7	;volatile
	line	42
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_OpenPWM2
	__end_of_OpenPWM2:
	signat	_OpenPWM2,4216
psect	text260,local,class=CODE,delta=2,merge=1
global __ptext260
__ptext260:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
