#line 1 "C:/Users/master/Desktop/SSPPSE/Practica11/MyProject.c"

 const unsigned char txt1[] = "    SSPPSE      ";
 const unsigned char txt2[] = "Ing. Jose Ramos ";
 const unsigned char txt3[] = "                ";
 const unsigned char txt4[] = "                ";
 const unsigned char txt5[] = "   Control De    ";
 const unsigned char txt6[] = "   Servomotor    ";
 const unsigned char txt7[] = "                ";
 const unsigned char txt10[] = "  Seleccione 5  ";
 const unsigned char txt11[] = "  Secuencias    ";
 const unsigned char txt13[] = "                ";
 const unsigned char txt14[] = "                ";
 const unsigned char txt15[] = "                ";
 const unsigned char txt16[] = "Y Presione Enter";
 const unsigned char txt17[] = "      (#)       ";
 const unsigned char txt18[] = "                ";
 const unsigned char txt20[] = "                ";
 const unsigned char txt21[] = "                ";
 const unsigned char txt22[] = "                ";
 const unsigned char txt33[] = "       1er      ";
 const unsigned char txt34[] = "       2do      ";
 const unsigned char txt35[] = "       3er      ";
 const unsigned char txt36[] = "       4to      ";
 const unsigned char txt37[] = "       5to      ";

 sbit LCD_RS at RB4_bit;
 sbit LCD_EN at RB5_bit;
 sbit LCD_D4 at RB0_bit;
 sbit LCD_D5 at RB1_bit;
 sbit LCD_D6 at RB2_bit;
 sbit LCD_D7 at RB3_bit;
 sbit LCD_RS_Direction at TRISB4_bit;
 sbit LCD_EN_Direction at TRISB5_bit;
 sbit LCD_D4_Direction at TRISB0_bit;
 sbit LCD_D5_Direction at TRISB1_bit;
 sbit LCD_D6_Direction at TRISB2_bit;
 sbit LCD_D7_Direction at TRISB3_bit;

 unsigned char temp,x,i;
 unsigned int VALOR,VALOR1,VALOR2,numeros,numeros1,numeros2,numeros3,numeros4;
 void teclado();
 void Giro1();
 void Giro2();
 void Giro3();
 void Giros();
 void ver(unsigned char F, const unsigned char txt[])
 {
 unsigned char;
 for(i=0;i<16;i++)
 {
 Lcd_chr(f,i+1,txt[i]);
 }
 }

 Giro1()
 {
 for(VALOR=0;VALOR<=18;VALOR++){
 ver(1,txt20);
 PORTE.F0=1;
 delay_us(1500);
 PORTE.F0=0;
 delay_us(18500);
 }
 }

 Giro2(){
 for(VALOR1=0;VALOR1<=20;VALOR1++)
 {
 ver(1,txt21);
 PORTE.f0=1;
 delay_us(800);
 PORTE.f0=0;
 delay_us(19200);
 }
 }

 Giro3(){
 for(VALOR2=0;VALOR2<=17;VALOR2++)
 {
 ver(1,txt22);
 PORTE.f0=1;
 delay_us(2000);
 PORTE.f0=0;
 delay_us(18000);
 }
 }

 void Cantidad()
 {
 temp = 0;
 numeros = 0;
 while (1)
 {
 {
 teclado();
 }
 if ((temp >= '0')&&(temp <= '9'))
 {
 Lcd_Chr_Cp(temp);
 numeros = +temp - 48;
 }
 if(temp == '#'){
 x=1;
 break;
 }
 }
 }

 void Cantidad1()
 {
 temp = 0;
 numeros1 = 0;
 while (1)
 {
 {
 teclado();
 }
 if ((temp >= '0')&&(temp <= '9'))
 {
 Lcd_Chr_Cp(temp);
 numeros1 = +temp - 48;
 }
 if(temp == '#'){
 x=2;
 break;
 }
 }
 }

 void Cantidad2()
 {
 temp = 0;
 numeros2 = 0;
 while (1)
 {
 {
 teclado();
 }
 if ((temp >= '0')&&(temp <= '9'))
 {
 Lcd_Chr_Cp(temp);
 numeros2 = +temp - 48;
 }
 if(temp == '#'){
 x=3;
 break;
 }
 }
 }

 void Cantidad3()
 {
 temp = 0;
 numeros3 = 0;
 while (1)
 {
 {
 teclado();
 }
 if ((temp >= '0')&&(temp <= '9'))
 {
 Lcd_Chr_Cp(temp);
 numeros3 = + temp - 48;
 }
 if(temp == '#'){
 x=4;
 break;
 }
 }
 }

 void Cantidad4()
 {
 temp = 0;
 numeros4 = 0;
 while (1)
 {
 {
 teclado();
 }
 if ((temp >= '0')&&(temp <= '9'))
 {
 Lcd_Chr_Cp(temp);
 numeros4 = + temp - 48;
 }
 if(temp == '#'){
 x=5;
 break;
 }
 }
 }

 void Giros()
 {
 if(x == 5)
 {
 {
 switch(numeros)
 {
 case 1:
 Giro1();
 break;
 case 2:
 Giro2();
 break;
 case 3:
 Giro3();
 break;
 }
 switch(numeros1)
 {
 case 1:
 Giro1();
 break;
 case 2:
 Giro2();
 break;
 case 3:
 Giro3();
 break;
 }
 switch(numeros2)
 {
 case 1:
 Giro1();
 break;
 case 2:
 Giro2();
 break;
 case 3:
 Giro3();
 break;
 }
 switch(numeros3)
 {
 case 1:
 Giro1();
 break;
 case 2:
 Giro2();
 break;
 case 3:
 Giro3();
 break;
 }
 switch(numeros4)
 {
 case 1:
 Giro1();
 break;
 case 2:
 Giro2();
 break;
 case 3:
 Giro3();
 break;
 }
 }
 }
 }

 void teclado()
 {
 temp = 0;
 PORTD = 0xF0;
 if (PORTD != 0xF0)
 {
 PORTD = 0xFE;
 switch (PORTD)
 {
 case 0xEE: temp = '1'; break;
 case 0xDE: temp = '2'; break;
 case 0xBE: temp = '3'; break;
 case 0x7E: temp = 'A'; break;
 }
 PORTD = 0xFD;
 switch (PORTD)
 {
 case 0xED: temp = '4'; break;
 case 0xDD: temp = '5'; break;
 case 0xBD: temp = '6'; break;
 case 0x7D: temp = 'B'; break;
 }
 PORTD = 0xFB;
 switch (PORTD)
 {
 case 0xEB: temp = '7'; break;
 case 0xDB: temp = '8'; break;
 case 0xBB: temp = '9'; break;
 case 0x7B: temp = 'C'; break;
 }
 PORTD = 0xF7;
 switch (PORTD)
 {
 case 0xE7: temp = '*'; break;
 case 0xD7: temp = '0'; break;
 case 0xB7: temp = '#'; break;
 case 0x77: temp = 'D'; break;
 }
 }
 PORTD = 0xF0;
 while (PORTD != 0xF0);
 delay_ms(51);
 }

 void main()
 {
 ANSEL = 0;
 ANSELH = 0;
 C1ON_bit = 0;
 C2ON_bit = 0;
 TRISB = 0;
 PORTB = 0;
 TRISC.F1 = 0;
 PORTC.F1 = 0;
 TRISC.F2 = 0;
 PORTC.F2 = 0;
 TRISD = 0xF0;
 PORTD = 0xF0;
 TRISE = 0x00;
 PORTE = 0x00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_cmd(_Lcd_clear);

 ver(1,txt1);
 ver(2,txt2);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt3);
 ver(2,txt4);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt5);
 ver(2,txt6);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt7);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt10);
 ver(2,txt11);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt13);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt16);
 ver(2,txt17);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt14);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt16);
 ver(2,txt17);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt15);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 ver(1,txt16);
 ver(2,txt17);
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 while(1){
 ver(1,txt33);
 lcd_out(2,1,"");
 Cantidad();
 lcd_cmd(_lcd_clear);
 ver(1,txt34);
 lcd_out(2,1,"");
 Cantidad1();
 lcd_cmd(_lcd_clear);
 ver(1,txt35);
 lcd_out(2,1,"");
 Cantidad2();
 lcd_cmd(_lcd_clear);
 ver(1,txt36);
 lcd_out(2,1,"");
 Cantidad3();
 lcd_cmd(_lcd_clear);
 ver(1,txt37);
 lcd_out(2,1,"");
 Cantidad4();
 Lcd_cmd(_LCD_CLEAR);
 Giros();
 }
 }
