PROGRAM Graphic(INPUT, OUTPUT);
CONST 
  Len = 25;
  Row = 5;
  Column = 5;
  Letter = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
  LetterM = [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
  LetterO = [1, 2, 3, 4, 5, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24, 25];
  LetterH = [1, 5, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25];
TYPE 
  Matrix = SET OF 1 .. 25
VAR 
  Ch: CHAR;
PROCEDURE PrintLetter(Letter: Matrix);
VAR
  Count: INTEGER;
BEGIN {PrintLetter}
  FOR Count := 1 TO 25
  DO 
    BEGIN 
      IF (Count IN Letter)
      THEN
        WRITE('X')
      ELSE
        WRITE(' ');
      IF (Count MOD Column = 0)
      THEN
        WRITELN(OUTPUT);
   END;
  WRITELN(OUTPUT);
END; {PrintLetter}
BEGIN {Graphic}
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(Ch);
      IF  (Ch = 'M') OR (Ch = 'O') OR (Ch = 'H')
      THEN
        CASE Ch OF
          'M': PrintLetter(LetterM);
          'O': PrintLetter(LetterO);
          'H': PrintLetter(LetterH);
        END;
      ELSE
        BEGIN
          WRITELN(' asda ')
        END;
    END;  
END. {Graphic}   
