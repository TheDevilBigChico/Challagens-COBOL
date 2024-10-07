       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: SOMA DE VALORES COM OPERADOR ADD+
      *== DATA: 19/09/2024
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

       77  WRK-NUM1          PIC 9(04)V99          VALUE ZERO.
       77  WRK-NUM2          PIC 9(04)V99          VALUE ZERO.
       77  WRK-RESUL         PIC 9(06)V99          VALUE ZERO.
       77  WRK-RESUL-ED      PIC Z(06)9,99         VALUE ZERO.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE O PRIMEIRO NUMERO"
             ACCEPT WRK-NUM1.
           DISPLAY "DIGITE O SEGUNDO NUMERO"
             ACCEPT WRK-NUM2.
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.

       0002-MOSTRA   SECTION.

           DISPLAY "RESULTADO = " WRK-RESUL-ED.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM ESTUDO.
