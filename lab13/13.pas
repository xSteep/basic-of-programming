PROGRAM RunBubbleSort(INPUT, OUTPUT);
VAR
  Ch: CHAR;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOF (InFile)
  DO
    BEGIN
      WHILE NOT EOLN (InFile)
      DO
        BEGIN
          READ(Infile, Ch);
          WRITE(OutFile, Ch)
        END;
      READLN(InFile);
      WRITELN(OutFile)
    END
END;
BEGIN
  CopyFile(INPUT, OUTPUT);
END.
