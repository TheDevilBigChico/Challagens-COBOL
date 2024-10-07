       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS-GRUPO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: VARIAVEL DE NIVEL ESTRUTURAL - FILLER
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

       01  WRK-DATA.
           05 WRK-ANO    PIC X(04)   VALUE SPACES.
           05 WRK-MES    PIC X(02)   VALUE SPACES.
           05 WRK-DIA    PIC X(02)   VALUE SPACES.
       01  WRK-DATA2.
           05 WRK-DIA    PIC X(02)   VALUE SPACES.
           05 FILLER     PIC X(01)   VALUE "/".
           05 WRK-MES    PIC X(02)   VALUE SPACES.
           05 FILLER     PIC X(01)   VALUE "/".
           05 WRK-ANO    PIC X(04)   VALUE SPACES.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           ACCEPT WRK-DATA  FROM DATE YYYYMMDD.
            MOVE CORR WRK-DATA TO WRK-DATA2.
       0002-MOSTRA   SECTION.

           DISPLAY "DATA INTEIRA " WRK-DATA.

           DISPLAY "DIA " WRK-DIA OF WRK-DATA2" MES " WRK-MES OF
           WRK-DATA2 " ANO " WRK-ANO OF WRK-DATA2.

           DISPLAY WRK-DATA2.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM VARIAVEIS-GRUPO.
