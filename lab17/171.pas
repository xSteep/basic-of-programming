PROGRAM SumDigit(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  Sum, Digit: INTEGER;
  F: TEXT;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
 Ch: CHAR;
BEGIN {ReadDigit}
  WHILE NOT EOLN
  DO
    BEGIN
      IF Ch = '0' THEN Digit := 0 ELSE  
      IF Ch = '1' THEN Digit := 1 ELSE
      IF Ch = '2' THEN Digit := 2 ELSE
      IF Ch = '3' THEN Digit := 3 ELSE
      IF Ch = '4' THEN Digit := 4 ELSE
      IF Ch = '5' THEN Digit := 5 ELSE
      IF Ch = '6' THEN Digit := 6 ELSE
      IF Ch = '7' THEN Digit := 7 ELSE
      IF Ch = '8' THEN Digit := 8 ELSE
      IF Ch = '9' THEN Digit := 9 
        ELSE
          D := -1
    END
END; {ReadDigit}
BEGIN {SumDigit}
  Sum := 0
  WHILE Digit <> -1
  DO
    BEGIN
      ReadDigit(INPUT, Digit)
      Sum := Sum + Digit
    END //жопа
  WRITELN(S)
END. {SumDigit}
