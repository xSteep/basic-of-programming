PROGRAM Dup(INPUT,OUTPUT);
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {Dup}
  READ(Ch1, Ch2, Ch3);
  IF Ch1 = Ch2
  THEN
    WRITE(Ch1, Ch2, ' ');
  IF Ch1 = Ch3
  THEN
    WRITE(Ch1, Ch3, ' ');
  IF Ch2 = Ch3
  THEN
    WRITE(Ch2, Ch3);
  WRITELN
END. {Dup}
