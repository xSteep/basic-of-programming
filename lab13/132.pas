PROGRAM RunBubleSort(INPUT, OUTPUT);
VAR
  Ch: CHAR;
PROCEDURE CopySwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR Ch, Ch1, Ch2: CHAR;
Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO { �� ������� ���� ��� ������� �������� ��� Ch1, Ch2 }
            BEGIN
              READ(F1, Ch2);
              { �������   min(Ch1,Ch2) �  F2, ���������
              ��������������� ������� }
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(F2, Ch1) { ������� ��������� ������ � F2 }
        END;
BEGIN
  CopySwap(INPUT, OUTPUT)
END.
