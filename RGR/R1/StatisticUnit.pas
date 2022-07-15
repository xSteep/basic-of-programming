UNIT StatisticUnit;
{собирает статистику встречаемости}
INTERFACE
  USES WordsUnit, EntityUnit, ConstsUnit;
  PROCEDURE GetStatistic(VAR FIn, FOut: TEXT);
IMPLEMENTATION

PROCEDURE GetStatistic(VAR FIn, FOut: TEXT); 
VAR 
  Data: MaxLengthWord;
  Root: Tree;
  CountLeafs: INTEGER;
  Found: BOOLEAN;
BEGIN {GetStatistic}
  RESET(FIn);
  REWRITE(FOut);
  Root := NIL;
  CountLeafs := 0;
  Found := FALSE;
  WHILE NOT EOF(FIn)
  DO
    BEGIN
      GetWord(FIn, Data);
      IF (Data <> '')
      THEN
        InsertIntoTree(Root, Data, CountLeafs);                   
      IF (NOT EOF(FIn)) AND (EOLN(FIn))
      THEN
        READLN(FIn);
      IF (CountLeafs >= MaxLeafs)
      THEN
        Found := TRUE 
    END;  
  PrintTree(Root, FOut)
END; {GetStatistic} 

BEGIN
END.  
