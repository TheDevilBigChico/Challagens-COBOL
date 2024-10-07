       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: Utilização de Evaluete
      *== DATA: 30/09/2024
      *== OBS:
      *=================================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *====================== VARIAVEIS DE APOIO =======================
       77  WRK-PRODUTO      PIC X(30)            VALUE  SPACE.
       77  WRK-VALOR        PIC 99(8)V99         VALUE  ZERO.
       77  WRK-FRETE        PIC 99(8)V99         VALUE  ZERO.
       77  WRK-DESTINO      PIC X(2)             VALUE  SPACE.
      *====================== VARIAVEIS DE EDICAO ======================
       77  WRK-VALOR-ED     PIC ZZ.ZZZ.ZZ9,99.
       77  WRK-FRETE-ED     PIC ZZ.ZZZ.ZZ9,99.


       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE O PRODUTO "
             ACCEPT WRK-PRODUTO.
           DISPLAY "DIGITE O VALOR "
             ACCEPT WRK-VALOR.
           DISPLAY "DIGITE O DESTINO (SP/RJ/ES) "
             ACCEPT WRK-DESTINO.


       0003-PROCESSAR SECTION.

           EVALUATE WRK-DESTINO
             WHEN "SP"
              COMPUTE WRK-FRETE = WRK-VALOR * 0,10
               WHEN "RJ"
                 COMPUTE WRK-FRETE = WRK-VALOR * 0,15
                     WHEN "ES"
                       COMPUTE WRK-FRETE = WRK-VALOR * 0,20
                       WHEN OTHER
                        DISPLAY "ESTADO INVALIDO PARA ENVIO"
           END-EVALUATE.

           COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE
           MOVE WRK-VALOR TO WRK-VALOR-ED
           MOVE WRK-FRETE TO WRK-FRETE-ED.

       0004-FINALIZAR SECTION.


           DISPLAY "VALOR FINAL: " WRK-VALOR-ED

           IF WRK-DESTINO = "SP" OR WRK-DESTINO = "RJ" OR
             WRK-DESTINO = "ES"
              DISPLAY "ESTADO VALIDO"
           ELSE
              DISPLAY "ESTADO INVALIDO"
           END-IF.

           IF WRK-FRETE GREATER 0
             DISPLAY "FRETE: " WRK-FRETE-ED
           ELSE
             DISPLAY "NÃO ENTREGAMOS NESSE ESTADO " WRK-DESTINO
           END-IF.

           STOP RUN.
           END PROGRAM ESTUDO.
