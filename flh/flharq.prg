FUNCTION dbCRIA
   IF !FILE("dBsys.DBF")
      CAMPO1:={}
      AADD( CAMPO1,{"USUARIO","C", 30,  0})   
      AADD( CAMPO1,{"SENHA"  ,"C",  6,  0})
      AADD( CAMPO1,{"NIVEL"  ,"N",  1,  0})
      DBCREATE("dBsys",CAMPO1)
      IF FILE("DBSYS.DBF")
         USE DBSYS
         INDEX on SENHA+USUARIO to iDSYS1.NTX 
         INDEX on USUARIO+SENHA to iDSYS2.NTX 
         ALERT("PARA ENTRAR NO SISTEMA PELA PRIMEIRA VEZ,;"+;
               "CADASTRE PELO MENUS UM USUARIO E SENHA COM NIVEL 3;;"+;
               ";AGORA SEU SISTEMA JA ESTA PRONTO PARA O TRABALHO.;"+;
               ";PARA RECLAMA��ES OU SUGEST�ES ENTRER EM CONTATO COM O PROGRAMADOR;;"+;
               ";"+M->AUTOR)
         INCSNH()
         CLS
         CLOSE DATABASES

        ELSE
         ALERT("PROBLEMAS NA CRIACAO DE ARQUIVOS")
         QUIT
      ENDIF
   ENDIF
   IF !FILE("dBFLH.DBF") 
      CAMPO2:={}
      AADD( CAMPO2,{"GRUPO"      ,"C", 10,  0}) ;@ 00,00 SAY "CRIADO CAMPO1 /"+DBF()  
      AADD( CAMPO2,{"CODIGO"     ,"C",  6,  0}) ;@ 00,00 SAY "CRIADO CAMPO2 /"+DBF()  
      AADD( CAMPO2,{"ALCUNHA"    ,"C", 30,  0}) ;@ 00,00 SAY "CRIADO CAMPO3 /"+DBF()  
      AADD( CAMPO2,{"NOME"       ,"C", 45,  0}) ;@ 00,00 SAY "CRIADO CAMPO4 /"+DBF()  
      AADD( CAMPO2,{"CARGO"      ,"C", 30,  0}) ;@ 00,00 SAY "CRIADO CAMPO5 /"+DBF()  
      AADD( CAMPO2,{"RG"         ,"C", 15,  0}) ;@ 00,00 SAY "CRIADO CAMPO6 /"+DBF()  
      AADD( CAMPO2,{"CPF"        ,"C", 15,  0}) ;@ 00,00 SAY "CRIADO CAMPO7 /"+DBF()  
      AADD( CAMPO2,{"CTRABALHON" ,"C", 15,  0}) ;@ 00,00 SAY "CRIADO CAMPO8 /"+DBF()  
      AADD( CAMPO2,{"CTRABALHOS" ,"C", 15,  0}) ;@ 00,00 SAY "CRIADO CAMPO9 /"+DBF()  
      AADD( CAMPO2,{"NASCIMENTO" ,"D",  8,  0}) ;@ 00,00 SAY "CRIADO CAMPO10 /"+DBF()  
      AADD( CAMPO2,{"ENDERECO"   ,"C",  6,  0}) ;@ 00,00 SAY "CRIADO CAMPO11/"+DBF()  
      AADD( CAMPO2,{"FONE"       ,"C", 15,  0}) ;@ 00,00 SAY "CRIADO CAMPO12/"+DBF()  
      AADD( CAMPO2,{"SALARIOQ"   ,"N", 03,  1}) ;@ 00,00 SAY "CRIADO CAMPO13/"+DBF()  
      AADD( CAMPO2,{"SALARIOB"   ,"N", 10,  2}) ;@ 00,00 SAY "CRIADO CAMPO14/"+DBF()  
      AADD( CAMPO2,{"SALARIOP"   ,"N", 10,  2}) ;@ 00,00 SAY "CRIADO CAMPO15/"+DBF()  
      AADD( CAMPO2,{"SALARIOG"   ,"N", 10,  2}) ;@ 00,00 SAY "CRIADO CAMPO16/"+DBF()  
      AADD( CAMPO2,{"SALARIOX"   ,"N", 10,  2}) ;@ 00,00 SAY "CRIADO CAMPO17/"+DBF()  
      AADD( CAMPO2,{"DATA"       ,"D",  8,  0}) ;@ 00,00 SAY "CRIADO CAMPO18/"+DBF()  
      AADD( CAMPO2,{"ADMISAO"    ,"D",  8,  0}) ;@ 00,00 SAY "CRIADO CAMPO19/"+DBF()  
      AADD( CAMPO2,{"DEMISAO"    ,"D",  8,  0}) ;@ 00,00 SAY "CRIADO CAMPO20/"+DBF()  
      DBCREATE("dBFLH",CAMPO2)
      IF FILE("DBFLH.DBF")
         ALERT("OS ARQUIVOS FORAM CRIADOS COM EXITO",,"W+/G")
        ELSE
         ALERT("OS ARQUIVOS NAO PUDERAM SER CRIADOS COM EXITO","W+/R")
         QUIT
      ENDIF
   ENDIF
   IF !FILE("dBSAL.DBF") 
      CAMPO3:={}
      AADD( CAMPO3,{"SMINIMO"   ,"N", 10,  0}) ;@ 00,00 SAY "CRIADO CAMPO01/"+DBF()  
      AADD( CAMPO3,{"SDATA"     ,"D",  8,  0}) ;@ 00,00 SAY "CRIADO CAMPO02/"+DBF()  
      DBCREATE("dBSAL",CAMPO3)
      IF FILE("DBSAL.DBF")
         ALERT("SUCESSO NA CRIACAO DO ARQUIVO "+DBF(),,"W+/G")
        ELSE
         ALERT("FALHA NA CRIACAO DO ARQUIVO "+DBF(),"W+/R")
         QUIT
      ENDIF
   ENDIF

