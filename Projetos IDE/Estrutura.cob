
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: Primeiro contato com COBOL
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
       77  WRK-NOME       PIC X(12)     VALUE SPACES.
       77  WRK-IDADE      PIC 99        VALUE ZEROS.
       01  WRK-GENERO     PIC X(3)      VALUE SPACES.
       77  WRK-SALARIO    PIC 9(04)V99  VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE NOME"
             ACCEPT WRK-NOME.
           DISPLAY "DIGITE A IDADE"
             ACCEPT WRK-IDADE.
           DISPLAY "DIGITE O GENERO"
             ACCEPT WRK-GENERO.
           DISPLAY "DIGITE O SALARIO"
             ACCEPT WRK-SALARIO.
       0002-MOSTRA   SECTION.
           DISPLAY "NOME: " WRK-NOME "IDADE: " WRK-IDADE
           DISPLAY "GENERO: " WRK-GENERO.
           DISPLAY "SALARIO: " WRK-SALARIO.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM VARIAVEIS.
