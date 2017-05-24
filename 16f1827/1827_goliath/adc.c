#include <pic.h>
#include "adc.h"

#define _XTAL_FREQ 8000000

int addata;

void adc_init(void){
	ADCON0 = 0b10010000;		
	ADCON1 = 0b10010000;
	ADON = 1;
}
void read_adc(void){
	__delay_ms(20);
	ADGO = 1;
	while(ADGO)continue;
	addata = (ADRESH<<8) + ADRESL;
}