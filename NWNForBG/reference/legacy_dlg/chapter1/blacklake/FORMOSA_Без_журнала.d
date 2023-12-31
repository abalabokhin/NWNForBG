// ���������� ����� ������� ������������� ������������ �������� �������� ���������� �� ���� �������. �� ��������� � ����������� �� ������������� ��� ����� �������� ������.

BEGIN ~FORMOSA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~��� ��? �� ��������� ������, ���� ��������. ��� �� �������, <SIRMAAM>? �� �� ��������, ��� ��������� ���� ��������� ���������� �������� ������ � ������� ��? � ����� ������, ��� ����������� ����� ����� - ������� �� �����. ��� �������?~ [FORMOSA1]
  IF ~~ THEN REPLY ~��� ���� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ��?~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ������ �� ������ � ���������? ��� �, �����, ������, �� ����� �� ������, ����� � ���� �� �����������. �������� - �������� � ������� �����������. � ���, � ������ �����, �� ������ ��, ��� �����, ������ ��� � ���� ���� ��� ����: ����� � ������. �� �������� ����� ��� ����� ������������� � ������ ���������� ��������� � ����� ��������, � ������ ����������� ������ ���, ��� ������ �� ��������.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~���� ����� ������� ���������, � �� ������������������ ����. ����� � ������� �� ����� ������� ������ � ���������� �������������, �� ��� �� ��������, ��� � �� ���� ��������������� �� �����! ���, �������, ���� ��������. � �� ������� ��, ���� �� � ���� ���� ���, �� ������ ���� ������ � ���������... � ��� ������� ������� �� ��, ��� �������� ������� ���� ������ �������!~
  IF ~~ THEN REPLY ~��� ���� ��������?~ GOTO 1
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~� �� ������ �������... �� ������� ����, ��� ������ ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~�� ���, � � ����� �� ����, � ���� �� �� ��������. ��� �������� ��� ������ ������� ��� � ������, � ��� �������� ������� ���� ������, �������� ��� ��������� ��� ���!~
  IF ~~ THEN REPLY ~� �� ��� �����?~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ������, ��� ����� ����� ����?~ GOTO 5
  IF ~~ THEN REPLY ~��, � ���� ������ �� �����������.~ GOTO 6
  IF ~~ THEN REPLY ~���, � �� ���� ����������� � ����.~ GOTO 7
  IF ~~ THEN REPLY ~��������, ��� ��� �� ��� ����.~ GOTO 8
  IF ~~ THEN REPLY ~��� �����, � �����, ��-�� ��� ����� ���� ������� � ��� ����� ��� ����������.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~����, ��������, �������, ����� ��������� �� ����, �� ��� ��? ��� �, � �� ���� ��� ��� ������ �������! �� ��������� ����� �����, ��� ����������� �� ��� �����������!!~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~�� �������� ���, ������ ���-�� ����� ���������� � ����. �������� ������� �� ������� ����� �����, � ��� � ������ ������� ����� �����, ��� ��� ������. � ���� ���� ����� ����������, �� �� ��� ������ ��������� � ������� ��������, ��� ��� ������� ������ ������� ������ ��� ���������������� �����. �����, �� ����������, ��������� ������ ����� ��� ����� �� ��� �������.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY ~��� �, ��� ������� �������. � ���� ����� �� ��� ����� �����, ������� �������, ��� ��� ��������� � �������� ������� �� ���� �����. �������� ������ ���� ������ - ��� �� ����� � ���� ��������. ��������� ������ � ��� ������� ����������, ��� ������������ �������... � � ���� ���� ������ ��������� ����������� ���� ���������� ����������.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 3.4
  SAY ~�������, ���. ��� ������������� ���������, � �� ����� ��������� � ��� ���, ��� ��� ��������. �����? ��� ���� � ���, ��� ������ �������� �������� ��� ����? � ����� ���� �� �������, ��� � ��� ��������� � ���� ������, � ������� ������� ��������� �� ��������, ���� ������� ����� ��������� � ����? ��� ��� ������ ��� �����. �� ���� ����� �� ������, �����? � � ����, � ��� ��� ����� ������� �� ������.~
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 3.5
  SAY ~�� ��� ���, �� ������, ����� ��� �������� � �����. ������, ��� �����, ����� � ��� � ���� �� ����������. ������ ��, �� ����� ��� ���������� � ���� �����, �� ��� �� �������, ����� � ��� � ���� �� ����������!~
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 3.6
  SAY ~� ������ ����������, ��� ���? ������ ���������� ���������� � ����� �� ���� ������? ������ ���������� ������ � ���, ��� ����� ��� ����� ��������? ��� � �� ��������. �� ���� �� ���������, <SIRMAAM>, � � �������� ��� �� ���� ��� �����������. ������� ��� � ���� ���� ����� � ���?~
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.7
  SAY ~��� � � ������. �� ��� �, ��������. ��������� ������ � ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~������ ��� ������� ������ ���������, ����� ���������� ���-������ �������. ��� ��� ������� ����� ������ �� ����� ������� � ������������, ��� �������� ���� ������ ���.~
  IF ~~ THEN REPLY ~� �� ��� �����?~ GOTO 2
  IF ~~ THEN REPLY ~��, � ���� ������ �� �����������.~ GOTO 6
  IF ~~ THEN REPLY ~���, � �� ���� ����������� � ����.~ GOTO 7
  IF ~~ THEN REPLY ~��������, ��� ��� �� ��� ����.~ GOTO 8
  IF ~~ THEN REPLY ~��� �����, � �����, ��-�� ��� ����� ���� ������� � ��� ����� ��� ����������.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~����� ����������� ����������� ����, � ������� ��� ������ �������, ������� ������ ������ � ����� ������� � ����� ����� �����������. ���-�� ����� ���, <SIRMAAM>. �� ��� ��������?~
  IF ~~ THEN REPLY ~���, ����������, � ��� �� ���?~ GOTO 13
  IF ~  Global("MeldanenQuest","GLOBAL",1)OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~���, � ���� ���� ������ �������������.~ GOTO 14
  IF ~  Global("MeldanenQuest","GLOBAL",1)!Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~���, � ���� ���� ������ �������������.~ GOTO 15
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~�������� �� ����!~ GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~�������� �� ����!~ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY ~��� ������� �� ������ ��������. ������ �� ��������� ������, ������� ������ ������... �����������?~
  IF ~~ THEN REPLY ~��������� �������� ��� ��������?~ GOTO 16
  IF ~~ THEN REPLY ~� ���� ������ ��� ����� �������.~ GOTO 17
  IF ~~ THEN REPLY ~���� ��� ������ ��������, � ������ ���, ��� ������.~ GOTO 17
  IF ~~ THEN REPLY ~� �� ����� ��������� ����� ������, ���.~ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY ~��! � ����� �������� �� ����, � ��� ����� ���������� �����. �� ����, ������. ����� ��� �� ��� �� ���� �����, <SIRMAAM>?~
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~����� ���, ����������. ������ �� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~� ������ ����, ����� ��-�� ��� ������ �� ���� �������.~ GOTO 19
  IF ~~ THEN REPLY ~�� ���� ���������. � ������, ���� �����.~ GOTO 6
  IF ~~ THEN REPLY ~� ���� ������ ������� ����, � � ���� ���� �������.~ GOTO 20
  IF ~~ THEN REPLY ~������ ������, � ��� ������.~ GOTO 21
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY ~��! ��� � ��� ����? ����� ��� �� ��� �� ���� �����, ������� <RACE>? ������ �������� ���� ����, ��� � ���������?~
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~����� ���, ����������. ������ �� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~� ������ ����, ����� ��-�� ��� ������ �� ���� �������.~ GOTO 19
  IF ~~ THEN REPLY ~�� ���� ���������. � ������, ���� �����.~ GOTO 6
  IF ~~ THEN REPLY ~� ���� ������ ������� ����, � � ���� ���� �������.~ GOTO 20
  IF ~~ THEN REPLY ~������ ������, � ��� ������.~ GOTO 21
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY ~� ������ �� �������� ���������, � � ���, ����� ������� � ���� ���� �� ������.~
  IF ~~ THEN REPLY ~�� ������ ���, ��� ��� �����?~ GOTO 24
  IF ~~ THEN REPLY ~�������. � ������ ���, ��� �� �����������.~ GOTO 17
  IF ~~ THEN REPLY ~��������, �� � �����... ���� ������ ����� ��������������.~ GOTO 17
  IF ~~ THEN REPLY ~� ������ ����, �� �� ����� ������� ��������.~ GOTO 22
  IF ~~ THEN REPLY ~���. � �� ����� ������ �����.~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 13.2 13.3
  SAY ~����� �� ������ ��������� ���� ���������, � ��� ���� ��� ������ � ��� �������. ������ ��� �������� ������ ���� ����, ����� ����� �� ������ ����� ��������. �������� ����� � ����������� ��������, ��� ������ ������ ����������. ���� � ������ ���� ������, �� �� ������ ���-������ ���������� ������. ����������, ��� �� ��������� � ������, ��� �� ������ ����� �� ����� ��� ������� ��������������. ��������� ��� ����, � � ��� ��� ���������� ��������. � �� ���������� ��� ������� � ��� ��� 1000 ������� �����.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY ~���? �� �� ������ ������� ����, ������� ������� ��� ������ � ����� ����������� ��� ���������� ����� ���� ���? �� �� ������ �������� �������, �������, ����������, ����������� ����� ������? � � �� ������, ��� ����� ��� ��������� ������ ������. �� ��� ��������� � ����������.~
  IF ~~ THEN REPLY ~����� ������ �� ��� ���� �� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�������. � ������ ���, ��� �� �����������.~ GOTO 17
  IF ~~ THEN REPLY ~��������, �� � �����... ���� ������ ����� ��������������.~ GOTO 17
  IF ~~ THEN REPLY ~� ������ ����, �� �� ����� ������� ��������.~ GOTO 22
  IF ~~ THEN REPLY ~���. � �� ����� ������ �����.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY ~� �� �������� ������ ��, ��� ������ ����������. ����������, ��� �������� ������, ��� �� �������� � �.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY ~� ����� �� ��� ����, ����� �������� �� �������, ��, ���� ��� ���������� ���, ������ �� ��� �� �������� ����������? � ������� �� ���� ��������� �� ���������. ������ ��������, ��� ������ ����� � ����� �����-�� ���������, ������ ��. �� �������� ������ �������� ���� � ������ ������ ��������. ���� �� ������ ������ ��, ��� ���������, ������ �� ��� �� ������ ���? ��������, � �� �� ����� �� �������� � ����. ��� �������?~
  IF ~~ THEN REPLY ~���, ����������, � ��� �� ���?~ GOTO 13
  IF ~~ THEN REPLY ~���, � ��� �� �������.~ GOTO 10
  IF ~~ THEN REPLY ~��! �������� �� ����.~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY ~��, ��� ���? � ���� ���� ��� ������, <SIRMAAM>. �������� ���, � � ���������� ��� - ��, ��� ��� ��� �����������?~
  IF ~~ THEN REPLY ~���, ����������, � ��� �� ���?~ GOTO 13
  IF ~~ THEN REPLY ~���, � ��� �� �������.~ GOTO 10
  IF ~~ THEN REPLY ~��! �������� �� ����.~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 16.4
  SAY ~��� ������. ������ � ����������, ��� �� ������ �������� ���� ������, ����� ������� �������� ������ ����� ��������. ����� ������� - ��� �������� ����, ������� ���� ������ � ��� �������. ��������� ��� ���� ����. ���� �� �������� ���� ������ � ��������� ��������� �� ��������, � ��������� �� �����. ~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~��� ���, ��� � ��� ���� ����������... � ��� - ������ ������������ ���� �� ��, ��� �� ����������� �������.~
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~� ����, ��� �������� ��� ����. ������ �� ������, �������.~ GOTO 4
  IF ~~ THEN REPLY ~�������. � ��� ������.~ GOTO 26
  IF ~~ THEN REPLY ~��� ������ ����������. ��� ���� �� ����������.~ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 16.1
  SAY ~� �� ������, <SIRMAAM>. ���� �� ��� ���� ���, � �� ��������� � �������� ������-�����, � ��� ���� �� ��� ������.~
  IF ~~ THEN REPLY ~�������. � ������ ���, ��� �� �����������.~ GOTO 17
  IF ~~ THEN REPLY ~��������, �� � �����... ���� ������ ����� ��������������.~ GOTO 17
  IF ~~ THEN REPLY ~� ������ ����, �� �� ����� ������� ��������.~ GOTO 22
  IF ~~ THEN REPLY ~���. � �� ����� ������ �����.~ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY ~�������� ����� � ����������� ��������, ��� ������ ������ ����������. ���� � ������ ���� ������, �� �� ������ ���-������ ���������� ������. ����������, ��� �� ��������� � ������, ��� �� ������ ����� �� ����� ��� ������� ��������������. ��������� ��� ����, � � ��� ��� ���������� ��������. � �� ���������� ��� ������� � ��� ��� 1000 ������� �����.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY ~� ����� ������, ����� �����, ��� �� ������. ����� ����, �� ����� ����� � ������ ���-������ �������. � ���� ����� ������ �����������.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",1)~ UNSOLVED_JOURNAL ~����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3
  SAY ~������ �� ����������? ��� �, ���������. �������� ����� � �������� ����, � ������ ������� ��, ��� ���������.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY ~��� �� ���������, ��? �� ����������, <LADYLORD>? �������� ��� ������� ���� � ������ ����� ���������?~ [FORMOSA3]
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~���, � ����� ��� ����, ����� ����� ���. ������ �� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~����� ������ �� ��� ���� �� ��������?~ GOTO 24
  IF ~~ THEN REPLY ~�������. � ������ ���, ��� �� �����������.~ GOTO 17
  IF ~~ THEN REPLY ~��������, �� � �����... ���� ������ ����� ��������������.~ GOTO 17
  IF ~~ THEN REPLY ~� ������ ����, �� �� ����� ������� ��������.~ GOTO 22
  IF ~~ THEN REPLY ~���. � �� ����� ������ �����.~ GOTO 10
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~��� �� ���������, <LADYLORD>. ���� � ��� �������?~ [FORMOSA4]
  IF ~  PartyHasItem("NWKey06")!PartyHasItem("NWTooth1")~ THEN REPLY ~� ���� ���� ���� �� �������� ���������.~ GOTO 30
  IF ~  PartyHasItem("NWTooth1")!PartyHasItem("NWKey06")~ THEN REPLY ~� ���� ���� ���������� ��� ���������, ����� �� ��� ������.~ GOTO 31
  IF ~  PartyHasItem("NWKey06")PartyHasItem("NWTooth1")~ THEN REPLY ~� ���� ���� ��� ��������� � ���� �� �������� ���������.~ GOTO 32
  IF ~~ THEN REPLY ~�������� �����, �� ��� ���� � ���� ���. �� ������ �������� ���.~ GOTO 33
  IF ~~ THEN REPLY ~���� ���, �� � ��� ���� �������.~ GOTO 34
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY ~� ���� ������� �� ���������: ���� ������!~ GOTO 4
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY ~��������� ��� ��������� �� ����. ��... ��� ��� �����, � �������� �� ��� ����������. ������ �������������, <SIRMAAM>, ����� ����� ����� ����������� �� ��� �����. � ��� � ����� ����������? ��� ��������� � ��������?~
  IF ~~ THEN REPLY ~�� �����. �� � ���� ��� ��� ����.~ GOTO 35
  IF ~~ THEN REPLY ~�� ���, �� ��� ���������.~ GOTO 36
  IF ~~ THEN REPLY ~�� ���, � � �� ��������� ������� ���.~ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY ~���... ��, ������ ��� �����. ��������� � �������, �������� ������ �� ���� ����, � ���� �� ������ ��������� �� � ���. ��� ��� ��, ����������, �����. ����� ����������. ������, ���� ������� ������. �� � ���?~
  IF ~~ THEN REPLY ~���, ���� ���.~ GOTO 38
  IF ~~ THEN REPLY ~���, � � �� ��������� ������ ��� ��� ���������.~ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY ~��������� ��� ��������� �� ����. ��... ��� ��� �����, � �������� �� ��� ����������. ������ �������������, <SIRMAAM>, ����� ����� ����� ����������� �� ��� �����. � ��� ���... ��, ������ ��� �����. ��������� � �������, �������� ������ �� ���� ����, � ���� �� ������ ��������� �� � ���. ��� ��� ��, ����������, �����. ����� ����������.~
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 29.4
  SAY ~����� �������� ����, <SIRMAAM>, �� � �� ������, ��� ������ �����, ���� �� �� �������� ��� ��� ���. ��, ��� �� ������� �� ����������, ����� ��������� �������� ��� ���������� ��������. �������� �����, � ���� ������ �� �����������. ��� ����� ����, �� � ������ ������� ���, ������ ��� ����� ������������ ��� �� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.5
  SAY ~����� ������������, <SIRMAAM>. ��� ������ �� ������ �������, ��� ������ ����� ����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY ~���� ������ �������� ��������������, ��� ����� �������������� ������ �������. ��������, �� ����� ���������� ������� ��� �������... � �� ���� ���� ���������. ���� ������, <SIRMAAM>, �������� ���� � ������������� � ����� �������. ����� �������� �� ���� �������������� �� ��� ������.~
  IF ~~ THEN REPLY ~�������. � ������� � �����.~ GOTO 47
  IF ~~ THEN REPLY ~�������� �� ����. � ������ �� ���� � ���� �����������.~ GOTO 48
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY ~���� ������, <SIRMAAM>, �������� ���� � ������������� � ����� �������. ����� �������� �� ���� �������������� �� ��� ������.~
  IF ~~ THEN REPLY ~�������. � ������� � �����.~ GOTO 47
  IF ~~ THEN REPLY ~�������� �� ����. � ������ �� ���� � ���� �����������.~ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY ~��� ������, <SIRMAAM>. ���� ����� ��������� ����� ��������� � �������� ����� �� �����... �������, � ����� ��������� �� ����������. ��� � � �������, ��� ��� ��������. � ����, ��� �������, ��, �������, ��� �� ����������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 49
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 50
  IF ~~ THEN REPLY ~���. ����� ��� ���, ��� � ������� ���� ����� *����* ����.~ GOTO 51
  IF ~~ THEN REPLY ~�������������� ����� ����� ������.~ GOTO 52
  IF ~~ THEN REPLY ~������� ���� ������. �������������� ������ �� �����������.~ GOTO 53
  IF ~~ THEN REPLY ~������-��, ���. ����� � ������ ��� � ������ �������� ����.~ GOTO 46
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY ~����� � ��������� ��� ������� ���. ���� � �������� �������� ���������� �� �������� � ������ ���������, ��� ������ ����� ������ �� ������ � ��������� � ���� ������.~
  IF ~~ THEN REPLY ~����� � ��������� ���.~ GOTO 47
  IF ~~ THEN REPLY ~������, �� � ���� ���������� �������� �������������� �� ���.~ GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 31.2
  SAY ~���?! �� ����� ����� ����� ���� ��������� ����� �� ������! ������ ��������� �� �������� �������� � ��������� � ����!~
  IF ~~ THEN REPLY ~����� � ��������� ���.~ GOTO 47
  IF ~~ THEN REPLY ~������, �� � ���� ���������� �������� �������������� �� ���.~ GOTO 56
