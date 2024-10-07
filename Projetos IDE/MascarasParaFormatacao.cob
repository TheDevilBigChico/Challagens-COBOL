       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: MASCARAS PARA FORMATAÇÃO DE VARIAVES
      *== DATA: 17/09/2024
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

       77  WRK-VALOR1          PIC 9(3)V99        VALUE ZEROS.
       77  WRK-VALOR2          PIC 9(3)V99        VALUE ZEROS.
       77  WRK-RESULTADO       PIC S9(3)V99       VALUE ZEROS.
       77  WRK-RESULTADO-ED    PIC -ZZ9,99         VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE O VALOR 1"
             ACCEPT WRK-VALOR1.
           DISPLAY "DIGITE O VALOR 2"
             ACCEPT WRK-VALOR2.
           COMPUTE WRK-RESULTADO = WRK-VALOR1 - WRK-VALOR2.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
       0002-MOSTRA   SECTION.
           DISPLAY "RESULTADO: " WRK-RESULTADO-ED.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM VARIAVEIS.
