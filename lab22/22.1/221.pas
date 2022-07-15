DP1
PROGRAM InsertionSort(INPUT, OUTPUT);
{��������� ������� �� INPUT}
CONST
  Max = 16;
  ListEnd = 0;
TYPE
  RecArray = ARRAY [1 .. Max] OF 
               RECORD
                 Key: CHAR;
                 Next: 0 .. Max;
               END;
VAR
  Arr: RecArray;
  First, Index: 0 .. Max;
  Prev, Curr: 0 .. Max;  
  Extra: CHAR;
  Found: BOOLEAN;
BEGIN {InsertionSort}
  First := 0;
  Index := 0;
  WHILE NOT EOLN      
  DO
    BEGIN
      {�������� ������ � ������,, ���� ��������� ������������,
      ����� ������������ � �������� �� ������}
      Index := Index + 1;
      IF Index > Max
      THEN
        BEGIN
          READ(Extra);
          WRITELN('��������� ��������: ', Extra, '. ����������.');
        END
      ELSE
        BEGIN
          READ(Arr[Index].Key);
          {��������� Arr[Index] � ������� ������}
        END
    END; {WHILE}
    {������ ������ ������� � Arr[First]}
END.  {InsertionSort}
 
DP 1.1
{��������� ������ � ��������� ������}
Prev := 0;
Curr := First;
����� �������� Prev � Curr, ���� ���������� ����� ���
Arr[Prev].Key  <= Arr[Index].Key <= Arr[Curr].Key}
 
Arr[Index].Next = Curr;
IF Prev = 0  {������ ������� � ������}
THEN
  First := Index;
ELSE
  Arr[Prev].Next := Index;
 
DP 1.1.1
{����� �������� Prev ? Curr, ���� ���������� ����� ���
Arr[Prev].Key  <= Arr[Index].Key <= Arr[Curr].Key}
Found := FALSE:
WHILE (Curr <> 0) AND NOT Found
DO
  IF Arr[Index]. Key > Arr[Curr].Key
  THEN
    BEGIN
      Prev := Curr;
      Curr := Arr[Curr].Next
    END
  ELSE
    Found := True;
 
DP 1.2
{������ ������ ����� � Arr[First]}
Index := First;
WHILE Index <> ListEnd
DO
  BEGIN
    WRITE(Arr[Index].Key);  
    Index := Arr[Index].Next
  END;
WRITELN;

