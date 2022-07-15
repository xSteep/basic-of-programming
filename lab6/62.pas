PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;        
BEGIN{Split}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(Odds, Ch);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          Next := 'O'
        END;
      READ(INPUT, Ch)
    END;
  WRITELN(Odds, '#');
  WRITELN(Evens, '#');
  RESET(Odds);
  READ(Odds, Ch);
  WHILE Ch <> '#'
  DO 
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Odds, Ch)
    END;
  WRITE(OUTPUT); 
  RESET(Evens);
  READ(Evens, Ch);
  WHILE Ch <> '#'
  DO 
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Evens, Ch)
    END;
  WRITE(OUTPUT);        
END.{Split}
