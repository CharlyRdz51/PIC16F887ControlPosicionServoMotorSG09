/*SSPPSE
Ing. Jose Jesus Ramos Guillen
Aguilar Rodriguez Carlos AdolfO
215860049
Control de Servomotor
4 de Noviembre del 2016
*/

//Bloque de mensajes almacenados en la ROM
const unsigned char txt1[] = "    SSPPSE      ";
const unsigned char txt2[] = "Ing. Jose Ramos ";
const unsigned char txt3[] = " Carlos Aguilar ";
const unsigned char txt4[] = "   215860049    ";
const unsigned char txt5[] = "   Control De    ";
const unsigned char txt6[] = "   Servomotor    ";
const unsigned char txt7[] = "   04/Nov/2016  ";
const unsigned char txt10[] = "  Seleccione 5  ";
const unsigned char txt11[] = "  Secuencias    ";
const unsigned char txt13[] = " 1 =   0 Grados ";
const unsigned char txt14[] = " 2 = -90 Grados ";
const unsigned char txt15[] = " 3 = +90 Grados ";
const unsigned char txt16[] = "Y Presione Enter";
const unsigned char txt17[] = "      (*)       ";
const unsigned char txt18[] = "   Iniciando    ";
const unsigned char txt20[] = "     0 Grados   ";
const unsigned char txt21[] = "   -90 Grados   ";
const unsigned char txt22[] = "   +90 Grados   ";
const unsigned char txt23[] = "Digite 1er giro ";
const unsigned char txt24[] = "Digite 2do giro ";
const unsigned char txt25[] = "Digite 3er giro ";
const unsigned char txt26[] = "Digite 4to giro ";
const unsigned char txt27[] = "Digite 5to giro ";
//Asignacion de pines para LCD
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
// Declaracion de variables y funciones
unsigned char buffer,n,i;
unsigned int cantidad,cantidad1,cantidad2,Digitos,Digitos1,Digitos2,Digitos3,Digitos4;
void teclado();
void Giro90();
void Giro0();
void Giro180();
void Secuencia();
                                    void ver(unsigned char F, const unsigned char txt[])
                                        {
                                         unsigned char;
                                         for(i=0;i<16;i++)
                                         {
                                          Lcd_chr(f,i+1,txt[i]);
                                          }
                                           }
                                           
                                Giro90()
                                   {
                                   for(cantidad=0;cantidad<=18;cantidad++){
                                   ver(1,txt20);
                                   PORTE.F0=1;
                                   delay_us(1500);
                                   PORTE.F0=0;
                                   delay_us(18500);
                                         }
                                          }
                         
                                 Giro0(){
                                 for(cantidad1=0;cantidad1<=20;cantidad1++)
                                 {
                                 ver(1,txt21);
                                 PORTE.f0=1;
                                 delay_us(800);
                                 PORTE.f0=0;
                                 delay_us(19200);
                                 }
                                 }

                                 Giro180(){
                                 for(cantidad2=0;cantidad2<=17;cantidad2++)
                                 {
                                 ver(1,txt22);
                                 PORTE.f0=1;
                                 delay_us(2000);
                                 PORTE.f0=0;
                                 delay_us(18000);
                                 }
                                  }
             
                          void registro1()
                          {
                            buffer = 0;
                            Digitos = 0;
                            while (1)
                            {
                              {
                                teclado();
                              }
                              if ((buffer >= '0')&&(buffer <= '9'))
                              {
                                Lcd_Chr_Cp(buffer);
                                Digitos = +buffer - 48;
                              }
                             if(buffer == '*'){
                               n=1;
                               break;
                              }
                            }
                          }

                          void registro2()
                          {
                            buffer = 0;
                            Digitos1 = 0;
                            while (1)
                            {
                              {
                                teclado();
                              }
                              if ((buffer >= '0')&&(buffer <= '9'))
                              {
                                Lcd_Chr_Cp(buffer);
                                Digitos1 = +buffer - 48;
                              }
                             if(buffer == '*'){
                               n=2;
                               break;
                              }
                            }
                          }

                          void registro3()
                          {
                            buffer = 0;
                            Digitos2 = 0;
                            while (1)
                            {
                              {
                                teclado();
                              }
                              if ((buffer >= '0')&&(buffer <= '9'))
                              {
                                Lcd_Chr_Cp(buffer);
                                Digitos2 = +buffer - 48;
                              }
                             if(buffer == '*'){
                               n=3;
                               break;
                              }
                            }
                          }

                          void registro4()
                          {
                            buffer = 0;
                            Digitos3 = 0;
                            while (1)
                            {
                              {
                                teclado();
                              }
                              if ((buffer >= '0')&&(buffer <= '9'))
                              {
                                Lcd_Chr_Cp(buffer);
                                Digitos3 = + buffer - 48;
                              }
                             if(buffer == '*'){
                               n=4;
                               break;
                              }
                            }
                          }

                          void registro5()
                          {
                            buffer = 0;
                            Digitos4 = 0;
                            while (1)
                            {
                              {
                                teclado();
                              }
                              if ((buffer >= '0')&&(buffer <= '9'))
                              {
                                Lcd_Chr_Cp(buffer);
                                Digitos4 = + buffer - 48;
                              }
                             if(buffer == '*'){
                               n=5;
                               break;
                              }
                            }
                          }

                      void Secuencia()
                      {
                       if(n == 5)
                                {
                                {
                         switch(Digitos)
                         {
                         case 1:
                         Giro90();
                         break;
                         case 2:
                         Giro0();
                         break;
                         case 3:
                         Giro180();
                         break;
                         }
                          switch(Digitos1)
                         {
                         case 1:
                         Giro90();
                         break;
                         case 2:
                         Giro0();
                         break;
                         case 3:
                         Giro180();
                         break;
                         }
                          switch(Digitos2)
                         {
                         case 1:
                         Giro90();
                         break;
                         case 2:
                         Giro0();
                         break;
                         case 3:
                         Giro180();
                         break;
                         }
                          switch(Digitos3)
                         {
                         case 1:
                         Giro90();
                         break;
                         case 2:
                         Giro0();
                         break;
                         case 3:
                         Giro180();
                         break;
                         }
                          switch(Digitos4)
                         {
                         case 1:
                         Giro90();
                         break;
                         case 2:
                         Giro0();
                         break;
                         case 3:
                         Giro180();
                         break;
                          }
                           }
                            }
                             }

                                void teclado()
                                {
                                  buffer = 0;
                                  PORTD = 0xF0;
                                  if (PORTD != 0xF0)
                                  {
                                    PORTD = 0xFE;
                                    switch (PORTD)
                                    {
                                      case 0xEE: buffer = '1'; break;
                                      case 0xDE: buffer = '2'; break;
                                      case 0xBE: buffer = '3'; break;
                                      case 0x7E: buffer = 'A'; break;
                                    }
                                    PORTD = 0xFD;
                                    switch (PORTD)
                                    {
                                      case 0xED: buffer = '4'; break;
                                      case 0xDD: buffer = '5'; break;
                                      case 0xBD: buffer = '6'; break;
                                      case 0x7D: buffer = 'B'; break;
                                    }
                                    PORTD = 0xFB;
                                    switch (PORTD)
                                    {
                                      case 0xEB: buffer = '7'; break;
                                      case 0xDB: buffer = '8'; break;
                                      case 0xBB: buffer = '9'; break;
                                      case 0x7B: buffer = 'C'; break;
                                    }
                                    PORTD = 0xF7;
                                    switch (PORTD)
                                    {
                                      case 0xE7: buffer = '*'; break;
                                      case 0xD7: buffer = '0'; break;
                                      case 0xB7: buffer = '#'; break;
                                      case 0x77: buffer = 'D'; break;
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
                                            //Bloque de Mensaje/Instrucciones
                                            ver(1,txt1);
                                            ver(2,txt2);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt3);
                                            ver(2,txt4);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt5);
                                            ver(2,txt6);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt7);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt10);
                                            ver(2,txt11);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt13);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt16);
                                            ver(2,txt17);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt14);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt16);
                                            ver(2,txt17);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt15);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt16);
                                            ver(2,txt17);
                                            delay_ms(900);
                                            lcd_cmd(_lcd_clear);
                                            while(1){
                                            ver(1,txt23);
                                            lcd_out(2,1,"");
                                            registro1();
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt24);
                                            lcd_out(2,1,"");
                                            registro2();
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt25);
                                            lcd_out(2,1,"");
                                            registro3();
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt26);
                                            lcd_out(2,1,"");
                                            registro4();
                                            lcd_cmd(_lcd_clear);
                                            ver(1,txt27);
                                            lcd_out(2,1,"");
                                            registro5();
                                             Lcd_cmd(_LCD_CLEAR);
                                            Secuencia();
                                             }
                                              }