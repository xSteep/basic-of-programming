UNIT WordsUnit;
INTERFACE
  USES ConstsUnit;
  PROCEDURE ToLowerCase(VAR Ch: CHAR); 
  PROCEDURE GetWord(VAR FIn: TEXT; VAR Data: MaxLengthWord); 
IMPLEMENTATION
  
PROCEDURE ToLowerCase(VAR Ch: CHAR); {�������� ������� �� ���������}
BEGIN {ToLowerCase}
  IF Ch = 'A' THEN Ch := 'a' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'B' THEN Ch := 'b' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'C' THEN Ch := 'c' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'D' THEN Ch := 'd' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'E' THEN Ch := 'e' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'F' THEN Ch := 'f' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'G' THEN Ch := 'g' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'H' THEN Ch := 'h' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'I' THEN Ch := 'i' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'J' THEN Ch := 'j' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'K' THEN Ch := 'k' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'L' THEN Ch := 'l' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'M' THEN Ch := 'm' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'N' THEN Ch := 'n' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'O' THEN Ch := 'o' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'P' THEN Ch := 'p' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'Q' THEN Ch := 'q' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'R' THEN Ch := 'r' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'S' THEN Ch := 's' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'T' THEN Ch := 't' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'U' THEN Ch := 'u' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'V' THEN Ch := 'v' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'W' THEN Ch := 'w' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'X' THEN Ch := 'x' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'Y' THEN Ch := 'y' ELSE IF Ch = '�' THEN Ch := '�' ELSE
  IF Ch = 'Z' THEN Ch := 'z' ELSE IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�' ELSE
                                  IF Ch = '�' THEN Ch := '�'  

END; {ToLowerCase}      
    
PROCEDURE GetWord(VAR FIn: TEXT; VAR Data: MaxLengthWord); 
VAR
  Ch: CHAR;
  Found: BOOLEAN; 
BEGIN {GetStatistic}
  Data := '';  
  Found := FALSE;
  WHILE NOT EOLN(FIn)
  DO
    BEGIN
      READ(FIn, Ch);
      IF (Ch IN CorrectChars)
      THEN
        BEGIN
          ToLowerCase(Ch);
          Data := Data + Ch            
        END
      ELSE
        Found := TRUE      
    END              
END; {GetStatistic} 

BEGIN  
END.  
