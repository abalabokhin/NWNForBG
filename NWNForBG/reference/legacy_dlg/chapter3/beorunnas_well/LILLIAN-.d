// ������� ��������: ��� ������ ��������, ��� ������� ������� ����� ��������� �������������� � �������� ����������, ������������ � ���� ���������.

BEGIN ~LILLIAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~**���** ��, � � ���� �-����! �� ���� �� ���, ���� �-����������� ����� ��������, ����� ����� ����� ������, ��! **��** �-��������, ��� � ����. �� ������ ������� ���. ��� ���������� ����� ���� �������! ��� �������, � ��������! �� ���� ��� ������! � ������ �������-��! ������ ����� ����� ������ ����� ����� ������!~ [LILLIAN54]
  IF ~~ THEN REPLY ~� �����, �� ��� ���������� ������, ������.~ GOTO 1
  IF ~~ THEN REPLY ~��������, � ����� ��� ��� ������, ���� �� �������� �� ���� � ���������� ���� ������ ��������.~ GOTO 1
  IF ~~ THEN REPLY ~��� �� ������ ������� ��� � ������ ������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ������ �� ���� ��� �������������! � �� ��������� �������� - � ��������� ����... ������... � ��������� ������� � ���� �������!~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~� ���� ��� ���� ���� ��� ���� ���� ������, ������. ��� ���� ������ ����� ������������ �������� ������. *��* �� ������ �����-�� ����� ������ � ������� ��� ������, � � ������� ������ ����� - ����� � �������. ��� ����� ������ ���� �������, ����� �������������! *��* ���� ������� �����������, ������� ���, ����� �������� ���� ���������. � ���� ��� ������ �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~��� ����� ������ ���� �������, ����� �������������! *��* ���� ������� �����������, ������� ���, ����� �������� ���� ���������. � ���� ��� ������ �����.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("LillianJob","GLOBAL",2)~ THEN BEGIN 4 // from:
  SAY ~**���** ��, � � ���� �-����! �� ���� �� ���, ���� �-����������� ����� ��������, ����� ����� ����� ������, ��! **��** �-��������, ��� � ����. ���� ������������� ����� �-����������� ������� ����. ������ ���� ������� ���� ��� ����, �� �����... �������!~ [LILLIAN54]
  IF ~~ THEN REPLY ~�� �����!~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~� �� �-�����! *��-��-��* � ������ ��������, ���������� ��������! ���� ����� �-����� � ���������� ��� ����-��... �-������������� ������ ����� ����� �-������. �����, �-������ ���� ��������.~
  IF ~~ THEN REPLY ~��� ���������� ����� ����� ������.~ GOTO 6
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~���� ����� �����-��� ������ ���� �-������� �����. ���� �� ���� �-������ ���. ��, ��� ��� ����� ���� �����-��.~
  IF ~~ THEN REPLY ~� ��� �� ��������?~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~�� � �-��������� �������. ���� �� ������ ��������� �����������, ���� ������, ����� ���, ��� ���� ����� ����� ���-����. �-�������, �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY ~�-� �������. ���� �������. �-������ ������ ������. �-������� ����� ���. �� �����-���������. ������ ������������� ��������� �����. *��-��-��* ����� ��������� ����� ���� ������� ���� �-������� �����, � ����� ������, ������, ���� ���.~
  IF ~~ THEN REPLY ~��� ��� ������� � ������� �����?~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 81
  SAY ~������ ��������� � ��������� �� ������� �����. ����! � �� ������! ������ �� ���, ��� � ����� �� �����-��, ���� �� �������� � �����-������ ���������. ���� ����-���� ������. � ����� ��� ��-�������, ����� �����.~
  IF ~~ THEN GOTO 7
END

