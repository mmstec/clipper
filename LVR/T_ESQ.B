FUNCTION T_ESQ
COR("TITULO")
@ 00,60 SAY SPACE(20)
@ 00,75 SAY CHR(16)+CHR(16) COLOR("N+/"+ALLTRIM(SUBS(CONTECOR[13],4)))
@ 00,72 SAY CHR(17)+CHR(17) COLOR("R+*/"+ALLTRIM(SUBS(CONTECOR[13],4)))
KEYBOARD CHR(27)
BUFFER=CHR(19)+CHR(13)
