Program Last(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN {Last}    
  Ch := ' ';
  WHILE NOT EOLN
  DO
    READ(Ch);
  WRITELN(Ch)
END. {Last}
