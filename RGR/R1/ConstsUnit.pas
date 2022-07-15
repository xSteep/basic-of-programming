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
  UpperCase: SET OF CHAR = ['A' .. 'Z', '�' .. '�', '�'];
  LowerCase: SET OF CHAR = ['a' .. 'z', '�' .. '�', '-', '�'];
  CorrectChars: SET OF CHAR = UpperCase + LowerCase; 
  MaxLeafs = 10000;
  OverflowCountStr = '������������';
  MAXINT = 1000;
END.  
