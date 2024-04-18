
_ver:

;MyProject.c,46 :: 		void ver(unsigned char F, const unsigned char txt[])
;MyProject.c,49 :: 		for(i=0;i<16;i++)
	CLRF       _i+0
L_ver0:
	MOVLW      16
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ver1
;MyProject.c,51 :: 		Lcd_chr(f,i+1,txt[i]);
	MOVF       FARG_ver_F+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDWF      FARG_ver_txt+0, 0
	MOVWF      R0+0
	MOVF       FARG_ver_txt+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,49 :: 		for(i=0;i<16;i++)
	INCF       _i+0, 1
;MyProject.c,52 :: 		}
	GOTO       L_ver0
L_ver1:
;MyProject.c,53 :: 		}
L_end_ver:
	RETURN
; end of _ver

_Giro1:

;MyProject.c,55 :: 		Giro1()
;MyProject.c,57 :: 		for(VALOR=0;VALOR<=18;VALOR++){
	CLRF       _VALOR+0
	CLRF       _VALOR+1
L_Giro13:
	MOVF       _VALOR+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Giro1122
	MOVF       _VALOR+0, 0
	SUBLW      18
L__Giro1122:
	BTFSS      STATUS+0, 0
	GOTO       L_Giro14
;MyProject.c,58 :: 		ver(1,txt20);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt20+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt20+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,59 :: 		PORTE.F0=1;
	BSF        PORTE+0, 0
;MyProject.c,60 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_Giro16:
	DECFSZ     R13+0, 1
	GOTO       L_Giro16
	DECFSZ     R12+0, 1
	GOTO       L_Giro16
	NOP
;MyProject.c,61 :: 		PORTE.F0=0;
	BCF        PORTE+0, 0
;MyProject.c,62 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_Giro17:
	DECFSZ     R13+0, 1
	GOTO       L_Giro17
	DECFSZ     R12+0, 1
	GOTO       L_Giro17
	NOP
	NOP
;MyProject.c,57 :: 		for(VALOR=0;VALOR<=18;VALOR++){
	INCF       _VALOR+0, 1
	BTFSC      STATUS+0, 2
	INCF       _VALOR+1, 1
;MyProject.c,63 :: 		}
	GOTO       L_Giro13
L_Giro14:
;MyProject.c,64 :: 		}
L_end_Giro1:
	RETURN
; end of _Giro1

_Giro2:

;MyProject.c,66 :: 		Giro2(){
;MyProject.c,67 :: 		for(VALOR1=0;VALOR1<=20;VALOR1++)
	CLRF       _VALOR1+0
	CLRF       _VALOR1+1
L_Giro28:
	MOVF       _VALOR1+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Giro2124
	MOVF       _VALOR1+0, 0
	SUBLW      20
L__Giro2124:
	BTFSS      STATUS+0, 0
	GOTO       L_Giro29
;MyProject.c,69 :: 		ver(1,txt21);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt21+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt21+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,70 :: 		PORTE.f0=1;
	BSF        PORTE+0, 0
;MyProject.c,71 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_Giro211:
	DECFSZ     R13+0, 1
	GOTO       L_Giro211
	DECFSZ     R12+0, 1
	GOTO       L_Giro211
	NOP
;MyProject.c,72 :: 		PORTE.f0=0;
	BCF        PORTE+0, 0
;MyProject.c,73 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Giro212:
	DECFSZ     R13+0, 1
	GOTO       L_Giro212
	DECFSZ     R12+0, 1
	GOTO       L_Giro212
	NOP
	NOP
;MyProject.c,67 :: 		for(VALOR1=0;VALOR1<=20;VALOR1++)
	INCF       _VALOR1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _VALOR1+1, 1
;MyProject.c,74 :: 		}
	GOTO       L_Giro28
L_Giro29:
;MyProject.c,75 :: 		}
L_end_Giro2:
	RETURN
; end of _Giro2

_Giro3:

