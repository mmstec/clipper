USE PRODUTO
CLEAR
DO WHILE .T.
        BROWSE(1,1,24,70,.T.,"PESQ")
        IF LASTKEY()=27
                QUIT
        ENDIF
ENDDO
FUNCTION PESQ
DBSEEK(INKEY())
