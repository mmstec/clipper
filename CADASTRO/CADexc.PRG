FUNCTION excCAD
REG:= recno()
IF M->NIVEL>=2
   IF AT("*",c1NOME)<>0 .AND. M->NIVEL<3
      ALERT('OPERA??O INTERCEPTADA;;Seu n?vel de senha n?o permite esta opera??o.;;N?vel m?nimo nescess?rio: "3"',,"w+/n")
      RETURN.F.
   ENDIF
   IF AT("(C)",c1NOME)<>0 .AND. M->NIVEL<4
      ALERT('OPERA??O INTERCEPTADA;;Seu n?vel de senha n?o permite esta opera??o.;;N?vel m?nimo nescess?rio: "4"',,"w+/n")
      RETURN.F.
   ENDIF
   cMENSAGEM :="????۲???? ELIMINAR REGISTRO ????????۳"+;
             ";"+REPL("?",50)+;
             ";Codigo  :"+PADR(c1CODIGO,40)+;
             ";Nome    :"+PADR(c1NOME,40)  +;
             ";"+REPL("?",50)+;
             ";"+PADC("Eliminar definitivamente este registro do sistema?",50)
             IF (Alert(cMENSAGEM,{ padc("NAO",05), padc("SIM",05) } ,"W+/R") == 2)
                 DELETE
                 PACK
                 REG++
                 TONE(300.2)
                 alert("REGISTRO ELIMINADO")
             ENDIF
ELSE
   ALERT('OPERA??O INTERCEPTADA;;Seu n?vel de senha n?o permite esta opera??o.;;N?vel m?nimo nescess?rio: "2"',,"w+/n")
ENDIF
GOTO REG
RETURN

