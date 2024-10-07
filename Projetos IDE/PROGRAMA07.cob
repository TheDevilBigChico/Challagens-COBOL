       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: VARIAVEL DE GRUPO ESTRUTURAL(GRUPO)3
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

       01  WRK-DADOS.
           05 WRK-NUM1         PIC 99   VALUE ZERO.
           05 WRK-NUM2         PIC 99   VALUE ZERO.

       77  WRK-RESUL           PIC 9(02)   VALUE ZERO.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "ENTRE COM 2 NUMEROS"
             ACCEPT WRK-DADOS.
             COMPUTE WRK-RESUL = WRK-NUM1 + WRK-NUM2.

       0002-MOSTRA   SECTION.
           DISPLAY "NUM1 = " WRK-NUM1.
           DISPLAY "NUM2 = " WRK-NUM2.
           DISPLAY "SOMA DOS VALORES = " WRK-RESUL.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM ESTUDO.
