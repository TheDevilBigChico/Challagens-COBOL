       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: IF E ELSE - CALCULO DE FRETE
      *== DATA: 27/09/2024
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

           IF WRK-DESTINO EQUAL "SP"
            COMPUTE WRK-FRETE = WRK-VALOR * 0,10
           END-IF.
               IF WRK-DESTINO EQUAL "RJ"
                 COMPUTE WRK-FRETE = WRK-VALOR * 0,15
                 END-IF.
                     IF WRK-DESTINO EQUAL "ES"
                       COMPUTE WRK-FRETE = WRK-VALOR * 0,20
                       END-IF.

           COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE
           MOVE WRK-VALOR TO WRK-VALOR-ED
           MOVE WRK-FRETE TO WRK-FRETE-ED.

       0004-FINALIZAR SECTION.

           DISPLAY "RESUMO DO PEDIDO: "
           DISPLAY "PRODUTO: " WRK-PRODUTO
           DISPLAY "VALOR DO PRODUTO COM FRETE: " WRK-VALOR-ED.
           DISPLAY "FRETE DESTACADO: " WRK-FRETE-ED.

           STOP RUN.
           END PROGRAM ESTUDO.
