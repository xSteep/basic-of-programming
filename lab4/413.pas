﻿PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land' для 1 и '...by sea' для 2
 иначе печать сообщения об ошибке}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns = 'L'
  THEN
    READ(Lanterns);
  IF Lanterns = 'L'
  THEN
    WRITELN('The British are coming by sea.')
  ELSE
    WRITELN('The British are coming by land.')
END. {PaulRevere}
