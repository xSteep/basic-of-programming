UNIT ConstsUnit;
{ unit for static, const data }
INTERFACE
TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Word: STRING;
               Count: INTEGER;
               OverflowCount: BOOLEAN;
               LLink, RLink: Tree
             END; 
  MaxLengthWord = STRING[46]; {Max lenght word}           
CONST
  UpperCase: SET OF CHAR = ['A' .. 'Z', 'А' .. 'Я', 'Ё'];
  LowerCase: SET OF CHAR = ['a' .. 'z', 'а' .. 'я', '-', 'ё'];
  CorrectChars: SET OF CHAR = UpperCase + LowerCase; 
  MaxLeafs = 10000;
  OverflowCountStr = 'Переполнение';
  MAXINT = 1000;
END.  