;MyProject.c,77 :: 		Giro3(){
;MyProject.c,78 :: 		for(VALOR2=0;VALOR2<=17;VALOR2++)
	CLRF       _VALOR2+0
	CLRF       _VALOR2+1
L_Giro313:
	MOVF       _VALOR2+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Giro3126
	MOVF       _VALOR2+0, 0
	SUBLW      17
L__Giro3126:
	BTFSS      STATUS+0, 0
	GOTO       L_Giro314
;MyProject.c,80 :: 		ver(1,txt22);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt22+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt22+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,81 :: 		PORTE.f0=1;
	BSF        PORTE+0, 0
;MyProject.c,82 :: 		delay_us(2000);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      48
	MOVWF      R13+0
L_Giro316:
	DECFSZ     R13+0, 1
	GOTO       L_Giro316
	DECFSZ     R12+0, 1
	GOTO       L_Giro316
	NOP
;MyProject.c,83 :: 		PORTE.f0=0;
	BCF        PORTE+0, 0
;MyProject.c,84 :: 		delay_us(18000);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      191
	MOVWF      R13+0
L_Giro317:
	DECFSZ     R13+0, 1
	GOTO       L_Giro317
	DECFSZ     R12+0, 1
	GOTO       L_Giro317
	NOP
	NOP
;MyProject.c,78 :: 		for(VALOR2=0;VALOR2<=17;VALOR2++)
	INCF       _VALOR2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _VALOR2+1, 1
;MyProject.c,85 :: 		}
	GOTO       L_Giro313
L_Giro314:
;MyProject.c,86 :: 		}
L_end_Giro3:
	RETURN
; end of _Giro3

_Cantidad:

;MyProject.c,88 :: 		void Cantidad()
;MyProject.c,90 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,91 :: 		numeros = 0;
	CLRF       _numeros+0
	CLRF       _numeros+1
;MyProject.c,92 :: 		while (1)
L_Cantidad18:
;MyProject.c,95 :: 		teclado();
	CALL       _teclado+0
;MyProject.c,97 :: 		if ((temp >= '0')&&(temp <= '9'))
	MOVLW      48
	SUBWF      _temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad22
	MOVF       _temp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad22
L__Cantidad115:
;MyProject.c,99 :: 		Lcd_Chr_Cp(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,100 :: 		numeros = +temp - 48;
	MOVLW      48
	SUBWF      _temp+0, 0
	MOVWF      _numeros+0
	CLRF       _numeros+1
	BTFSS      STATUS+0, 0
	DECF       _numeros+1, 1
;MyProject.c,101 :: 		}
L_Cantidad22:
;MyProject.c,102 :: 		if(temp == '#'){
	MOVF       _temp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_Cantidad23
;MyProject.c,103 :: 		x=1;
	MOVLW      1
	MOVWF      _x+0
;MyProject.c,104 :: 		break;
	GOTO       L_Cantidad19
;MyProject.c,105 :: 		}
L_Cantidad23:
;MyProject.c,106 :: 		}
	GOTO       L_Cantidad18
L_Cantidad19:
;MyProject.c,107 :: 		}
L_end_Cantidad:
	RETURN
; end of _Cantidad

_Cantidad1:

;MyProject.c,109 :: 		void Cantidad1()
;MyProject.c,111 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,112 :: 		numeros1 = 0;
	CLRF       _numeros1+0
	CLRF       _numeros1+1
;MyProject.c,113 :: 		while (1)
L_Cantidad124:
;MyProject.c,116 :: 		teclado();
	CALL       _teclado+0
;MyProject.c,118 :: 		if ((temp >= '0')&&(temp <= '9'))
	MOVLW      48
	SUBWF      _temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad128
	MOVF       _temp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad128
L__Cantidad1116:
;MyProject.c,120 :: 		Lcd_Chr_Cp(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,121 :: 		numeros1 = +temp - 48;
	MOVLW      48
	SUBWF      _temp+0, 0
	MOVWF      _numeros1+0
	CLRF       _numeros1+1
	BTFSS      STATUS+0, 0
	DECF       _numeros1+1, 1
;MyProject.c,122 :: 		}
L_Cantidad128:
;MyProject.c,123 :: 		if(temp == '#'){
	MOVF       _temp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_Cantidad129
;MyProject.c,124 :: 		x=2;
	MOVLW      2
	MOVWF      _x+0
;MyProject.c,125 :: 		break;
	GOTO       L_Cantidad125
;MyProject.c,126 :: 		}
L_Cantidad129:
;MyProject.c,127 :: 		}
	GOTO       L_Cantidad124
L_Cantidad125:
;MyProject.c,128 :: 		}
L_end_Cantidad1:
	RETURN
; end of _Cantidad1

_Cantidad2:

;MyProject.c,130 :: 		void Cantidad2()
;MyProject.c,132 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,133 :: 		numeros2 = 0;
	CLRF       _numeros2+0
	CLRF       _numeros2+1