RETURN.T.
 
 FUNCTION dBcompacta
 CLOSE DATABASES
 SAVE SCREEN TO M->T_ELA
 RELEVO(05, 05, 21, 54,.F.,,2) // BARRA EQUERDA
 RELEVO(06, 06, 17, 53,.F.,,2) // BARRA DE TITULO
 RELEVO(18, 06, 20, 53,.T.,,2) // BARRA DE INFERIOR
 @ 07, 08 SAY PADC("MANUTEN��O DA BASE DE DADOS",44)  COLOR "W+ /R"
 @ 11, 08 SAY PADC("ATUALIZANDO BASE DE DADOS",43)    COLOR "BG+/B"
 *
 SELE 1
 USE DBSYS ;PACK;@ 12, 08 SAY PADC(dbf(),43)  COLOR "W+/B"
 INDEX on SENHA+USUARIO to iDSYS1.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� IDSYS1.NTX ����",43) color "B+/b"
 INDEX on USUARIO+SENHA to iDSYS2.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� IDSYS2.NTX ����",43) color "B+/b"
 *
 SELE 2
 USE DBFLH ;PACK;@ 12, 08 SAY PADC(dbf(),43)  COLOR "W+/B"
 INDEX on NOME+GRUPO+DTOS(DEMISAO) to idFLH1.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� iDFLH1.NTX ����",43) color "B+/b"
 INDEX on GRUPO+FONE+DTOS(DEMISAO) to idFLH2.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� iDFLH2.NTX ����",43) color "B+/b"
 *
 SELE 3
 USE DBSAL ;PACK;@ 12, 08 SAY PADC(dbf(),43)  COLOR "W+/B"
 INDEX on DTOS(SDATA)+STR(SMINIMO) to idSAL1.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� iDFLH1.NTX ����",43) color "B+/b"
 INDEX on STR(SMINIMO)+DTOS(SDATA) to idSAL2.NTX EVAL {|| GRAFICO(19,07,43) } EVERY 1 ;@ 14,08 SAY PADC("۲�� iDFLH2.NTX ����",43) color "B+/b"
 SET INDEX TO IDSAL1.NTX
 PUBLIC SALARIO_ATUAL, DATA_ATUAL
 M->SALARIO_ATUAL=SMINIMO
 M->DATA_ATUAL   =SDATA
 RESTORE SCREEN FROM M->T_ELA
 RETURN.T.                                                                   

FUNCTION GRAFICO(LIN,COL,TAM,TITULO)
 *IF DBF()="DBFLH"
 *PRODUTIVIDADE=(SALARIOB*5)/100
 *REPLACE SALARIOP WITH PRODUTIVIDADE
 *ENDIF
 IF LIN=NIL
    LIN=12
 ENDIF
 IF COL=NIL
    COL=(80-54)-2
 ENDIF
 IF TAM=NIL
    TAM=54
 ENDIF
 IF TITULO=NIL
    TITULO="ARQUIVO:"+ALIAS()
 ENDIF
 TAM=TAM-5
 GRAFICO   := int ( ( RecNo() / LastRec() ) * TAM  )
 PERCENTUAL:= int ( ( RecNo() / LastRec() ) * 100  )
 @ LIN+0,COL+5+ grafico say "�"+repl(" ",TAM-grafico)                     color "RG+/B"
 @ LIN+0,COL+0+ 0       say padL(alltrim(Str(percentual,3 )+"%"),4)       color "RG+/B"
Return (.T.)

  FUNCTION DBMANUTENCAO
  IF DBF()+".DBF"="DBFLH.DBF"
        ARQ=DBF()+".DBF - REGISTRO DE FUNCIONARIOS"
  ENDIF
  RETURN.T.
