
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: Primeiro contato com COBOL
      *== DATA: 17/09/2024
      *== OBS:
      *=================================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME    PIC X(12) VALUE SPACES.
       77  WRK-IDADE   PIC 99 VALUE ZEROS.
       01  WRK-GENERO  PIC X(5)  VALUE SPACES.
       PROCEDURE DIVISION.
       0002-MAIN-PROCEDURE SECTION.
           DISPLAY "DIGITE NOME, IDADE E GENERO "
           ACCEPT WRK-NOME.
           ACCEPT WRK-IDADE.
           ACCEPT WRK-GENERO.
           DISPLAY "NOME: " WRK-NOME "IDADE: " WRK-IDADE.
           DISPLAY "GENERO: " WRK-GENERO.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
