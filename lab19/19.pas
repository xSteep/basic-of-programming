PROGRAM Prime(INPUT, OUTPUT);
CONST
  Max = 100;
TYPE
  SetType = SET OF 2 .. Max;
VAR
  Sieve: SetType;
  D, N, M: INTEGER;
BEGIN
  D := 2;
  M := 1;
  Sieve := [2 .. Max];
  WHILE D < Max
  DO
    BEGIN
    IF D IN Sieve
    THEN
      BEGIN
        WRITE(D);
        WRITE(', ');
        N := D * M;
        WHILE N <= Max
        DO
          BEGIN
            Sieve := Sieve - [N];
            M := M + 1;
            N := D * M
          END;
        M := 1
      END;
    D := D + 1
  END
END.  
