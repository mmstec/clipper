* Empresa     :MMStec INFORMATICA LTDA  *
* Data        :19/09/96 JEQUIE - BAHIA  *
* Responsavel :MARCOS MORAIS DE SOUSA   *

Function TELA_1
SETCOLOR ("N/n")
@ 00,00 CLEAR TO 22,80 
@ 11,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 12,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 13,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴" COLOR "r/n"
@ 14,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 15,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 16,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 17,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 18,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"

@ 13,15 SAY " 白   蔔 " COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? " COLOR "B+/n"
@ 15,15 SAY " ?     ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? " COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔" COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ? " COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽" COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMA" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽?" COLOR "BG+/n"
TONE(800.8)  
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMATICA LTDA (R)" COLOR "B/N"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽? 幡賽賽賞 " COLOR "B+/N"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽? ?      ?" COLOR "BG/N"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽? 賽賽賽賽 " COLOR "BG+/N"
@ 17,15 SAY " ?     賽?     賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽 " COLOR "W/N"



SETCOLOR ("RG+*/R")
@ 18,23 Say "                                 "
@ 19,23 SAY "       D U P L I C A T A S       " 
@ 20,23 SAY "                                 "
@ 21,23 say "    L O J A  &  C I M E N T O    " 
@ 22,23 Say "                                 "
TONE(800.8)

SETCOLOR ("N/w")
      @ 04,08 TO 09,70 DOUBLE 
SETCOLOR ("Rg+/R")
     @ 05,09 CLEAR TO 08,69    
     @ 06,20 SAY "   M.M.S.tec Multiusuario Vers꼘 1.0" 
     @ 07,20 SAY "(C) Copyright by Marcos Morais de Sousa"
     @ 23,00 SAY TIME() COLOR ("W/n")
INKEY (1)
RETURN.F.
******************************************************************************
******************************************************************************

Function TELA_2

SETCOLOR ("N/n")
@ 00,00 CLEAR TO 22,80 

@ 11,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 12,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 13,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴" COLOR "r/n"
@ 14,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 15,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 16,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 17,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 18,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
***************


@ 13,15 SAY " 白   蔔 " COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? " COLOR "B+/n"
@ 15,15 SAY " ?     ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? " COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔" COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ? " COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽" COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMA" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽?" COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMATICA LTDA (R)" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽? 幡賽賽賞 " COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽? ?      ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽? 賽賽賽賽 " COLOR "BG+/n"
@ 17,15 SAY " ?     賽?     賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽 " COLOR "W/n"
SETCOLOR ("RG+*/R")
@ 18,25 CLEAR TO 21,51    
@ 19,30 SAY "SENHA E/OU USUARIO" COLOR "RG+*/R"
@ 20,30 SAY "     INVALIDO(s)  " COLOR "RG+*/R"
TONE(800.8)

SETCOLOR ("N/W")
      @ 04,08 TO 09,70 DOUBLE 
SETCOLOR ("RG+*/R")
     @ 05,09 CLEAR TO 08,69    
     @ 06,20 SAY "   M.M.S.tec Multiusuario Vers꼘 1.0" 
     @ 07,20 SAY "(C) Copyright by Marcos Morais de Sousa"
     @ 23,00 SAY TIME() COLOR ("W/n")

******************************************************************************
******************************************************************************

Function TELA_3
* SETCOLOR ("N/b")
@ 00,00 CLEAR TO 22,80 
@ 11,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 12,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 13,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴" COLOR "r/n"
@ 14,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 15,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "r/n"
@ 16,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 17,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
@ 18,10 SAY "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴?-" COLOR "R/n"
***************


@ 13,15 SAY " 白   蔔 " COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? " COLOR "B+/n"
@ 15,15 SAY " ?     ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? " COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔" COLOR "B+/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?" COLOR "Bg+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ? " COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽" COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMA" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽?" COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽?" COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽?" COLOR "BG+/n"
TONE(800.8)
@ 13,15 Say " 白   蔔 白   蔔 幡賽賽?  ?  INFORMATICA LTDA (R)" COLOR "B/n"
@ 14,15 SAY " ? 霜? ? ? 霜? ? 白複複? 賞? 幡賽賽? 幡賽賽賞 " COLOR "B+/n"
@ 15,15 SAY " ?     ? ?     ? ?     ?  ?  幡賽賽? ?      ? " COLOR "BG/n"
@ 16,15 SAY " ?     ? ?     ? 賽賽賽?  賽 賽賽賽? 賽賽賽賽 " COLOR "BG+/n"
@ 17,15 SAY " ?     賽?     賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽 " COLOR "W/n"

SETCOLOR ("RG+*/R")
@ 18,23 Say "                                 "
@ 19,23 SAY "       D U P L I C A T A S       " 
@ 20,23 SAY "                                 "
@ 21,23 say "    L O J A  &  C I M E N T O    " 
@ 22,23 Say "                                 "
TONE(800.8)

SETCOLOR ("N/W")
      @ 04,08 TO 09,70 DOUBLE 
SETCOLOR ("RG+*/R")
     @ 05,09 CLEAR TO 08,69    
     @ 06,20 SAY "   M.M.S.tec Multiusuario Vers꼘 1.0" 
     @ 07,20 SAY "(C) Copyright by Marcos Morais de Sousa"
     @ 23,00 SAY DATE() COLOR ("W/n")
     @ 23,09 SAY TIME() COLOR ("W/n")
     @ 23,18 SAY "Jequi? - Bahia" COLOR ("W/n")