;MyProject.c,134 :: 		while (1)
L_Cantidad230:
;MyProject.c,137 :: 		teclado();
	CALL       _teclado+0
;MyProject.c,139 :: 		if ((temp >= '0')&&(temp <= '9'))
	MOVLW      48
	SUBWF      _temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad234
	MOVF       _temp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad234
L__Cantidad2117:
;MyProject.c,141 :: 		Lcd_Chr_Cp(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,142 :: 		numeros2 = +temp - 48;
	MOVLW      48
	SUBWF      _temp+0, 0
	MOVWF      _numeros2+0
	CLRF       _numeros2+1
	BTFSS      STATUS+0, 0
	DECF       _numeros2+1, 1
;MyProject.c,143 :: 		}
L_Cantidad234:
;MyProject.c,144 :: 		if(temp == '#'){
	MOVF       _temp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_Cantidad235
;MyProject.c,145 :: 		x=3;
	MOVLW      3
	MOVWF      _x+0
;MyProject.c,146 :: 		break;
	GOTO       L_Cantidad231
;MyProject.c,147 :: 		}
L_Cantidad235:
;MyProject.c,148 :: 		}
	GOTO       L_Cantidad230
L_Cantidad231:
;MyProject.c,149 :: 		}
L_end_Cantidad2:
	RETURN
; end of _Cantidad2

_Cantidad3:

;MyProject.c,151 :: 		void Cantidad3()
;MyProject.c,153 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,154 :: 		numeros3 = 0;
	CLRF       _numeros3+0
	CLRF       _numeros3+1
;MyProject.c,155 :: 		while (1)
L_Cantidad336:
;MyProject.c,158 :: 		teclado();
	CALL       _teclado+0
;MyProject.c,160 :: 		if ((temp >= '0')&&(temp <= '9'))
	MOVLW      48
	SUBWF      _temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad340
	MOVF       _temp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad340
L__Cantidad3118:
;MyProject.c,162 :: 		Lcd_Chr_Cp(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,163 :: 		numeros3 = + temp - 48;
	MOVLW      48
	SUBWF      _temp+0, 0
	MOVWF      _numeros3+0
	CLRF       _numeros3+1
	BTFSS      STATUS+0, 0
	DECF       _numeros3+1, 1
;MyProject.c,164 :: 		}
L_Cantidad340:
;MyProject.c,165 :: 		if(temp == '#'){
	MOVF       _temp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_Cantidad341
;MyProject.c,166 :: 		x=4;
	MOVLW      4
	MOVWF      _x+0
;MyProject.c,167 :: 		break;
	GOTO       L_Cantidad337
;MyProject.c,168 :: 		}
L_Cantidad341:
;MyProject.c,169 :: 		}
	GOTO       L_Cantidad336
L_Cantidad337:
;MyProject.c,170 :: 		}
L_end_Cantidad3:
	RETURN
; end of _Cantidad3

_Cantidad4:

;MyProject.c,172 :: 		void Cantidad4()
;MyProject.c,174 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,175 :: 		numeros4 = 0;
	CLRF       _numeros4+0
	CLRF       _numeros4+1
;MyProject.c,176 :: 		while (1)
L_Cantidad442:
;MyProject.c,179 :: 		teclado();
	CALL       _teclado+0
;MyProject.c,181 :: 		if ((temp >= '0')&&(temp <= '9'))
	MOVLW      48
	SUBWF      _temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad446
	MOVF       _temp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_Cantidad446
L__Cantidad4119:
;MyProject.c,183 :: 		Lcd_Chr_Cp(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,184 :: 		numeros4 = + temp - 48;
	MOVLW      48
	SUBWF      _temp+0, 0
	MOVWF      _numeros4+0
	CLRF       _numeros4+1
	BTFSS      STATUS+0, 0
	DECF       _numeros4+1, 1
;MyProject.c,185 :: 		}
L_Cantidad446:
;MyProject.c,186 :: 		if(temp == '#'){
	MOVF       _temp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_Cantidad447
;MyProject.c,187 :: 		x=5;
	MOVLW      5
	MOVWF      _x+0
;MyProject.c,188 :: 		break;
	GOTO       L_Cantidad443
;MyProject.c,189 :: 		}
L_Cantidad447:
;MyProject.c,190 :: 		}
	GOTO       L_Cantidad442
