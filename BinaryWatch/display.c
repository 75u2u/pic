void display() {
	//hour��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
	
	PORTB = (0xF0 & PORTB) | (0x0F & (hour/10));	//PORTB�̉�4bit��hour��10�̌��o��
	RB4=0;				//hour��10�̌�ON
	DelayMs(1);
�@�@
	//hour��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (hour%10));	//PORTB�̉�4bit��hour��1�̌��o��
	RA4=0;				//hour��1�̌�ON
	DelayMs(1);
�@�@
	//min��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (min/10));		//PORTB�̉�4bit��min��10�̌��o��
	RA3=0;				//min��10�̌�ON
	DelayMs(1);
�@�@
	//min��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (min%10));		//PORTB�̉�4bit��min��1�̌��o��
	RA2=0;				//min��1�̌�ON
	DelayMs(1);
�@�@
	//sec��10�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (sec/10));		//PORTB�̉�4bit��sec��10�̌��o��
	RA1=0;				//sec��10�̌�ON
	DelayMs(1);

	//sec��1�̌�
	PORTA=0b00011111;�@�@�@�@�@�@
	RB4=1;				//�S��OFF
�@�@
	PORTB = (0xF0 & PORTB) | (0x0F & (sec%10));		//PORTB�̉�4bit��sec��1�̌��o��
	RA0=0;				//sec��1�̌�ON
	DelayMs(1);
}
