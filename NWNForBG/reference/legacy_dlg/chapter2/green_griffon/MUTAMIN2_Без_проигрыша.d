// �������� ������, ������� ������� ������, ������� 1 ������� ���������� 

BEGIN ~MUTAMIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � ������� ������� ������, �������. ��� � ���� ������?~ [MUTAM052]
  IF ~~ THEN REPLY ~������ ���������� �����-������ �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ������ ���������� �������� ��� ��������� ������.~ GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~��� �� �������� �������� ������ �� ���� ����� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ����, ������� �� �� �� ����, �������, �� ������ ������� �������. ��� ������ �� �������� � �� ��������� �� ������.~
  IF ~~ THEN REPLY ~��� ������ ���������� �������� ��� ��������� ������.~ GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~��� �� �������� �������� ������ �� ���� ����� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ����� ���� ����� ���������������� � ����� ���, ��� ����� ������� � ������. � � ����, � ����� ������, �������� �������.~
  IF ~~ THEN REPLY ~���� ���� ��� � *������* �������, ������?~ GOTO 6
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ���������� ������� ����� �� �������, ��� ��� ���-�� ������ ����������.~ GOTO 7
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~� ���������� ������� ����� �� �������, ��� ��� ���-�� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������, ���-�� ��� ��� ���������, ��? ��������� ������. ���� �� ���� ���������� ������ ��������, ������� ������ ���� ���� ��������. *�����* �� �����... �� ��� ����� ��� ������. ������ ������� �������, �������?~
  IF ~~ THEN REPLY ~��, ��� �� �������� ������� �������.~ GOTO 8
  IF ~~ THEN REPLY ~������� ��� �� �������� �������� ������ �� ����.~ GOTO 9
  IF ~~ THEN REPLY ~� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~���. ���� ��� �� ����������.~ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�����, � ���� ������ ��� ������, �������. ���� ������ ���� �������� ����� � ������. � ���� ���� ������ ������ �� �������, �� ����������?~
  IF ~~ THEN REPLY ~������ ������� ������ �������?~ GOTO 12
  IF ~~ THEN REPLY ~� ��� ������� � �������� ������� ������?~ GOTO 2
  IF ~~ THEN REPLY ~������� ��� ����������, ��� �� ��������.~ GOTO 13
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~���������, ���� ���-������ �����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~���� ������� ������ ������. ������ ���� �������� ����, ����� � ������ �������, ��� �����.~
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ���������� ������� ����� �� �������, ��� ��� ���-�� ������ ����������.~ GOTO 7
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~� ���������� ������� ����� �� �������, ��� ��� ���-�� ������ ����������.~ GOTO 3
  IF ~~ THEN REPLY ~������ ���������� �����-������ �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY ~��������, ���� ������ ���-�� �������, ��������. � ����������� ��������� �������� �� �������������. � �� ���� � ��� ���� �����.~
  IF ~~ THEN REPLY ~������ ���������� �����-������ �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 4
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~��� �, ������. ��� ���� �� ������ �����. �������, ��� ��� �������� ��������� ����� 1000 �������, ����� ��� ��������� � ����������. �����!~
  IF ~~ THEN DO ~GiveItemCreate("MutKey",LastTalkedToBy,1,0,0)SetGlobal("KnowsAboutMatch","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~��� �, ����� �� ���� � ����� �������� ���� �����. ��� ������ ������� � ����� � ������, ��� � � ������� ����������. ���� ����� 1000 �������. ������ ������� �� ���. � ������ ��� ��� ����. ����� ��� �������� ��� �����. �� ��������� ���. ������ ��� ��������� ������ �����, ������� ����� ��� ������� � ��������� �� ����� ���������, ������� ��� ������� ���� ��������, ��������. ��� ����� ������.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~�������� ���� ���� �����, � ��� ������, ������ ��� � ����� ����� ������ � ������� ����������� � ��� �����. ����������?~
  IF ~~ THEN REPLY ~��, ��� �� �������� ������� �������.~ GOTO 8
  IF ~~ THEN REPLY ~������� ��� �� �������� �������� ������ �� ����.~ GOTO 9
  IF ~~ THEN REPLY ~���. ���� ��� �� ����������.~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY ~����� � ��� ����? ���� �� �� ������ ��������� ������� � ����������, ��� ��� ������ ������, �����?~
  IF ~~ THEN REPLY ~�� �����. ��� �, ���������� ��� � ����� ����������.~ GOTO 16
  IF ~~ THEN REPLY ~��� �������, ���� ���������� ��� ����������!~ GOTO 17
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY ~��� �, ����� ���� � ������������ � �����������, �� ������� ���� �� ������ ���������, ���������? � ��� �� ���� ��������� ������. �� ��� �����, ��-����� ��� ���� � ������. ��� �������, ��� ������ ��������������� ���� ���������, ����� ������� ������. ���-�� ��� ��� �������������.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY ~�������. ���� ������ �� ������ ���� ������, �����, ���� ������� ����� ������������ � ���� ������.~
  IF ~~ THEN DO ~StartStore("Mutamin",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY ~�������, � ������� �����-�� ��������� ��������, ���-�� ��� �������� ��������, ������ ������ ������ �� �����, ����� �� ���� �����. �� ��� ������ �����. � ����� ������, ��� ������ �� �������� � �� ���������.~
  IF ~~ THEN REPLY ~� ��� ������� � �������� ������� ������?~ GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~��� �� �������� �������� ������ �� ���� ����� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~������� ��� ����������, ��� �� ��������.~ GOTO 13
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY ~������ �� ����������� ����: ��� ��������� ������. ���� �� ���������� ����, ���� �����, ��� �� ������� ������ �� ����������. ��� ������ ��� ������ ��������� �����������. �� � ����� ������ ������ ����� � ���������� ��� ���, ��, ����������, ���-�� ����� ������ ���, ���� �� ����������� ������� �����. �� ���, ��� ��� ��� ����������?~
  IF ~~ THEN REPLY ~��, ��� �� �������� ������� �������.~ GOTO 8
  IF ~~ THEN REPLY ~�� ����� �� �� ��� ��� ��������� ��� ���?~ GOTO 9
  IF ~~ THEN REPLY ~� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~���. ���� ��� �� ����������.~ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY ~�� ���, ������ ����, ��� ��� ��� ��������. ��� ���������� �������� �����������, �������� ������! � ����� ���� ������� ��� ����. ��� �� ������ ������?~
  IF ~~ THEN REPLY ~� ����� �������.~ GOTO 8
  IF ~~ THEN REPLY ~������� ��� �� �������� �������� ������ �� ����.~ GOTO 9
  IF ~~ THEN REPLY ~� ������ �������?~ GOTO 10
  IF ~~ THEN REPLY ~���. ���� ��� �� ����������.~ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 11.2
  SAY ~��. ������ �� ���� �������... ����, �������, ������� ���������� � ������, ���. � ������ - ����� �������� ����, ��� ���� �������� ������ ���������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",6)~ THEN BEGIN 18 // from:
  SAY ~����� ���������� � ������� ������� ������, �������. ��� � ���� ������?~ [MUTAM052]
  IF ~~ THEN REPLY ~������� ��� ����������, ��� �� ��������.~ GOTO 13
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 28
  IF ~~ THEN REPLY ~� �����.~ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: ZAMITRA1 3
  SAY ~� ������� ���, �����, � ��� ����� ��������� ���������.~ [MUTAM050]
  IF ~~ THEN EXTERN ~ZAMITRA1~ 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",4)~ THEN BEGIN 20 // from:
  SAY ~����! ������, ��� �� �������� ��� ��������� ����������? ������� ��� ��������� ������������!~ [MUTAM053]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~������ � ������ �� ��� ����, ����� � ��� ������� ��������� �����������, ����� ���... �� ��, ���������, �� ���� ���� �������� ������. ��-��. ���, ��������: �������� ����� ���������. �������, �� ������� ��� ��������� ���������������. ��� ��� ����������!~
  IF ~~ THEN REPLY ~�������. ��� ��� �������� ����.~ GOTO 22
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~���? �����-�� ������ 5000 �������? �������� ��� 1000, � � �������� ����.~ GOTO 23
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~���? �����-�� ������ 5000 �������? �������� ��� 1000, � � �������� ����.~ GOTO 24
  IF ~  CheckStatGT(LastTalkedToBy(Myself),16,STR)~ THEN REPLY ~� ���� ������ ������, � � ��� ������.~ GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY ~� ���� ������ ������, � � ��� ������.~ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY ~��� �, ��� �� �������� ����������� ��� � ���, ��� ��� ����, ��, � ����, �� ������, � � ���������� ����� ������������ �������. ��, ��������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(5000)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY ~������-��, ������� ����� ���� �����������, � � �� ��������� �� ������. �� ��� �������� ��� �����, � � ���� ������� ������� �����������. ���, ��������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(6000)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY ~������� ����� ���� �����������, � � �� ��������� �� ������. ��������� ���� ������ �� ����� ���� ����������, �� ������ ������� ����-�� ���. ��� �, ��� ��� ���� ������. ������ ��� ���� � ����������� �������� ���.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(5000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.4
  SAY ~�������! ��������� ���� ������� ������. ��� ��� 1000 �������� � ����, ��� � ��� ��� ���. �� ���� �� ��� ��� ��������� �������� ���, � �������� ��� ������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(6000)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",5)~ THEN BEGIN 26 // from:
  SAY ~����� ��������, �� ��������� � ��� ���� ����������, ���������� ����� ������ ���������������. ����� ���� � ������ ��� ����� ��������� ������. � �� ��� ���, �����, ������� ������ ����� ������� ���������. ��-��.~ [MUTAM054]
  IF ~~ THEN REPLY ~������� ��� ����������, ��� �� ��������.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ GOTO 13
  IF ~~ THEN REPLY ~��� ������ �������?~ GOTO 27
  IF ~~ THEN REPLY ~� �����.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 18.2
  SAY ~�������. ������� ������������ ��������� ������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)StartStore("InnMut",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.2
  SAY ~�������. ������� ������������ ��������� ������.~
  IF ~~ THEN DO ~StartStore("InnMut",LastTalkedToBy(Myself))~ EXIT
END
