       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: PERFORM
      *== DATA: 07/10/2024
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

       77  WRK-NUMERO           PIC 9(03)    VALUE ZERO.
       77  WRK-RESULTADO        PIC 9(03)    VALUE ZERO.
       77  WRK-NUMERO-ED        PIC ZZZ      VALUE ZERO.
       77  WRK-RESULTADO-ED     PIC ZZZ      VALUE ZERO.
       77  WRK-CONTADOR         PIC 99       VALUE 1.
       77  WRK-CONTADOR-ED      PIC ZZ      VALUE ZERO.

       PROCEDURE DIVISION.

       0001-PRINCIPAL SECTION.
           PERFORM 0002-INICIALIZAR
           PERFORM 0003-PROCESSAR
           PERFORM 0004-FINALIZAR
           STOP RUN.


       0002-INICIALIZAR   SECTION.

           DISPLAY "QUAL TABUADA DESEJA VER? "
             ACCEPT WRK-NUMERO.

       0003-PROCESSAR   SECTION.
             PERFORM UNTIL WRK-CONTADOR EQUAL 11
             COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR

             MOVE WRK-RESULTADO TO WRK-RESULTADO-ED
             MOVE WRK-CONTADOR TO WRK-CONTADOR-ED
             MOVE WRK-NUMERO TO WRK-NUMERO-ED

           DISPLAY WRK-NUMERO-ED " X " WRK-CONTADOR-ED " = "
               WRK-RESULTADO-ED

               ADD 1 TO WRK-CONTADOR
             END-PERFORM.

       0004-FINALIZAR SECTION.

           DISPLAY "FIM DE PROGRAMA".


       END PROGRAM ESTUDO.
