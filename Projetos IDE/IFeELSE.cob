       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: IF E ELSE
      *== DATA: 20/09/2024
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

       77  WRK-NOTA1      PIC 99V99         VALUE  ZERO.
       77  WRK-NOTA2      PIC 99V99         VALUE  ZERO.
       77  WRK-NOTA3      PIC 99V99         VALUE  ZERO.
       77  WRK-MEDIA      PIC 99V99         VALUE  ZERO.
       77  WRK-MEDIA-ED   PIC Z9,99         VALUE  ZERO.

       PROCEDURE DIVISION.
       0001-RECEBE   SECTION.
           DISPLAY "DIGITE A PRIMEIRA NOTA "
             ACCEPT WRK-NOTA1.
           DISPLAY "DIGITE A SEGUNDA NOTA "
             ACCEPT WRK-NOTA2.
           DISPLAY "DIGITE A TERCEIRA NOTA "
             ACCEPT WRK-NOTA3.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2 + WRK-NOTA3)/3.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.

       0002-MOSTRA   SECTION.

           DISPLAY " " WRK-NOTA1 " " WRK-NOTA2 " " WRK-NOTA3.
           DISPLAY "MEDIA = " WRK-MEDIA-ED.
           IF WRK-MEDIA GREATER THAN OR EQUAL 7
              DISPLAY "APROVADO"
            ELSE
              IF WRK-MEDIA GREATER THAN OR EQUAL 2
               DISPLAY "RECUPERACAO"
            ELSE
              DISPLAY "REPROVADO"
           END-IF.

       0003-FINALIZAR SECTION.

           STOP RUN.
       END PROGRAM ESTUDO.
