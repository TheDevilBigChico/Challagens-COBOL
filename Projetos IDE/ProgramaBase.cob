       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: BASE PARA CRIAR NOVOS ARQUIVOS
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

       01  WRK-OI      PIC X(10)         VALUE SPACE.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE BOM DIA/TARDE/NOITE"
           ACCEPT WRK-OI.

       0002-MOSTRA   SECTION.

           DISPLAY "OIE " WRK-OI.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM ESTUDO.
