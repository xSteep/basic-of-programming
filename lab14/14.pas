PROGRAM ReverseLine(INPUT, OUTPUT);
VAR
  Ch: CHAR;
PROCEDURE Reverse(VAR F: TEXT);
VAR
  Ch: CHAR;
BEGIN{Reverse}
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      Reverse(F);
      WRITE(Ch)
    END;
END;{Reverse}
BEGIN{ReverseLine}
  Reverse(INPUT);
  WRITELN(Ch)
END.{ReverseLine}