L_Cantidad443:
;MyProject.c,191 :: 		}
L_end_Cantidad4:
	RETURN
; end of _Cantidad4

_Giros:

;MyProject.c,193 :: 		void Giros()
;MyProject.c,195 :: 		if(x == 5)
	MOVF       _x+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_Giros48
;MyProject.c,198 :: 		switch(numeros)
	GOTO       L_Giros49
;MyProject.c,200 :: 		case 1:
L_Giros51:
;MyProject.c,201 :: 		Giro1();
	CALL       _Giro1+0
;MyProject.c,202 :: 		break;
	GOTO       L_Giros50
;MyProject.c,203 :: 		case 2:
L_Giros52:
;MyProject.c,204 :: 		Giro2();
	CALL       _Giro2+0
;MyProject.c,205 :: 		break;
	GOTO       L_Giros50
;MyProject.c,206 :: 		case 3:
L_Giros53:
;MyProject.c,207 :: 		Giro3();
	CALL       _Giro3+0
;MyProject.c,208 :: 		break;
	GOTO       L_Giros50
;MyProject.c,209 :: 		}
L_Giros49:
	MOVLW      0
	XORWF      _numeros+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros133
	MOVLW      1
	XORWF      _numeros+0, 0
L__Giros133:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros51
	MOVLW      0
	XORWF      _numeros+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros134
	MOVLW      2
	XORWF      _numeros+0, 0
L__Giros134:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros52
	MOVLW      0
	XORWF      _numeros+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros135
	MOVLW      3
	XORWF      _numeros+0, 0
L__Giros135:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros53
L_Giros50:
;MyProject.c,210 :: 		switch(numeros1)
	GOTO       L_Giros54
;MyProject.c,212 :: 		case 1:
L_Giros56:
;MyProject.c,213 :: 		Giro1();
	CALL       _Giro1+0
;MyProject.c,214 :: 		break;
	GOTO       L_Giros55
;MyProject.c,215 :: 		case 2:
L_Giros57:
;MyProject.c,216 :: 		Giro2();
	CALL       _Giro2+0
;MyProject.c,217 :: 		break;
	GOTO       L_Giros55
;MyProject.c,218 :: 		case 3:
L_Giros58:
;MyProject.c,219 :: 		Giro3();
	CALL       _Giro3+0
;MyProject.c,220 :: 		break;
	GOTO       L_Giros55
;MyProject.c,221 :: 		}
L_Giros54:
	MOVLW      0
	XORWF      _numeros1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros136
	MOVLW      1
	XORWF      _numeros1+0, 0
L__Giros136:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros56
	MOVLW      0
	XORWF      _numeros1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros137
	MOVLW      2
	XORWF      _numeros1+0, 0
L__Giros137:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros57
	MOVLW      0
	XORWF      _numeros1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros138
	MOVLW      3
	XORWF      _numeros1+0, 0
L__Giros138:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros58
L_Giros55:
;MyProject.c,222 :: 		switch(numeros2)
	GOTO       L_Giros59
;MyProject.c,224 :: 		case 1:
L_Giros61:
;MyProject.c,225 :: 		Giro1();
	CALL       _Giro1+0
;MyProject.c,226 :: 		break;
	GOTO       L_Giros60
;MyProject.c,227 :: 		case 2:
L_Giros62:
;MyProject.c,228 :: 		Giro2();
	CALL       _Giro2+0
;MyProject.c,229 :: 		break;
	GOTO       L_Giros60
;MyProject.c,230 :: 		case 3:
L_Giros63:
;MyProject.c,231 :: 		Giro3();
	CALL       _Giro3+0
;MyProject.c,232 :: 		break;
	GOTO       L_Giros60
;MyProject.c,233 :: 		}
L_Giros59:
	MOVLW      0
	XORWF      _numeros2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros139
	MOVLW      1
	XORWF      _numeros2+0, 0
L__Giros139:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros61
	MOVLW      0
	XORWF      _numeros2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros140
	MOVLW      2
	XORWF      _numeros2+0, 0
L__Giros140:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros62
	MOVLW      0
	XORWF      _numeros2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros141
	MOVLW      3
	XORWF      _numeros2+0, 0
L__Giros141:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros63
L_Giros60:
;MyProject.c,234 :: 		switch(numeros3)
	GOTO       L_Giros64
