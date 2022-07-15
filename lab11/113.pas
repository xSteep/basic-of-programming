Program Last(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN {Last}
  Ch := ' ';
  IF NOT EOLN AND NOT EOF
  THEN
    READ(Ch);
  WHILE NOT EOLN AND NOT EOF
  DO
    BEGIN
      WRITE(Ch);
      READ(Ch)
    END;
  WRITELN
END. {Last}
