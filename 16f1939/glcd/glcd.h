#define _XTAL_FREQ 8000000


#define CS1 RD4
#define CS2 RD5
#define DI  RD0
#define RES RD6
#define RW  RD1
#define E   RD2

#define bsy RC7
#define bsytris TRISCbits.TRISC7
#define D0 RC0
#define D1 RC1
#define D2 RC2
#define D3 RB3
#define D4 RB4
#define D5 RC5
#define D6 RC6
#define D7 RC7







void delay_ms(unsigned int count) ; //ミリ秒ディレイ
void glcd_init(void) ; //lcd初期化
void glcd_writelcd(unsigned char cmd,char cselect) ; //LCDへデータ送信(コマンド専用)
char glcd_readbusy(void) ; //LCDがビジーかチェック
void glcd_czero(void) ; //カラムを0にセット
void glcd_pageset(char pa) ; //ページを設定（使わない）
void glcd_write_page(unsigned char *data,char flag) ; //1画面書き込み
void glcd_en(void) ; //エネーブル
void glcd_clear(void) ; //画面消去
void glcd_pixel_write(char x,char y) ; //多分使えません
char glcd_setc(char c) ; //使いません
void glcd_chr(char moji,char c,char page) ; //一文字出力
void glcd_str(char *str,char c,char page) ; //文字列出力
void glcd_writelcdd(char cmd,char c,char page) ; //LCDへデータを送信(表示データ専用)



