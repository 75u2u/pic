void display() {
	//hourの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
	
	PORTB = (0xF0 & PORTB) | (0x0F & (hour/10));	//PORTBの下4bitにhourの10の桁出力
	RB4=0;				//hourの10の桁ON
	DelayMs(1);
　　
	//hourの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (hour%10));	//PORTBの下4bitにhourの1の桁出力
	RA4=0;				//hourの1の桁ON
	DelayMs(1);
　　
	//minの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (min/10));		//PORTBの下4bitにminの10の桁出力
	RA3=0;				//minの10の桁ON
	DelayMs(1);
　　
	//minの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (min%10));		//PORTBの下4bitにminの1の桁出力
	RA2=0;				//minの1の桁ON
	DelayMs(1);
　　
	//secの10の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (sec/10));		//PORTBの下4bitにsecの10の桁出力
	RA1=0;				//secの10の桁ON
	DelayMs(1);

	//secの1の桁
	PORTA=0b00011111;　　　　　　
	RB4=1;				//全列OFF
　　
	PORTB = (0xF0 & PORTB) | (0x0F & (sec%10));		//PORTBの下4bitにsecの1の桁出力
	RA0=0;				//secの1の桁ON
	DelayMs(1);
}
