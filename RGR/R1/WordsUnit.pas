UNIT WordsUnit;
INTERFACE
  USES ConstsUnit;
  PROCEDURE ToLowerCase(VAR Ch: CHAR); 
  PROCEDURE GetWord(VAR FIn: TEXT; VAR Data: MaxLengthWord); 
IMPLEMENTATION
  
PROCEDURE ToLowerCase(VAR Ch: CHAR); {заменить функцию по символьно}
BEGIN {ToLowerCase}
  IF Ch = 'A' THEN Ch := 'a' ELSE IF Ch = 'А' THEN Ch := 'а' ELSE
  IF Ch = 'B' THEN Ch := 'b' ELSE IF Ch = 'Б' THEN Ch := 'б' ELSE
  IF Ch = 'C' THEN Ch := 'c' ELSE IF Ch = 'В' THEN Ch := 'в' ELSE
  IF Ch = 'D' THEN Ch := 'd' ELSE IF Ch = 'Г' THEN Ch := 'г' ELSE
  IF Ch = 'E' THEN Ch := 'e' ELSE IF Ch = 'Д' THEN Ch := 'д' ELSE
  IF Ch = 'F' THEN Ch := 'f' ELSE IF Ch = 'Е' THEN Ch := 'е' ELSE
  IF Ch = 'G' THEN Ch := 'g' ELSE IF Ch = 'Ё' THEN Ch := 'е' ELSE
  IF Ch = 'H' THEN Ch := 'h' ELSE IF Ch = 'Ж' THEN Ch := 'ж' ELSE
  IF Ch = 'I' THEN Ch := 'i' ELSE IF Ch = 'З' THEN Ch := 'з' ELSE
  IF Ch = 'J' THEN Ch := 'j' ELSE IF Ch = 'И' THEN Ch := 'и' ELSE
  IF Ch = 'K' THEN Ch := 'k' ELSE IF Ch = 'Й' THEN Ch := 'й' ELSE
  IF Ch = 'L' THEN Ch := 'l' ELSE IF Ch = 'К' THEN Ch := 'к' ELSE
  IF Ch = 'M' THEN Ch := 'm' ELSE IF Ch = 'Л' THEN Ch := 'л' ELSE
  IF Ch = 'N' THEN Ch := 'n' ELSE IF Ch = 'М' THEN Ch := 'м' ELSE
  IF Ch = 'O' THEN Ch := 'o' ELSE IF Ch = 'Н' THEN Ch := 'н' ELSE
  IF Ch = 'P' THEN Ch := 'p' ELSE IF Ch = 'О' THEN Ch := 'о' ELSE
  IF Ch = 'Q' THEN Ch := 'q' ELSE IF Ch = 'П' THEN Ch := 'п' ELSE
  IF Ch = 'R' THEN Ch := 'r' ELSE IF Ch = 'Р' THEN Ch := 'р' ELSE
  IF Ch = 'S' THEN Ch := 's' ELSE IF Ch = 'С' THEN Ch := 'с' ELSE
  IF Ch = 'T' THEN Ch := 't' ELSE IF Ch = 'Т' THEN Ch := 'т' ELSE
  IF Ch = 'U' THEN Ch := 'u' ELSE IF Ch = 'У' THEN Ch := 'у' ELSE
  IF Ch = 'V' THEN Ch := 'v' ELSE IF Ch = 'Ф' THEN Ch := 'ф' ELSE
  IF Ch = 'W' THEN Ch := 'w' ELSE IF Ch = 'Х' THEN Ch := 'х' ELSE
  IF Ch = 'X' THEN Ch := 'x' ELSE IF Ch = 'Ц' THEN Ch := 'ц' ELSE
  IF Ch = 'Y' THEN Ch := 'y' ELSE IF Ch = 'Ч' THEN Ch := 'ч' ELSE
  IF Ch = 'Z' THEN Ch := 'z' ELSE IF Ch = 'Ш' THEN Ch := 'ш' ELSE
                                  IF Ch = 'Щ' THEN Ch := 'щ' ELSE
                                  IF Ch = 'Ъ' THEN Ch := 'ъ' ELSE
                                  IF Ch = 'Ы' THEN Ch := 'ы' ELSE
                                  IF Ch = 'Ь' THEN Ch := 'ь' ELSE
                                  IF Ch = 'Э' THEN Ch := 'э' ELSE
                                  IF Ch = 'Ю' THEN Ch := 'ю' ELSE
                                  IF Ch = 'Я' THEN Ch := 'я'  

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
