﻿PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
на входе:  '...by land' для 1 и '...by sea' для 2
иначе печать сообщения об ошибке}
VAR
Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  IF Lanterns >= '1'
  THEN
    IF Lanterns <= '3'
    THEN
      WRITE('The British are coming by ');
  IF Lanterns = '1'
  THEN
    WRITELN('land.')
  ELSE
    IF Lanterns = '2'
    THEN
      WRITELN('sea.')
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}