;MyProject.c,236 :: 		case 1:
L_Giros66:
;MyProject.c,237 :: 		Giro1();
	CALL       _Giro1+0
;MyProject.c,238 :: 		break;
	GOTO       L_Giros65
;MyProject.c,239 :: 		case 2:
L_Giros67:
;MyProject.c,240 :: 		Giro2();
	CALL       _Giro2+0
;MyProject.c,241 :: 		break;
	GOTO       L_Giros65
;MyProject.c,242 :: 		case 3:
L_Giros68:
;MyProject.c,243 :: 		Giro3();
	CALL       _Giro3+0
;MyProject.c,244 :: 		break;
	GOTO       L_Giros65
;MyProject.c,245 :: 		}
L_Giros64:
	MOVLW      0
	XORWF      _numeros3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros142
	MOVLW      1
	XORWF      _numeros3+0, 0
L__Giros142:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros66
	MOVLW      0
	XORWF      _numeros3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros143
	MOVLW      2
	XORWF      _numeros3+0, 0
L__Giros143:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros67
	MOVLW      0
	XORWF      _numeros3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros144
	MOVLW      3
	XORWF      _numeros3+0, 0
L__Giros144:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros68
L_Giros65:
;MyProject.c,246 :: 		switch(numeros4)
	GOTO       L_Giros69
;MyProject.c,248 :: 		case 1:
L_Giros71:
;MyProject.c,249 :: 		Giro1();
	CALL       _Giro1+0
;MyProject.c,250 :: 		break;
	GOTO       L_Giros70
;MyProject.c,251 :: 		case 2:
L_Giros72:
;MyProject.c,252 :: 		Giro2();
	CALL       _Giro2+0
;MyProject.c,253 :: 		break;
	GOTO       L_Giros70
;MyProject.c,254 :: 		case 3:
L_Giros73:
;MyProject.c,255 :: 		Giro3();
	CALL       _Giro3+0
;MyProject.c,256 :: 		break;
	GOTO       L_Giros70
;MyProject.c,257 :: 		}
L_Giros69:
	MOVLW      0
	XORWF      _numeros4+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros145
	MOVLW      1
	XORWF      _numeros4+0, 0
L__Giros145:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros71
	MOVLW      0
	XORWF      _numeros4+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros146
	MOVLW      2
	XORWF      _numeros4+0, 0
L__Giros146:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros72
	MOVLW      0
	XORWF      _numeros4+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Giros147
	MOVLW      3
	XORWF      _numeros4+0, 0
L__Giros147:
	BTFSC      STATUS+0, 2
	GOTO       L_Giros73
L_Giros70:
;MyProject.c,259 :: 		}
L_Giros48:
;MyProject.c,260 :: 		}
L_end_Giros:
	RETURN
; end of _Giros

_teclado:

;MyProject.c,262 :: 		void teclado()
;MyProject.c,264 :: 		temp = 0;
	CLRF       _temp+0
;MyProject.c,265 :: 		PORTD = 0xF0;
	MOVLW      240
	MOVWF      PORTD+0
;MyProject.c,266 :: 		if (PORTD != 0xF0)
	MOVF       PORTD+0, 0
	XORLW      240
	BTFSC      STATUS+0, 2
	GOTO       L_teclado74
;MyProject.c,268 :: 		PORTD = 0xFE;
	MOVLW      254
	MOVWF      PORTD+0
;MyProject.c,269 :: 		switch (PORTD)
	GOTO       L_teclado75
;MyProject.c,271 :: 		case 0xEE: temp = '1'; break;
L_teclado77:
	MOVLW      49
	MOVWF      _temp+0
	GOTO       L_teclado76
;MyProject.c,272 :: 		case 0xDE: temp = '2'; break;
L_teclado78:
	MOVLW      50
	MOVWF      _temp+0
	GOTO       L_teclado76
;MyProject.c,273 :: 		case 0xBE: temp = '3'; break;
L_teclado79:
	MOVLW      51
	MOVWF      _temp+0
	GOTO       L_teclado76
;MyProject.c,274 :: 		case 0x7E: temp = 'A'; break;
L_teclado80:
	MOVLW      65
	MOVWF      _temp+0
	GOTO       L_teclado76