END

IF ~~ THEN BEGIN 40 // from: 32.1
  SAY ~�� ������� ���� � ����� �������� � ��� ����������� ����. � � ����� ����� ����, <SIRMAAM>. �������, ��� ���������� ��� ��������� ��������������. ��� � ���� �������, � ��� ��� �������� � 1000 ������� �����. � ����, ��� ��� ������ �������, �� �� ������ ��������� ���, ��� ������� ����� ������ �����.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 41
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 42
  IF ~~ THEN REPLY ~���. ����� ��� ���, ��� � ������� ���� ����� *����* ����.~ GOTO 43
  IF ~~ THEN REPLY ~�������������� ����� ����� ������.~ GOTO 44
  IF ~~ THEN REPLY ~��� ���� ������� ������, �� � �� ���� �������� �������������� �� ��������.~ GOTO 45
  IF ~~ THEN REPLY ~������-��, ���. ����� � ������ ��� � ������ �������� ����.~ GOTO 46
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY ~��... � ���� ���� ��� ���-���. � ��� ������, �� ������������ �������� ��������������. 1350 �������, �� ������ � ���� ��� �� ������.~
  IF ~~ THEN REPLY ~�������, ��� ��������.~ GOTO 54
  IF ~~ THEN REPLY ~������-��, ���. ����� � ������ ��� � ������ �������� ����.~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY ~��� ������ ������ ���������� ���, <SIRMAAM>, ����� ���� �������������.~
  IF ~~ THEN REPLY ~���. ����� ��� ���, ��� � ������� ���� ����� *����* ����.~ GOTO 43
  IF ~~ THEN REPLY ~�������������� ����� ����� ������.~ GOTO 44
  IF ~~ THEN REPLY ~������-��, ���. ����� � ������ ��� � ������ �������� ����.~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 40.3
  SAY ~�������, ���������, �� ��� ��? ��� ��� �� ��������� �� ������ ��������������? ��� �� ������ ��������� �� ��� ������ ��� �� ������ �������? ��� �����, � �� ����� ��������������. � ���������� ��� �������������� �� ����������� ����, �������, ��� �� ������� ��� � ��������������.~
  IF ~~ THEN REPLY ~��! ������� ����� �������!~ GOTO 46
  IF ~~ THEN REPLY ~�������. ����� �������.~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 40.4
  SAY ~��� ��, ��������. ������� ��� ���. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(250000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(1000)
TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

������� ������ ����� ��������� � ������� ��������� �� ��� ������� ��������������. ��� �������� � ��, � ������. ��� ���������� ��� � ���� �� ������ ���� ������ ��.~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 40.4
  SAY ~�� ����� �����������. �������� ���� �� ��������... ��� ������ �����, ���� �� �� �������� �������� ��������������, ��� �� �� ��� �� ��������. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(265000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

������� ������ ����� ��������� � ������� ��������� �� ��� ������� ��������������. ��� �������� � ��, � ������. ��� ���������� ��� � ���� �� ������ ���� ������ ��.~ EXIT
END

IF ~~ THEN BEGIN 46// from: 40.5
  SAY ~�������������! � �� ����� ���� ����� ������!!~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 35.1
  SAY ~����� ���������� ������� ���. � ���� ����� ������ �����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from: 35.2
  SAY ~��� ������, <SIRMAAM>. ���� ����� ��������� ����� ��������� � �������� ����� �� �����... �������, � ����� ��������� �� ����������. ��� � � �������, ��� ��� ��������. � ����, ��� �������, ��, �������, ��� �� ����������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 49
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~��� ���� ����� ����������. �����, �������� ������?~ GOTO 50
  IF ~~ THEN REPLY ~���. ����� ��� ���, ��� � ������� ���� ����� *����* ����.~ GOTO 51
  IF ~~ THEN REPLY ~�������������� ����� ����� ������.~ GOTO 52
  IF ~~ THEN REPLY ~������� ���� ������. �������������� ������ �� �����������.~ GOTO 53
  IF ~~ THEN REPLY ~������-��, ���. ����� � ������ ��� � ������ �������� ����.~ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 37.1
  SAY ~� �������, �� �����. ���, ������� - 250 �������. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(250)
TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

���� �� ������ ��������� ��������� �������, �� �� �������������� ���� ���� ������, ��� �������� ����� ����. ��� ������ ���� ��������, ��� ���� �� �������� �� ������� ���������.~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 37.2
  SAY ~��� ������ ������ ���������� ���, ����� ��� �������������. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

���� �� ������ ��������� ��������� �������, �� �� �������������� ���� ���� ������, ��� �������� ����� ����. ��� ������ ���� ��������, ��� ���� �� �������� �� ������� ���������.~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 37.3
  SAY ~�������, ���������, �� ��� ��? ��� ��� �� ��������� �� ������ ��������������? ��� �� ������ ��������� �� ��� ������ ��� �� ������ �������? ��� �����, � �� ����� ��������������. � ���������� ��� �������������� �� ����������� ����, �������, ��� �� ������� ��� � ��������������.~
  IF ~~ THEN REPLY ~��! ������� ����� �������!~ GOTO 46
  IF ~~ THEN REPLY ~�������. ����� �������.~ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 37.4
  SAY ~��� ��, ��������. ������� ��� ���. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("NWKey06")
EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

���� �� ������ ��������� ��������� �������, �� �� �������������� ���� ���� ������, ��� �������� ����� ����. ��� ������ ���� ��������, ��� ���� �� �������� �� ������� ���������.~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 37.5
  SAY ~�� ����� �����������. �� ��� �� ��������... ��� ������ �����, ���� �� �� �������� �������� ��������������, ��� �� �� ��� �� ��������. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

���� �� ������ ��������� ��������� �������, �� �� �������������� ���� ���� ������, ��� �������� ����� ����. ��� ������ ���� ��������, ��� ���� �� �������� �� ������� ���������.~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 41.1
  SAY ~��� ��, ��������. ������� ��� ���. �� ������� ������� ������, ��� � ����� ���������. ������ � �����, ������ ����� � ������ �� �� �����. ������� ��� ����, <SIRMAAM>.~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(250000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(1350)
TakePartyItem("NWKey06")EraseJournalEntry(%����������: ����������

������������ �� ����� ������� �������, ��� ������� �������� �� ������ ������ ����������� �������� ������ ��� �� ������� �����. ��� �� ������ ����������� ���� �� ������, ��� �� ������ �����, �� ��� � ��������� ����� �������. � �������� �������������� ��� ������ ��� � �������� ������ ���� �� ��� �����, ��������� �� ������� �������.%)~ SOLVED_JOURNAL ~����������: ����������

������� ������ ����� ��������� � ������� ��������� �� ��� ������� ��������������. ��� �������� � ��, � ������. ��� ���������� ��� � ���� �� ������ ���� ������ ��.~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 38.2
  SAY ~�� �������� ��������������, ��� ������ ���� ����� � ����. �� ������. ��� ��� ������������� �����.~
  IF ~~ THEN REPLY ~�������. ����� � ������� ��� ��� ���.~ GOTO 47
  IF ~~ THEN REPLY ~����� � ������ �������������� � ������ �������� ����!~ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.2
  SAY ~��� �������������! �� ��� �������� � �����, �����!~
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()~ EXIT
END

// -----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("FormosaQuest","GLOBAL",1)~ THEN BEGIN 55 // from:
  SAY ~������� �� ���� ������.~ [FORMOSA5]
  IF ~~ THEN EXIT
END

