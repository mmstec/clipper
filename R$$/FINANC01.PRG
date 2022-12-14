
* TITULO     :  M.F.B.   Consulta de Cheques   Vers?o 1.0
* DATA       : 31/10/96
* PROGRAMA   : FINANC01.PRG
* COMENTARIO : CONSULTA (Contas a receber)
 
PARA R_CA
IF M->R_CA="E"
   SET DELETED OFF
   OK_PACK=.T.
ENDIF
**
** Bloco de inser??o C01.B01
**
MENSAGEM("Aguarde abertura de arquivos")
SELE 1
IF .NOT. USEREDE("FINANCAS",.F.,10)
   BEEP()
   MENSAGEM("O arquivo FINANCAS n?o est? dispon?vel",3)
   RETURN
ELSE
   SET INDEX TO FINAN001
ENDIF
SELE 1
**
** Bloco de inser??o C01.B02
**
SET ORDER TO 0
M->X_VERI = .T.
COR("MENU")
@ LIN_MENU,00
@ LIN_MENU,01 SAY IIF(R_CA="C","Consulta",IIF(R_CA="A","Altera??o","Exclus?o"))+" ? Contas a receber"
JANELA(03,02,21,77,"Contas a receber")
L_CON=L_SOM
C_CON=C_SOM
COR("MENU")
@ 05,04 CLEAR TO 19,75
@ 05,04 TO 07,75
@ 07,04 TO 19,75
@ 07,04 SAY "?"
@ 07,75 SAY "?"
DECLARE DB_CONTE[3],DB_CAB[3]
*
* -> Titulos das colunas
DB_CAB[1]="Numero"
DB_CAB[2]="Valor"
DB_CAB[3]="Vencimento"
*
* -> Conteudo das colunas
DB_CONTE[1]='NUMERO_DOC'
DB_CONTE[2]='STR(VALOR__DOC,10,2)'
DB_CONTE[3]='DTOC(VENCIM_DOC)'
IF M->R_CA="E"
   DB_CAB[1]="  "+DB_CAB[1]
   DB_CONTE[1]='DELE_TAR()+" "+'+DB_CONTE[1]
   DB_CAB[3]=DB_CAB[3]+"  "
   DB_CONTE[3]=DB_CONTE[3]+'+" "+DELE_TAR()'
ENDIF
SAI_DB=.T.
**
** Bloco de inser??o C01.B03
**
DO WHILE .T.
   **
   ** Bloco de inser??o C01.B04
   **
   MENSAGEM("Posicione sobre o registro desejado e tecle <ENTER>")
   COR("MENU")
   KEYBOARD CHR(65) 
   ***
   *** Inicio do bloco de substitui??o DB01.B
   DBEDIT(06,05,19,74,DB_CONTE,"EDITAR01",.T.,DB_CAB,"???"," ? ","???")
   *** Final do bloco de substitui??o DB01.B
   ***
   ***
   *** Inicio do bloco de substitui??o C01.B
   SAI_DB=.F.
   MENSAGEM("Tecle <ESC> para sair")
   DO WHILE .T.
      IF LASTKEY()=27
         EXIT
      ENDIF
      EXIT
   ENDDO
   SOMBRA(L_CON,C_CON)
   IF LASTKEY()=27
      EXIT
   ENDIF
ENDDO
SET DELETED ON
RESTSCREEN(LIN_MENU+1,00,23,79,TELA_PRI)
**
** Bloco de inser??o C01.B05
**
*** Final do bloco de substitui??o C01.B
***
 
FUNCTION EDITAR01
**
** Bloco de inser??o C01.B06
**
IF SAI_DB .OR. LASTKEY()=27
   *
   * -> Finaliza edi??o
   RETURN 0
ELSEIF LASTKEY()=13
   *
   * -> Mostra o registro detalhadamente
   SAVE SCREEN TO TE_LA
   DO WHILE .T.
      MENSAGEM("Tecle <ESC> para sair")
      *
      * -> Carrega o conteudo do registro em variaveis
      CARREG01(2)
      IF M->R_CA="A"
         *
         * -> Monta tela de edicao
         IF .NOT. REGLOCK(5)
            BEEP()
            MENSAGEM("Registro bloqueado, tente novamente",3)
            MENSAGEM("Tecle <ESC> para sair")
            RESTORE SCREEN FROM TE_LA
            RETURN 1
         ENDIF
         OK_GETS=CARGET01(2)
         IF OK_GETS
            IF PERG("Confirma altera??es ?")="S"
               *
               * -> Atualiza o banco de dados
               SALVAR01()
               COMMIT
               UNLOCK
               COR("MENU")
               RESTORE SCREEN FROM TE_LA
               KEYBOARD CHR(0)
               L_SOM=L_CON
               C_SOM=C_CON
               RETURN 2
            ELSE
               UNLOCK
               LOOP
            ENDIF
         ELSE
            UNLOCK
            COR("MENU")
            RESTORE SCREEN FROM TE_LA
            KEYBOARD CHR(0)
            L_SOM=L_CON
            C_SOM=C_CON
            RETURN 1
         ENDIF
      ELSEIF M->R_CA="E"
         *
         * -> Mostra registro detalhadamente
         CARGET01(0)
         L_SOM=L_CON
         C_SOM=C_CON
         CLEAR GETS
         IF PERG("Deseja marcar este registro para EXCLUSAO ?")="S"
            IF .NOT. REGLOCK(5)
               BEEP()
               MENSAGEM("Dele??o mal sucedida",3)
               MENSAGEM("Tecle <ESC> para sair")
               RESTORE SCREEN FROM TE_LA
               RETURN 1
            ENDIF
            DELE
         ELSE
            IF .NOT. REGLOCK(5)
               BEEP()
               MENSAGEM("Dele??o mal sucedida",3)
               MENSAGEM("Tecle <ESC> para sair")
               RESTORE SCREEN FROM TE_LA
               RETURN 1
            ENDIF
            RECALL
         ENDIF
         UNLOCK
         COR("MENU")
         RESTORE SCREEN FROM TE_LA
         KEYBOARD CHR(0)
         RETURN 2
      ELSE
         CARGET01(3)
         L_SOM=L_CON
         C_SOM=C_CON
         COR("MENU")
         RESTORE SCREEN FROM TE_LA
         KEYBOARD CHR(0)
         RETURN 1
      ENDIF
   ENDDO
ELSEIF LASTKEY()=1
   *
   * Vai para o comeco do arquivo
   GOTO TOP
ELSEIF LASTKEY()=6
   *
   * -> Vai para o final do arquivo
   GOTO BOTT
ENDIF
RETURN 1
 
* Final do programa FINANC01.PRG