;MyProject.c,275 :: 		}
L_teclado75:
	MOVF       PORTD+0, 0
	XORLW      238
	BTFSC      STATUS+0, 2
	GOTO       L_teclado77
	MOVF       PORTD+0, 0
	XORLW      222
	BTFSC      STATUS+0, 2
	GOTO       L_teclado78
	MOVF       PORTD+0, 0
	XORLW      190
	BTFSC      STATUS+0, 2
	GOTO       L_teclado79
	MOVF       PORTD+0, 0
	XORLW      126
	BTFSC      STATUS+0, 2
	GOTO       L_teclado80
L_teclado76:
;MyProject.c,276 :: 		PORTD = 0xFD;
	MOVLW      253
	MOVWF      PORTD+0
;MyProject.c,277 :: 		switch (PORTD)
	GOTO       L_teclado81
;MyProject.c,279 :: 		case 0xED: temp = '4'; break;
L_teclado83:
	MOVLW      52
	MOVWF      _temp+0
	GOTO       L_teclado82
;MyProject.c,280 :: 		case 0xDD: temp = '5'; break;
L_teclado84:
	MOVLW      53
	MOVWF      _temp+0
	GOTO       L_teclado82
;MyProject.c,281 :: 		case 0xBD: temp = '6'; break;
L_teclado85:
	MOVLW      54
	MOVWF      _temp+0
	GOTO       L_teclado82
;MyProject.c,282 :: 		case 0x7D: temp = 'B'; break;
L_teclado86:
	MOVLW      66
	MOVWF      _temp+0
	GOTO       L_teclado82
;MyProject.c,283 :: 		}
L_teclado81:
	MOVF       PORTD+0, 0
	XORLW      237
	BTFSC      STATUS+0, 2
	GOTO       L_teclado83
	MOVF       PORTD+0, 0
	XORLW      221
	BTFSC      STATUS+0, 2
	GOTO       L_teclado84
	MOVF       PORTD+0, 0
	XORLW      189
	BTFSC      STATUS+0, 2
	GOTO       L_teclado85
	MOVF       PORTD+0, 0
	XORLW      125
	BTFSC      STATUS+0, 2
	GOTO       L_teclado86
L_teclado82:
;MyProject.c,284 :: 		PORTD = 0xFB;
	MOVLW      251
	MOVWF      PORTD+0
;MyProject.c,285 :: 		switch (PORTD)
	GOTO       L_teclado87
;MyProject.c,287 :: 		case 0xEB: temp = '7'; break;
L_teclado89:
	MOVLW      55
	MOVWF      _temp+0
	GOTO       L_teclado88
;MyProject.c,288 :: 		case 0xDB: temp = '8'; break;
L_teclado90:
	MOVLW      56
	MOVWF      _temp+0
	GOTO       L_teclado88
;MyProject.c,289 :: 		case 0xBB: temp = '9'; break;
L_teclado91:
	MOVLW      57
	MOVWF      _temp+0
	GOTO       L_teclado88
;MyProject.c,290 :: 		case 0x7B: temp = 'C'; break;
L_teclado92:
	MOVLW      67
	MOVWF      _temp+0
	GOTO       L_teclado88
;MyProject.c,291 :: 		}
L_teclado87:
	MOVF       PORTD+0, 0
	XORLW      235
	BTFSC      STATUS+0, 2
	GOTO       L_teclado89
	MOVF       PORTD+0, 0
	XORLW      219
	BTFSC      STATUS+0, 2
	GOTO       L_teclado90
	MOVF       PORTD+0, 0
	XORLW      187
	BTFSC      STATUS+0, 2
	GOTO       L_teclado91
	MOVF       PORTD+0, 0
	XORLW      123
	BTFSC      STATUS+0, 2
	GOTO       L_teclado92
L_teclado88:
;MyProject.c,292 :: 		PORTD = 0xF7;
	MOVLW      247
	MOVWF      PORTD+0
;MyProject.c,293 :: 		switch (PORTD)
	GOTO       L_teclado93
;MyProject.c,295 :: 		case 0xE7: temp = '*'; break;
L_teclado95:
	MOVLW      42
	MOVWF      _temp+0
	GOTO       L_teclado94
;MyProject.c,296 :: 		case 0xD7: temp = '0'; break;
L_teclado96:
	MOVLW      48
	MOVWF      _temp+0
	GOTO       L_teclado94
;MyProject.c,297 :: 		case 0xB7: temp = '#'; break;
L_teclado97:
	MOVLW      35
	MOVWF      _temp+0
	GOTO       L_teclado94