// -------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("Chapter3AarinJob","GLOBAL",1)Global("LillianJob","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~**�, �� �� ��� ��� �������. � ����� ����� - �� ������� ���� ������ �����, ���� ���-������ �� ��������� ������������ � ��������� ��� ����� ��������!~ [LILLIAN57]
  IF ~~ THEN REPLY ~� ����� �� ��� ����, ����� �������� �������. � ������� �� ������ �����.~ GOTO 11
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~��� ��������, �� ������ ��� ���-�� ���������� �� ���� ������� �����.~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~��, ��. <CHARNAME>, ����� ������������. � �� ������� ����� �� ���� ����������� �������, ���� �� ��� ����� �� ��� ����. ���� ����� ������ ��������, ��������. � - ������� ���������� ������ �� ������������ � ������� ����������. ��� ��������, ����� ���� �����������, ��� � ��������, ����� ���������� ���� ���������� ������ ����� ������.~
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~��� ��������, �� ������ ��� ���-�� ���������� �� ���� ������� �����.~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY ~������� �����? ��� ����� ��������, ������� ��������� ����� ����� ������ � ���� ���� �������� ����������� ��� �� ����� ����. �� ������� ������� ��� ��������� ���������? ��� ��� ��, <CHARNAME>. ��� ���� ���������, ��� ��� ������ �� ������� �����, ������� ���� � ���� ��������.~
  IF ~  !PartyHasItem("Snoworb")~ THEN REPLY ~�������� ��� ���, ��� � ���� ����� ������� �����.~ GOTO 36
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY ~��� �� ���� � ����� � ����: �������� �� ���� ������� � ������ ���� � ���� �����������, ������� �� �������... ��, � ����� ������������� ������� ����, ����������.~
  IF ~~ THEN REPLY ~��� � ���� ����� ����� ������?~ GOTO 15
  IF ~~ THEN REPLY ~�������� ��� � ���� �����������.~ GOTO 16
  IF ~~ THEN REPLY ~��� �� ��������� �����, � ������� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 18
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~��� ��������, �� ������ ��� ���-�� ���������� �� ���� ������� �����.~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~��� ��� ��, <CHARNAME>. ��� ���� ���������, ��� ��� ������ �� ������� �����, ������� ���� � ���� ��������.~
  IF ~~ THEN REPLY ~�������, � ��� �� �������?~ GOTO 19
  IF ~~ THEN REPLY ~���, ������ ������� �����.~ GOTO 20
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~���� �� ��� ���� ����������� � ���, ����� ���������� ���� �����, <CHARNAME>, � ����� ���������� �� ������ ����� ���, ��� ����. �� ���� �������, ��� ������ ������ � ������ ���. ���� �����������, ��������� �����, ���� ������ ���� ������ ���������� ����������. ���, ��� � ���� � ���, ���� ������ � �������, ���������� �� ����� � ��������.~
  IF ~~ THEN REPLY ~��������� �� ���-��� ������.~ GOTO 21
  IF ~~ THEN REPLY ~��� � ��� �� ��������� ���������.~ GOTO 21
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ������.~ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY ~���������� �������� �� ����������� ��������������, ������ ��� ���� ����� ���� � �������������, ��� ����� �� ����������������, ������� ���������� �������. �������� ��� �������� � ���, ����� ����, ��� ��� ���� �������� � ������������ �������, ������� ���������� ��� ���������� ����� ������ ����, ������� ����������� � ��� �� ����.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY ~�� ������ ������� ��������� �������� � ������������ ����������, � � ���� ������� ������ ����� � ��������������� ��������� � ���� �������. ����������, ��������, �����������... �����������, ����� ��������� ����� ��� ��������!~
  IF ~~ THEN REPLY ~�� ������ ������ ��������� �����!~ GOTO 23
  IF ~~ THEN REPLY ~�� ��� ����������, ��� �� ������ ��������� �� ������ �����?~ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY ~�����, � �� ����� ���� ������. � ��� ���, ��� � ������ � ������� ��������, � ���������� ����� ��� ����� � ���� ���������. � ���� ����� ������ � ������� �������, � ������� ���� ������ �������, ����� ����-������ ������ �������. ����� ����, �� �����, ��� ����� ���-�� ��� ������ ����� ����, ���� �� � ���� ���-������ ��� ������?~
  IF ~~ THEN REPLY ~��� � ���� ����� ����� ������?~ GOTO 15
  IF ~~ THEN REPLY ~�������� ��� � ���� �����������.~ GOTO 16
  IF ~~ THEN REPLY ~��� �� ��������� �����, � ������� ��������?~ GOTO 17
  IF ~  Global("PlayerKnovAboutSnowOrb","LOCALS",1)~ THEN REPLY ~��� ��������, �� ������ ��� ���-�� ���������� �� ���� ������� �����.~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY ~�������? ��, ����������. ����� ��� ������� �����, � � �������� ����, ��� ����� ���� �� ���� ����. �� ������ ��� ���� ���������, ��� ��� ������ �� ������� �����, ������� � ���.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~������, ��� ������� ����� ����� ����� ��� ����. �����, �� ����� �� ��������� ����� �� �� �����������.~ GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~������, ��� ������� ����� ����� ����� ��� ����. �����, �� ����� �� ��������� ����� �� �� �����������.~ GOTO 26
  IF ~~ THEN REPLY ~���, ������ ������� �����.~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 14.2
  SAY ~���-�� ���������... ��, �����! ��� �� ����� ������� �����, ������� � ���� ������ ����! �������, <CHARNAME>! ���, ������ ������� �� ��������. [��� ���-�� ��������, � ����� ��������.]~
  IF ~~ THEN REPLY ~��� �������!~ GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY ~� ���� ����������, ��� ���� ������� ��������� ���� ����, �� ��� ��������� �� ����� ������ � ���� �� ������ ��� ����� ����� ���. ���, ��� ��������, ��� ����� � ��� ������, ��� ��� �������. ��������� �������, ��� ����� ���� �������� ���������, ������� ������� � ����� �� ������. ������ ����������, ��� �� ����� ����� � �������, � ������� ������ ������ �� �� �� ����� ������, �, �����, �������� � ����� �� ������.~
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN GOTO 28
  IF ~  Global("LillianJob","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY ~� �� ���� ������� ����, ��� ��������� � ������������. ������ ��� ������� ���� ������, �� ����� ���������� �������, �� ������� ����������� ������� ������ ������������ �������������.~
  IF ~~ THEN REPLY ~��� � ���� ����� ����� ������?~ GOTO 15
  IF ~~ THEN REPLY ~��� �� ��������� �����, � ������� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~��� ����� ����������������.~ GOTO 18
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~��� ��������, �� ������ ��� ���-�� ���������� �� ���� ������� �����.~ GOTO 12
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~����������, <CHARNAME>! ������ '��������� �����' ������ ��� ������������. � �������� ������� ���� '���������������� �������', � ������ ����������.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY ~����� � ��������, ��� ����� ���� ���� ����� ������, � �������� ����, ����� ���������� ���� ������. � ����� ��������� ��������, ������� ����� ���������� ����� ���������.~
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN GOTO 30
  IF ~  Global("LillianJob","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY ~����� ����, ���� � ������� ����, �� �� ��� ���������. ��������, � ����� �� ��������� ���� ���-����� ������� �� ������� �� ����������� ���� ������� �����. ��� ������ 300 �������?~
  IF ~~ THEN REPLY ~������������.~ GOTO 32
  IF ~~ THEN REPLY ~������ �� ����.~ GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY ~������, <CHARNAME>, ��, �� ������, ������� ����� ���. � �� ��������� ������� �� ���� ����������� ����. ����� ����, � ����, ��������� ����� ���� ��������� � ������ ������. � ���� �� ������ ������� �� ��� ����, ���� �������� ������� ��� ������� �����.~
  IF ~~ THEN REPLY ~���, ������ ������� �����.~ GOTO 20
  IF ~~ THEN REPLY ~������ �� ����.~ GOTO 33
END

IF ~~ THEN BEGIN 27 // from: 20.1
  SAY ~�� �����, <CHARNAME>. � ������ ��������������� ������� ����� �� ����������� ��������� � ���� ������� �����, � ���� �����, ��������� ����� ���������. ���� �� � ������� ��� ������, ���� �� ���� �� ������� �� � ����. ������ �-��� � ������... �������. ���� ��������� ������� ������, ��� � �-������������.~
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~��, ��� � ��� �������� ����, <CHARNAME>, � ����, ��� ��������� ���� �� ���� ����, � � ���� ��������� ���������� � ����� ���� �����������, ���� �� �������� ��� ������� ����� � �����. � ���� ������ ���� ��� ���-��?~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� ���� ��� �������, ����� ������ ���� ������� �����. ��� ���������� ��� ����� ������ ����� ����� ������!~ GOTO 35
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~�������� ��� ���, ��� � ���� ����� ������� �����.~ GOTO 36
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY ~������ � ���, ��� ��� ����� ���� ��� ������... ��� �� �����, � ������, ��� �������� ��������������� ������ �� ���� ����� ������ ��� ������������ � ���������.~
  IF ~~ THEN REPLY ~��� � ���� ����� �����?~ GOTO 38
END

IF ~~ THEN BEGIN 30 // from: 24.1
  SAY ~�, �������, � ������ �������������� � ���, ����� ����� ����, ������� ������� ��� ������� ����� � �����, ��� � ���� ��� ���������.~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~�������� ��� ���, ��� � ���� ����� ������� �����.~ GOTO 36
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 24.2
  SAY ~� ����� � ������� ����� ������� �������� �����������, �������������, �������� � ��������, ������� ��� �� ������� ��� ������ � ����� ��������� ����.~
  IF ~~ THEN REPLY ~����? ������ ���� ����?~ GOTO 39
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY ~���-�� ���������... ��, �����! ��� �� ����� ������� �����, ������� � ���� ������ ����! �������, <CHARNAME>! ���, ������ ������� �� ��������. [��� ���-�� ��������, � ����� ��������.]~
  IF ~~ THEN REPLY ~��� �������!~ GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 26.2
  SAY ~��� ���������, <CHARNAME>. � ����� ������, � ����������, ��� ��������� ����� ������� �����, - ��� ������ �� �����, ������� ��� �����. ���� ���, � ������� �����, ���� �� ������� � ����. �����, ���� � �� ������ ������� �����, �� �� �������, ��� ����� ����� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.1
  SAY ~������, ��� � � �������, � ��������, ��� ����� ����� ������. ����, ��� ����� ���� ��� ����������, � ����� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("LillianJob","GLOBAL",2)TakePartyItem("Snoworb")DestroyItem("Snoworb")AddexperienceParty(102000)EraseJournalEntry(%������� ���

������ �������� ���� �������� �������� �����������, ����� ��� ������ �� ������ ������� ���, ������� � ��� ����� ��������� �� ����� ����. � ����� �� ��� ��� ���������� ���������� � ���, ��� ��������� ���� �� ���� ������. ��� ������, ��� ���� ��������� ����������� ������ �������� ���� ���-�� � ���� ����� - ���������� � ��� ����������� ����� ������ � �������������� ������������ ������ ������������.%)~ UNSOLVED_JOURNAL ~������� ���

������ �������� �������� ������� ���� ������� ���. ��� � �������, ��� ���������� � ���, ��� ��������� ���� �� ���� ������: � ����� ����������� ���� ������ �������� ����! � ������� ����� ������� ��� ��� ��������� �� ���� ��������� � ������� ������, ������������� ������� � ������� � ������� ��������. ���� � ������� ������ ����, ��, ������ �����������, ��� ������� � �� �������, ����� ��������� �� ������������ ����, ������������ ������ �������� ����.~ GOTO 41
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY ~�� �����, �� �� ���� �� �������������, ��������� ����� ������ ��� ������� �����, <CHARNAME>. � ���� ���������� ����� ������ ����� ����, ����, ������� �� �� ����� ���� ����������� ����! ���� ������������ ��� ����, ���� ���� ��� ����� �� �����. ������� �� � ������ � ���� ��� ������� �����. �� �� ������� �� ������ ������ �� �������. ������ ���� ���� � ���� �� ��, ����� ������ ���������� ������ ��� ������� ������� �����.~
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 36 // from: 28.4
  SAY ~��� � ��� �������� ����, ������� ����� ���� �������� ����������� �� ����� ����. �� ������ ���, ��� ���������� � ��� ����� �� ������ ����������� ����������� ������-�� ����������. ���� �� ����������� ��� ���������, ���� ����������� ������ ������������, ����� ������� � ����������� ����������.~
  IF ~  !PartyHasItem("ToLab1")~ THEN GOTO 43
  IF ~  PartyHasItem("ToLab1")~ THEN GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 28.5
  SAY ~��, �����. ����� ����. ������� �� ��� �����, ���� � ���� �������� ��� �������. � ����� ������, ��� ����� � ����� � ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 29.1
  SAY ~�� ����, ��� � �������� ����, ��� ��������� ����� ����, ��� ����� � ����� ������� ������ ���� ��������. �� ��� ����� � ���� ������ ���� ������������� ����: ������� �����, ������� � ��������� �� ��������� ������ ������ �������� �����������. ���� �� ������, ����� � ���������� ���� ���, ��� ���� � ���, ��� ��������� ����� ����, ���� �������� ��������� ��� ������� ����� ��� ����.~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� �� ���� ������� ����� �� ������ ������� �����!~ GOTO 35
  IF ~~ THEN REPLY ~��� � ���� ����� ������� �����?~ GOTO 45
  IF ~~ THEN REPLY ~���� �� ������, ��� ����� ������, ����� �������� ���. �� �� �� ������ ���� ���������.~ GOTO 46
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY ~���-��� ���� � ���� ��������. ����� ������ � ������������� �������� - ������� �����, ������� � ������ � ����� �� ��������������� ���������� ��� ������ ����� �������� �����������. ��� ���� �� � ����� ����, ��� ����� �� ������� ��� ������� �����, � ���� �� ������ ����������. ���������, �� ����� ����, ����������, ��� ���� ����� �� ���������� ���, ��� ���� � ���, ��� ��������� ���� �� ���� ������.~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� �� ���� ������� ����� �� ������ ������� �����!~ GOTO 35
  IF ~~ THEN REPLY ~��� � ���� ����� ������� �����?~ GOTO 45
  IF ~~ THEN REPLY ~���� �� ������, ��� ����� ������, ����� �������� ���. �� �� �� ������ ���� ���������.~ GOTO 46
END

IF ~~ THEN BEGIN 40 // from: 32.1
  SAY ~�� �����, <CHARNAME>. � ������ ��������������� ������� ����� �� ����������� ��������� � ���� ������� �����, � ���� �����, ��������� ����� ���������. ���� �� � ������� ��� ������, ���� �� ���� �� ������� �� � ����. ������ �-��� � ������... �������. ���� ��������� ������� ������, ��� � �-������������. ������, ��� � � �������, � ��������, ��� ����� ����� ������. ����, ��� ����� ���� ��� ����������, � ����� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("LillianJob","GLOBAL",2)TakePartyItem("Snoworb")DestroyItem("Snoworb")GiveGoldForce(300)AddexperienceParty(102000)EraseJournalEntry(%������� ���

������ �������� ���� �������� �������� �����������, ����� ��� ������ �� ������ ������� ���, ������� � ��� ����� ��������� �� ����� ����. � ����� �� ��� ��� ���������� ���������� � ���, ��� ��������� ���� �� ���� ������. ��� ������, ��� ���� ��������� ����������� ������ �������� ���� ���-�� � ���� ����� - ���������� � ��� ����������� ����� ������ � �������������� ������������ ������ ������������.%)~ UNSOLVED_JOURNAL ~������� ���

������ �������� �������� ������� ���� ������� ���. ��� � �������, ��� ���������� � ���, ��� ��������� ���� �� ���� ������: � ����� ����������� ���� ������ �������� ����! � ������� ����� ������� ��� ��� ��������� �� ���� ��������� � ������� ������, ������������� ������� � ������� � ������� ��������. ���� � ������� ������ ����, ��, ������ �����������, ��� ������� � �� �������, ����� ��������� �� ������������ ����, ������������ ������ �������� ����.~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 34.1 40.1
  SAY ~� ����������� ������� ����� ������������� ������� � ������� ������������� ��������. ������ ���������� ����� ���������� ����������� ���, ����� ��������� ���, ���������� ������ ���������� ������ ����������!~
  IF ~~ THEN REPLY ~����������� ���? ��� ����� ��������?~ GOTO 47
  IF ~~ THEN REPLY ~����� ��� ��������� ����� � ����� ����?~ GOTO 48
END

IF ~~ THEN BEGIN 42 // from: 35.1
  SAY ~�� ��� ��� �� ����� �������� ��������� � ����. ���� ������, ����� � ����������, ��� ����� ����� ����� ������, ����� ��� ������� �����. ������ ��� ������ ����� ������� ���� ��������.~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~�������� ��� ���, ��� � ���� ����� ������� �����.~ GOTO 36
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 36.1
  SAY ~���, ������ ���� ������, ���� � ���� ��� ���, � ���� �� ��� �����. ����� ��� ������� �����, � � �������� ����, ��� ����� ���� �� ���� ������.~
  IF ~~ THEN DO ~GiveItemCreate("ToLab1",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2
  SAY ~����� ��� ������� �����, � � �������� ����, ��� ����� ���� �� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 38.3
  SAY ~� ���� ��� � ������, ����� ������ ������� ����� ����� ����������, ����� � ���� �� ����� ������������, ���� � ������ �����������, ��������� �� ����� ����. �� ����, ��� �� ��� ������, � ������, ��� ���� ��������� ������ ����������� ��������������. ��� ����� �� ����� ���������� ���� � ����������� ����������� ������-����� �������� ���������� ���-�� � �������� �� ������ ���� �����.~
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 38.4
  SAY ~������ ���� �� ����� �����, <CHARNAME>. ����� ���� ����������� �������� ��������� ���� ����. ��� �������, ��� �� � ����� �������, ���� �� ���������� ���� �������? ����� ��� ��� ������� �����, � � � ������������� �������� ���� ���, ��� ���� � ��������������� ����� ������. ������, ���� � �� ������ �����, ���� ������ ��������� ��� ���.~
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� �� ���� ������� ����� �� ������ ������� �����!~ GOTO 35
  IF ~~ THEN REPLY ~��� � ���� ����� ������� �����?~ GOTO 45
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY ~� ����������� ������� ����� ������������� ������� � ������� ������������� ��������. ������ ���������� ����� ���������� ����������� ���, ����� ��������� ���, ���������� ������ ���������� ������ ����������!~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 41.2
  SAY ~���� ������� ������ � ��������� �����, ���-�� ������� ���� �� ���� ������ � ����������� ����.~
  IF ~~ THEN REPLY ~��� � ���� ������ �����?~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 45.1
  SAY ~��� ������ ������, ��� ����� ������ ���� ��������� ��� �����������, � � ���� ��� ������� �����! ��, ���� �� ����������� ����������� ������ �� ���, ���� ����������� ���� ������ ������������. ���� ������ ���, ��� ������ � ������� ������ ������ ����� ������ ����� ���������� ������, ������� � ����������.~
  IF ~~ THEN REPLY ~��� ���� ������� ����� ���� ������ ������������? � ������ ���� ��������� ���� ��� ���?~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY ~����������� �� ����������� ���� ������������, ���� ��������� ������� ������ ������� ����� � ����� ���. ��������, ��� ���� ��� �����-�� ������ ������� ����� ������.~
  IF ~~ THEN REPLY ~�����, �������� ���� ������!~ GOTO 52
  IF ~~ THEN REPLY ~�� �� ���, ������� �� ����������.~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY ~� ����������� � ��������������� �������, � �� ���� ������, ����� �� ������������ ��� ����, ����� ���������� ��������������� ������������. ���� ����� ��� ������, �� ������ ��������� � ����� �������������, ����� �� �����... �����, ����� ���� ������, � �������������� ������ � ������������, ����� ������� ����� ����� ���, ��� ������� ���� ������ � ��� �����. � ����������� ���� ������� ����������� ��� ���������� �����.~
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY ~������� ����� ��������� �� ����� ���������� � ���� �������. ����� �� ��������, ������ ����� ������. ���� �� ������ ����������� ������ �����, ������ ��������� �� ��� � ��������� ������. ����, ��� ��� ���� ���� � ������! ������� �����! ����� �������, ��� �����������, ����� ����� ��� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.2
  SAY ~�� ���� �������, ��� � ���� ����. � ���� �� �� ��� �� �������� �� ������� ������ �����, ���� �������� �� ���������� �������, ������� ���� ����� ��������� ����� ������. � ������������, ��� ���� ��� ������ �������� ���, ��� ������� ����������� ������ �����. � ��� ���� ����� �� �. ������, ����� �� ��� ��������� ��� ������� �����, � ���� ������ ���� � ������������!~
  IF ~~ THEN REPLY ~�������, � ���-���� ����� ������ ������� �����.~ GOTO 52
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 51.1
  SAY ~�� ���� � ����������, ����� ����������� ������, ���� ������ ��� ������� �����! � �� ��������, ���� �� �� ������. ��� ��� ���� � ���, ��� � �������� ��� ����� � ���� �������. � �� ����� ��� �� ����� �� ��, ��� �� ������. � ������ ���� ������� ������� �����. ����� �� ���, � � ��������, ��� ��������� ���� �� ���� ������.~
  IF ~~ THEN DO ~GiveItemCreate("ToLab1",LastTalkedToBy,1,0,0)SetGlobal("LillianJob","GLOBAL",1)~ UNSOLVED_JOURNAL ~������� ���

������ �������� ���� �������� �������� �����������, ����� ��� ������ �� ������ ������� ���, ������� � ��� ����� ��������� �� ����� ����. � ����� �� ��� ��� ���������� ���������� � ���, ��� ��������� ���� �� ���� ������. ��� ������, ��� ���� ��������� ����������� ������ �������� ���� ���-�� � ���� ����� - ���������� � ��� ����������� ����� ������ � �������������� ������������ ������ ������������.~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY ~����, ��� ��� ���� ���� � ������! ������� �����! ����� �������, ��� �����������, ����� ����� ��� ���.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("LillianJob","GLOBAL",1)~ THEN BEGIN 56 // from:
  SAY ~**����������� ���� - �����, <CHARNAME>. �������, ��� ���� ����� ���� ��������� ������� ����� ������������ ��������, ��� ��� ����� ������� ������ ���� � ���� �����. �� ��, ���� � �� ��������. *��* ��, ��-�����. ������, ��� �� ���� ������-�������... �� ������ ���������� ��� ��� �����, ��������...~ [LILLIAN56]
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY ~�������� ��� ���, ��� � ���� ����� ������� �����.~ GOTO 36
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY ~������� ����� � ���� �����.~ GOTO 14
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 13
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 37
END

