// ���� ������, ������. ���� ������� - ���� �� ���������� ����� ������.

BEGIN ~FORTSOLD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NW_Medicine","GLOBAL",1)GlobalGT("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~�������, �������� ����. ������ ����� ������� ����� ������ ������ � ����� ���.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~    Global("GuardsKnowPlayer","MYAREA",1)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~�����, ���� ����� ���������� � ���������� �������? �� � ������ �� ���-������ �����.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY ~��� ���� ���� ������� �� ����� ������, ����� ��� ����! � ������ � ������� � ���� �����!~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",0)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~�������� ����, ��� �� �������!~
  IF ~  IsGabber(Player1)~ THEN REPLY ~� <CHARNAME>. ���� ������ ����� ���� �� ����� ����� ������!~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~��� ������ ����� ���� �� ����� ����� ������!~ GOTO 4
  IF ~~ THEN REPLY ~� �� ���� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~����� ����� �������� ��� �������! �� ����, ������� �� ��� ������ ����������� �����! ���� ����� �������� ��������� ������. �� � ������ �� ������-������� �����.~
  IF ~~ THEN DO ~SetGlobal("GuardsKnowPlayer","MYAREA",1)~ EXIT

END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~�� ������, ��� ���� �� �������������! ������ � ���!~
  IF ~~ THEN DO ~Shout(HELPME)Enemy()~ EXIT

