PROGRAM SarahRevere (INPUT, OUTPUT);
{������ ��������� � ��� ��� ���� ��������, � ����������� 
�� ����, ������ �� ����� ����������� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {������������� W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      {������� ����, ��������� ����� ������}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';
      {�������� ���� ���  'land'}
      IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND(W4 = 'd')
      THEN
        Looking := 'L';
      {�������� ���� ��� 'sea'}
      IF (W2 = 's')  AND (W3 = 'e') AND (W4 = 'a')
      THEN
        Looking := 'S'
    END;
  {������� ��������� Sarah}
  IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('Sarah didn''t say')
END. {Sarah revere}