;MyProject.c,298 :: 		case 0x77: temp = 'D'; break;
L_teclado98:
	MOVLW      68
	MOVWF      _temp+0
	GOTO       L_teclado94
;MyProject.c,299 :: 		}
L_teclado93:
	MOVF       PORTD+0, 0
	XORLW      231
	BTFSC      STATUS+0, 2
	GOTO       L_teclado95
	MOVF       PORTD+0, 0
	XORLW      215
	BTFSC      STATUS+0, 2
	GOTO       L_teclado96
	MOVF       PORTD+0, 0
	XORLW      183
	BTFSC      STATUS+0, 2
	GOTO       L_teclado97
	MOVF       PORTD+0, 0
	XORLW      119
	BTFSC      STATUS+0, 2
	GOTO       L_teclado98
L_teclado94:
;MyProject.c,300 :: 		}
L_teclado74:
;MyProject.c,301 :: 		PORTD = 0xF0;
	MOVLW      240
	MOVWF      PORTD+0
;MyProject.c,302 :: 		while (PORTD != 0xF0);
L_teclado99:
	MOVF       PORTD+0, 0
	XORLW      240
	BTFSC      STATUS+0, 2
	GOTO       L_teclado100
	GOTO       L_teclado99
L_teclado100:
;MyProject.c,303 :: 		delay_ms(51);
	MOVLW      133
	MOVWF      R12+0
	MOVLW      118
	MOVWF      R13+0
L_teclado101:
	DECFSZ     R13+0, 1
	GOTO       L_teclado101
	DECFSZ     R12+0, 1
	GOTO       L_teclado101
	NOP
;MyProject.c,304 :: 		}
L_end_teclado:
	RETURN
; end of _teclado

_main:

;MyProject.c,306 :: 		void main()
;MyProject.c,308 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;MyProject.c,309 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;MyProject.c,310 :: 		C1ON_bit = 0;
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;MyProject.c,311 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;MyProject.c,312 :: 		TRISB = 0;
	CLRF       TRISB+0
;MyProject.c,313 :: 		PORTB = 0;
	CLRF       PORTB+0
;MyProject.c,314 :: 		TRISC.F1 = 0;
	BCF        TRISC+0, 1
;MyProject.c,315 :: 		PORTC.F1 = 0;
	BCF        PORTC+0, 1
;MyProject.c,316 :: 		TRISC.F2 = 0;
	BCF        TRISC+0, 2
;MyProject.c,317 :: 		PORTC.F2 = 0;
	BCF        PORTC+0, 2
;MyProject.c,318 :: 		TRISD = 0xF0;
	MOVLW      240
	MOVWF      TRISD+0
;MyProject.c,319 :: 		PORTD = 0xF0;
	MOVLW      240
	MOVWF      PORTD+0
;MyProject.c,320 :: 		TRISE = 0x00;
	CLRF       TRISE+0
;MyProject.c,321 :: 		PORTE = 0x00;
	CLRF       PORTE+0
