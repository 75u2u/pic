#include <xc.h>
#include "glcd.h"
#include "font.h"
#include <stdio.h>

void delay_ms(unsigned int count) {
    int dly ;
        for(dly=1;dly<=count;dly++){
            __delay_ms(1) ;
   }
}

void glcd_init(void){
    RES = 0 ;
    __delay_us(10) ;
    RES = 1 ;
    __delay_us(1000) ;

    glcd_writelcd(0x3F,1) ;
    glcd_writelcd(0x3F,2) ;
    glcd_writelcd(0b11000000,1) ;
    glcd_writelcd(0b11000000,2) ;

}

void glcd_writelcd(unsigned char cmd,char cselect){

    while(glcd_readbusy() != 0) ;
    if(cselect == 1){
        CS1 = 0 ;
        CS2 = 1 ;
    } else {
        CS2 = 0 ;
        CS1 = 1;
    }

    RW = 0 ;
    DI = 0 ;

    D0 = cmd & 0x01 ;
    D1 = (cmd >> 1) & 0x01 ;
    D2 = (cmd >> 2) & 0x01 ;
    D3 = (cmd >> 3) & 0x01 ;
    D4 = (cmd >> 4) & 0x01 ;
    D5 = (cmd >> 5) & 0x01 ;
    D6 = (cmd >> 6) & 0x01 ;
    D7 = (cmd >> 7) & 0x01 ;

    glcd_en() ;

    CS1 = 1 ;
    CS2 = 1 ;
    RW = 0 ;
    DI = 0 ;
}



 char glcd_readbusy(void){
     bsy = 0 ;
     char i ;
     bsytris = 1 ;
     CS1 = 0 ;
     CS2 = 0 ;
         RW = 1 ;
         DI = 1 ;
         CS1 = 0 ;
         __delay_us(1) ;
         E = 1 ;
         __delay_us(1) ;
         E = 0 ;
         __delay_us(3) ;
         i = RC7 ;

     CS1 = 1 ;
     CS2 = 1 ;
     RW = 0 ;
     bsytris= 0 ;
     return i ;
}

void glcd_czero(void) {
     glcd_writelcd(0x40,1) ;
     glcd_writelcd(0x40,2) ;
}
void glcd_pageset(char pa){
     glcd_writelcd((0xB8 | pa),1) ;
     glcd_writelcd((0xB8 | pa),2) ;
}
void glcd_writepage(unsigned char *data,char flag) {

    int l , m , n ;
    n = 0 ;
    for(l=0;l<8;l++){
        if(flag == 1){

        for(m=0;m<128;m++){
            glcd_writelcdd(~data[n],m,l) ;
            n++ ;
                  }

         }else{

         for(m=0;m<128;m++){
            glcd_writelcdd(data[n],m,l) ;
            n++ ;
                  }
         }
 }

}

void glcd_en(void){
    E = 1 ;
    __delay_us(3) ;
    E = 0 ;
}

void glcd_clear(void) {
    glcd_writelcd(0b11000000,1) ;
    glcd_writelcd(0b11000000,2) ;
    int l , m ;
  

    for(l=0;l<8;l++){
        for(m=0;m<128;m++){
            glcd_writelcdd(0,m,l) ;
          }
    } 

}



void glcd_pixel_write(char x,char y) {
    unsigned char a,b,c ;


    b = glcd_setc(x) ;
    a = y / 8  ;
    a = 7 -a ;
    glcd_pageset(a) ;
    if(y > 7){
        c = y % 8 ;
    } else {
        c = y ;
    }
    glcd_writelcdd(128>>c,1,b) ;
}

char glcd_setc(char c) {
    char cl ;
    if(c>63){
        glcd_writelcd(0x40 | (c-64),1) ;
        cl = 1 ;
    } else {
        glcd_writelcd(0x40 | c,2) ;
        cl = 2 ;
    }
    return cl ;
}

void glcd_chr(char moji,char c,char page){
    
    int i ;
    for(i=0;i<5;i++){
       glcd_writelcdd(Font[moji-32][i],c+i,page);
    }
}

void glcd_str(char *str,char c,char page) {

    int i;
    i = 0 ;
    while(str[i] != 0x00){
        glcd_chr(str[i],c+(6*i),page) ;
        delay_ms(150) ; //’x‚­‚·‚é“z
        i++ ;
    }
}

void glcd_writelcdd(char cmd,char c,char page){
    char cl ;
    if(c<64){
        glcd_writelcd((0x40 | c),2) ;
        cl = 2 ;
    } else {
        glcd_writelcd((0x40 | (c-64)) ,1) ;
        cl = 1 ;
    }
    while(glcd_readbusy() != 0) ;
    glcd_writelcd((0xB8 | page),cl)  ;
    if(cl == 1){
        CS1 = 0 ;
    } else {
        CS2 = 0 ;
    }
    RW = 0 ;
    DI = 1 ;

    D0 = cmd & 0x01 ;
    D1 = (cmd >> 1) & 0x01 ;
    D2 = (cmd >> 2) & 0x01 ;
    D3 = (cmd >> 3) & 0x01 ;
    D4 = (cmd >> 4) & 0x01 ;
    D5 = (cmd >> 5) & 0x01 ;
    D6 = (cmd >> 6) & 0x01 ;
    D7 = (cmd >> 7) & 0x01 ;

    glcd_en() ;

    CS1 = 1 ;
    CS2 = 1 ;
    RW = 0 ;
    DI = 0 ;

}