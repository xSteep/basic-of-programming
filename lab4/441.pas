﻿PROGRAM SarahRevere (INPUT, OUTPUT);
{Печать сообщения о том как идут британцы, в зависимости 
от того, первым во входе встречается 'land' или 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {Инициализация W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      {Двигать окно, проверять конец данных}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {Конец данных}
        Looking := 'N';
      //WRITELN(W1, W2, W3, W4);
      
      {Проверка окна для  'land'}
      IF W1 = 'l'
        THEN
          IF W2 = 'a'
          THEN
            IF W3 = 'n'
            THEN
              IF W4 = 'd'
              THEN {'land' найдено}
                Looking := 'L';
                
      {Проверка окна для 'sea'}
      IF W2 = 's'
        THEN
          IF W3 = 'e'
          THEN
             IF W4 = 'a'
             THEN {'sea' найдено}
                Looking := 'S'
                
      {Проверка окна для 'air'}
      IF W2 = 'a'
        THEN
          IF W3 = 'i'
          THEN
             IF W4 = 'r'
             THEN {'air' найдено}
                Looking := 'A'
    END;
  {создать сообщение Sarah}
  IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        IF Looking = 'A'
        THEN
          WRITELN('The British are coming by air.')
        ELSE
          WRITELN('Sarah didn''t say')
END. {Sarah revere}