;MyProject.c,322 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,323 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,324 :: 		Lcd_cmd(_Lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,326 :: 		ver(1,txt1);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt1+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt1+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,327 :: 		ver(2,txt2);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt2+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt2+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,328 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main102:
	DECFSZ     R13+0, 1
	GOTO       L_main102
	DECFSZ     R12+0, 1
	GOTO       L_main102
	DECFSZ     R11+0, 1
	GOTO       L_main102
	NOP
	NOP
;MyProject.c,329 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,330 :: 		ver(1,txt3);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt3+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt3+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,331 :: 		ver(2,txt4);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt4+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt4+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,332 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main103:
	DECFSZ     R13+0, 1
	GOTO       L_main103
	DECFSZ     R12+0, 1
	GOTO       L_main103
	DECFSZ     R11+0, 1
	GOTO       L_main103
	NOP
	NOP
;MyProject.c,333 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,334 :: 		ver(1,txt5);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt5+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt5+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,335 :: 		ver(2,txt6);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt6+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt6+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,336 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main104:
	DECFSZ     R13+0, 1
	GOTO       L_main104
	DECFSZ     R12+0, 1
	GOTO       L_main104
	DECFSZ     R11+0, 1
	GOTO       L_main104
	NOP
	NOP
;MyProject.c,337 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,338 :: 		ver(1,txt7);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt7+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt7+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,339 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main105:
	DECFSZ     R13+0, 1
	GOTO       L_main105
	DECFSZ     R12+0, 1
	GOTO       L_main105
	DECFSZ     R11+0, 1
	GOTO       L_main105
	NOP
	NOP
;MyProject.c,340 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,341 :: 		ver(1,txt10);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt10+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt10+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,342 :: 		ver(2,txt11);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt11+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt11+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,343 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main106:
	DECFSZ     R13+0, 1
	GOTO       L_main106
	DECFSZ     R12+0, 1
	GOTO       L_main106
	DECFSZ     R11+0, 1
	GOTO       L_main106
	NOP
	NOP
;MyProject.c,344 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,345 :: 		ver(1,txt13);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt13+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt13+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,346 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main107:
	DECFSZ     R13+0, 1
	GOTO       L_main107
	DECFSZ     R12+0, 1
	GOTO       L_main107
	DECFSZ     R11+0, 1
	GOTO       L_main107
	NOP
	NOP
;MyProject.c,347 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,348 :: 		ver(1,txt16);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt16+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt16+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,349 :: 		ver(2,txt17);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt17+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt17+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,350 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main108:
	DECFSZ     R13+0, 1
	GOTO       L_main108
	DECFSZ     R12+0, 1
	GOTO       L_main108
	DECFSZ     R11+0, 1
	GOTO       L_main108
	NOP
	NOP
;MyProject.c,351 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,352 :: 		ver(1,txt14);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt14+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt14+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,353 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main109:
	DECFSZ     R13+0, 1
	GOTO       L_main109
	DECFSZ     R12+0, 1
	GOTO       L_main109
	DECFSZ     R11+0, 1
	GOTO       L_main109
	NOP
	NOP
;MyProject.c,354 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,355 :: 		ver(1,txt16);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt16+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt16+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,356 :: 		ver(2,txt17);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt17+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt17+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,357 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main110:
	DECFSZ     R13+0, 1
	GOTO       L_main110
	DECFSZ     R12+0, 1
	GOTO       L_main110
	DECFSZ     R11+0, 1
	GOTO       L_main110
	NOP
	NOP
;MyProject.c,358 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,359 :: 		ver(1,txt15);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt15+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt15+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,360 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main111:
	DECFSZ     R13+0, 1
	GOTO       L_main111
	DECFSZ     R12+0, 1
	GOTO       L_main111
	DECFSZ     R11+0, 1
	GOTO       L_main111
	NOP
	NOP
;MyProject.c,361 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,362 :: 		ver(1,txt16);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt16+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt16+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,363 :: 		ver(2,txt17);
	MOVLW      2
	MOVWF      FARG_ver_F+0
	MOVLW      _txt17+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt17+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,364 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main112:
	DECFSZ     R13+0, 1
	GOTO       L_main112
	DECFSZ     R12+0, 1
	GOTO       L_main112
	DECFSZ     R11+0, 1
	GOTO       L_main112
	NOP
	NOP
;MyProject.c,365 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,366 :: 		while(1){
L_main113:
;MyProject.c,367 :: 		ver(1,txt33);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt33+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt33+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,368 :: 		lcd_out(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,369 :: 		Cantidad();
	CALL       _Cantidad+0
;MyProject.c,370 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,371 :: 		ver(1,txt34);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt34+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt34+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,372 :: 		lcd_out(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,373 :: 		Cantidad1();
	CALL       _Cantidad1+0
;MyProject.c,374 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,375 :: 		ver(1,txt35);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt35+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt35+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,376 :: 		lcd_out(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,377 :: 		Cantidad2();
	CALL       _Cantidad2+0
;MyProject.c,378 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,379 :: 		ver(1,txt36);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt36+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt36+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,380 :: 		lcd_out(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,381 :: 		Cantidad3();
	CALL       _Cantidad3+0
;MyProject.c,382 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,383 :: 		ver(1,txt37);
	MOVLW      1
	MOVWF      FARG_ver_F+0
	MOVLW      _txt37+0
	MOVWF      FARG_ver_txt+0
	MOVLW      hi_addr(_txt37+0)
	MOVWF      FARG_ver_txt+1
	CALL       _ver+0
;MyProject.c,384 :: 		lcd_out(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,385 :: 		Cantidad4();
	CALL       _Cantidad4+0
;MyProject.c,386 :: 		Lcd_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,387 :: 		Giros();
	CALL       _Giros+0
;MyProject.c,388 :: 		}
	GOTO       L_main113
;MyProject.c,389 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
