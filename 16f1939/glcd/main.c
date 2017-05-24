#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include "glcd.h"
#include "font.h"
#include "i2c.h"

#define _XTAL_FREQ 8000000

__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_ON & CP_OFF
		& CPD_OFF & BOREN_ON & CLKOUTEN_OFF & IESO_OFF & FCMEN_OFF);
__CONFIG(WRT_OFF & PLLEN_OFF & STVREN_OFF & LVP_OFF);

  int ADGET(char ch) ;
  int nioi(void) ;
  void shinpaku(void) ;
  float tempget(void) ;

  int cnt , adflag , addata;



void main(){
    OSCCON = 0x70 ;
    CM1CON0 = 0 ;
    CM2CON0 = 0 ;
    ANSELA = 0b11 ;
    ANSELB = 0 ;
    ANSELD = 0 ;
    ANSELE = 0 ;
    TRISA = 0b11 ;
    TRISB = 0 ;
    TRISC = 0b00011000 ;
    TRISD = 0 ;
    TRISE = 0 ;
    RES = 1 ;
    PORTA = 0 ;
    PORTB = 0 ;
    PORTC = 0 ;
    PORTD = 0 ;
    PORTE = 0 ;
    FVRCON = 0b10000010 ;
    ADCON0 = 0b00000001 ;
    ADCON1 = 0b11110011 ;
    delay_ms(100) ;
    glcd_init() ;
    glcd_clear() ;
    float temp ;
    int log ;
    while(1) {

    glcd_clear() ;
    glcd_str("#include <xc.h>" ,0,0) ;
    glcd_str("void main() {" ,0,2) ;
    glcd_str("    glcd_init() ;" ,0,3) ;
    glcd_str("}" ,0,4) ;
    glcd_str("This program was ",0,6) ;
    glcd_str("maked by ≤‹¿ ",55,7) ;

    delay_ms(4000) ;
    }

    exit(0) ;
  }
  int ADGET(char ch) {
      int data ;
      ADCON0 = 0b00000001 | (ch << 1) ;
      ADGO = 1 ;
      while(ADCON0bits.ADGO) ;
      data = ADRESH * 256 + ADRESL  ;
      return data ;
  }

 

float tempget(void){

      float Temperature ,e,f,g ;
      unsigned char hibyte , lowbyte ;
      i2c_enable() ;
      i2c_start() ;
      i2c_send_byte(0b00110000) ;
      i2c_send_byte(5) ;
      i2c_repeat_start() ;
      i2c_send_byte(0b00110001) ;
      hibyte = i2c_read_byte(1) ;
      lowbyte = i2c_read_byte(0) ;
      i2c_stop() ;
    hibyte = hibyte & 0x1F ;
   if ((hibyte & 0x10) == 0x10){
       hibyte = hibyte & 0x0F;
       e = hibyte * 16 ;
       f = lowbyte / 16.0 ;
       Temperature = e + f - 256 ;

         }else {
       hibyte = hibyte & 0x0F;
       e = hibyte * 16 ;
       f = lowbyte / 16.0 ;

       Temperature = e + f;
         }
    return Temperature ;


  }