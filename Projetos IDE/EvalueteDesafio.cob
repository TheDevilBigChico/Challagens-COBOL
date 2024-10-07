       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: Desafio media EVALUETE
      *== DATA: 30/09/2024
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
       77  WRK-NOTA1        PIC 99V99           VALUE  ZERO.
       77  WRK-NOTA2        PIC 99V99           VALUE  ZERO.
       77  WRK-MEDIA        PIC 99V99           VALUE  ZERO.
      *====================== VARIAVEIS DE EDICAO ======================
       77  WRK-MEDIA-ED     PIC ZZ9,99.


       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.

           DISPLAY "DIGITE NOTA 1 "
             ACCEPT WRK-NOTA1
               IF WRK-NOTA1 GREATER 10
                 DISPLAY "NOTA INVALIDA, DIGITE NOVAMENTE "
                   ACCEPT WRK-NOTA1
               END-IF.
           DISPLAY "DIGITE NOTA 2 "
             ACCEPT WRK-NOTA2.
                IF WRK-NOTA2 GREATER 10
                 DISPLAY "NOTA INVALIDA, DIGITE NOVAMENTE "
                   ACCEPT WRK-NOTA2
                END-IF.

       0003-PROCESSAR SECTION.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2

           MOVE WRK-MEDIA TO WRK-MEDIA-ED.

       0004-FINALIZAR SECTION.


           EVALUATE WRK-MEDIA
             WHEN GREATER 10
               DISPLAY "NOTAS INVALIDAS"
             WHEN >= 6
               DISPLAY "MEDIA = " WRK-MEDIA-ED
               DISPLAY "APROVADO"
             WHEN < 6
               DISPLAY "REPROVADO"
               DISPLAY "MEDIA = " WRK-MEDIA-ED
           END-EVALUATE.

           STOP RUN.
           END PROGRAM ESTUDO.
