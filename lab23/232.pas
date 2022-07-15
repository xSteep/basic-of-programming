PROGRAM TreeSort(INPUT, OUTPUT);
TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Ch2: CHAR;
               LLink, RLink: Tree;
             END;
VAR
  Root: Tree;
  Ch: CHAR;
PROCEDURE Insert(VAR Ptr: Tree; VAR Data: CHAR);
BEGIN {Insert}
  IF Ptr = NIL
  THEN
    BEGIN {Создаем лист со значением Data}
      NEW(Ptr);
      Ptr^.Ch2 := Data;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;
    END
  ELSE
    IF Ptr^.Ch2 > Data
    THEN
      BEGIN
        Insert(Ptr^.LLink, Data)
      END
    ELSE
      BEGIN
        Insert(Ptr^.RLink, Data)
      END
END;  {Insert}
PROCEDURE PrintTree(Ptr: Tree);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  {Печатать поддерево слева, вершину, поддерево справа}
    BEGIN
      PrintTree(Ptr^.LLink);
      WRITE(Ptr^.Ch2);
      PrintTree(Ptr^.RLink);
    END;
END;  {PrintTree}
BEGIN {TreeSort}
  Root := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Insert(Root, Ch)
    END;
  PrintTree(Root);
END.  {TreeSort}


