       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: VARIAVEL DE GRUPO ESTRUTURAL(GRUPO)2
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

       01  WRK-ENTRADA.
           05 WRK-CODIGO       PIC 9(04)   VALUE ZERO.
           05 WRK-NOME         PIC X(15)   VALUE SPACE.
           05 WRK-SALARIO      PIC 9(06)   VALUE ZERO.
       01  WRK-DADOS.
           05 WRK-NUM1         PIC 9(03)   VALUE ZERO.
           05 WRK-NUM2         PIC 9(03)   VALUE ZERO.
           05 WRK-RESUL        PIC 9(03)   VALUE ZERO.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "ENTRE COM A LINHA DE DADOS"
             ACCEPT WRK-ENTRADA.
           DISPLAY "ENTRE COM 2 NUMEROS"
             ACCEPT WRK-DADOS.

             COMPUTE WRK-RESUL = WRK-NUM1 + WRK-NUM2.

       0002-MOSTRA   SECTION.
           DISPLAY "CODIGO..." WRK-CODIGO.
           DISPLAY "NOME..." WRK-NOME.
           DISPLAY "SALARIO..." WRK-SALARIO.
           DISPLAY "SOMA DOS VALORES = " WRK-RESUL.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM ESTUDO.
