PROGRAM CountReverse(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN{CountReverse}
  Start;
  WHILE NOT EOLN
  DO
    BEGIN
      IF Ch1 > Ch2
    THEN
      IF Ch2 < Ch3
      THEN
        Bump;
    IF Ch1 < Ch2
    THEN
      IF Ch2 > Ch3
      THEN
        Bump;
      Ch1 := Ch2;
      Ch2 := Ch3:
      READ(Ch3)  
    END;
  WRITELN;
  Value(Ch1, Ch2, Ch3);
  IF (X100 = '9') AND (X10 = '9') AND (X1 = '9')
  THEN 
    WRITELN('Колличество')
  ELSE
    WRITELN('колличество пробелов', X100, X10, X1, '.')
END.{CountReverse}
