       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTUDO.
      *=================================================================
      *== AUTOR: Francisco Alexandre
      *== OBJETIVO: ADAPTAR AS BOAS PRATICAS COM PERFORM
      *== DATA: 03/10/2024
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
       77  WRK-MEDIA      PIC 99V99         VALUE  ZERO.
       77  WRK-MEDIA-ED   PIC Z9,99         VALUE  ZERO.
       77  WRK-NIVEL      PIC X(5)          VALUE  SPACE.

       PROCEDURE DIVISION.

       0001-PRINCIPAL SECTION.
           PERFORM 0002-INICIALIZAR
           PERFORM 0003-PROCESSAR
           PERFORM 0004-FINALIZAR
           STOP RUN.


       0002-INICIALIZAR   SECTION.

           DISPLAY "DIGITE O NIVEL (FUND / MEDIO) "
             ACCEPT WRK-NIVEL.
           DISPLAY "DIGITE A PRIMEIRA NOTA "
             ACCEPT WRK-NOTA1.
           DISPLAY "DIGITE A SEGUNDA NOTA "
             ACCEPT WRK-NOTA2.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/ 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.

       0003-PROCESSAR   SECTION.

           DISPLAY 'MEDIA = ' WRK-MEDIA-ED
             IF WRK-NIVEL(01:04) EQUAL "FUND" AND
               WRK-MEDIA GREATER THAN OR EQUAL 6
                DISPLAY "APROVADO"
             END-IF.
             IF WRK-NIVEL(01:04) EQUAL "FUND" AND
               WRK-MEDIA LESS 6
                 DISPLAY "REPROVADO"
             END-IF.
             IF WRK-NIVEL(01:05) EQUAL "MEDIO" AND WRK-MEDIA
                 GREATER THAN OR EQUAL 7
                 DISPLAY "APROVADO"
             END-IF.
             IF WRK-NIVEL(01:05) EQUAL "MEDIO" AND WRK-MEDIA
                 LESS 7
                 DISPLAY "REPROVADO"
               END-IF.

           PERFORM 0002-INICIALIZAR.



       0004-FINALIZAR SECTION.

           DISPLAY "FIM DE PROGRAMA".


       END PROGRAM ESTUDO.
