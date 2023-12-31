// ����� ������������ ����� ����� �������    ������� �������      ��� ���� � �������, ��� �������, ������� � ���� ���������� ��������.

BEGIN ~ELTURA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)!Class(Player1,MAGE_ALL)!IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~���... � ����� ���. �� ���� �� ����� �������� ������, �� ��� ��? ��������, �� ��� ������� ������������. ��� ��� ����� �����������.~ [ELTUR050]
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��, ������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, ������ �� ���� ������. ���, � ����� ������ �� ������ �� ��������� �� ��, ��� � ���� ��� ����������?~
  IF ~~ THEN DO ~  StartStore("ELTURA2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� ����� ��� ������� �������� <DAYNIGHT>, <SIRMAAM>. ����������, �������� ���.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 3 // from:
  SAY ~��, ������������, CHARNAME>. � �������, ��� � ������ �������� ����� ������ �����. ������� ��������� ����� ������������ ���!~ [ELTUR052]
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ��� �� �������?~ GOTO 4
  IF ~~ THEN REPLY ~��� �� �������� �������� � �������.~ GOTO 5
  IF ~~ THEN REPLY ~� �� ������� ������ �����, ������ �� ��� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY ~� ������, ��� ��������. � ���� ����� �������� ��� �������� ������������, ��������� ���� ������� ����������� �����������. �� - �������� ����, � ���� ���� - �������� ��������� ���� ��������� ������� �� ��������. �� ������������� ������ � ������ ����������� ��������� � ��������� ������ � ����� �����. ������ �� �� �������������� � ����� �������?~
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� �� �������� �������� � �������.~ GOTO 5
  IF ~~ THEN REPLY ~� �� ������� ������ �����, ������ �� ��� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~��� �, � ���� ��� �������. �� ����� ��� ��� �������� � �������, ��� ����� ��������, ��� �� � ����������� ���� ��������� ���������� ������� �������������. � ������ ��������� �� ������ ��������, ��� �� ���� ������ ��������� ����������� ������ � ��������� �� � ���������� ���� �������. � ������ ���, �����, ������ ������. ������� ��� ������ ����, � ����� ��������� �� ���.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.4
  SAY ~��, ���� *���* ���������� ��� ������ �����, ����� �������� ������� ���� ���������� - �� � ���� � �������!~
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ��� �� �������?~ GOTO 4
  IF ~~ THEN REPLY ~��� �� �������� �������� � �������.~ GOTO 5
  IF ~~ THEN REPLY ~� �� ������� ������ �����, ������ �� ��� ������?~ GOTO 6
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 3.5
  SAY ~��, � ������ �� ����, ����� ����� ����������� ���. ���������, ����� �� ��� �����������. ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~�� ������ ����� ������ ��������� ����: ������� �����, ������ ����, ������ ������ � ������� ������. ���������� ��������� �������. ��� ���� ����� ����� � ������ ������������ ��������� �����, ������������ �� ������. ��� �������� �������� ������� �������. �������� ���� ����. ���������, ����������� ���������� �� ���, ��� ������ ��������� ��������� � ���. ������������� �� ���, ����� ��������� ��� ������ ��������.~
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",1)GiveItemCreate("Elturkey",LastTalkedToBy,0,0,0)~ EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",0)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY ~������������, <CHARNAME>. ���������, ����� ������ ��������� ����� ���������? ��� �������� ���-�� ���?~ [ELTUR051]
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~  Global("CloakTower","GLOBAL",1)PartyHasItem("Nwmisc20")PartyHasItem("Nwmisc21")PartyHasItem("Nwmisc22")
PartyHasItem("Nwmisc23")~ THEN REPLY ~�������, ����� �� � �������� � �������?~ GOTO 10
  IF ~  Global("CloakTower","GLOBAL",2)~ THEN REPLY ~�������, ����� �� � �������� � �������?~ GOTO 11
  IF ~  Global("CloakTower","GLOBAL",1)OR(4)!PartyHasItem("Nwmisc20")!PartyHasItem("Nwmisc21")!PartyHasItem("Nwmisc22")
!PartyHasItem("Nwmisc23")~ THEN REPLY ~�������, ����� �� � �������� � �������?~ GOTO 12
  IF ~  Global("CloakTower","GLOBAL",3)!Dead("EltGolem")~ THEN REPLY ~�������, ����� �� � �������� � �������?~ GOTO 13
  IF ~  Global("CloakTower","GLOBAL",3)Dead("EltGolem")~ THEN REPLY ~�������, ����� �� � �������� � �������?~ GOTO 14
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY ~��� ������� �� �������� ������������, � �� �������� ��. �������! ������ ��� ��������� ��������� ���� � ������.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY ~��� ������������� � �������, ��� ����� ����� ���������� ���� �� ���� ����������. ����������� ������� ��� ��, ��� �������� ��� ������. ����������� ������, ���������� � ������ ���������, � ��������� ���� �������� �����, ���� �� �� ������, �� ��������� ��������, ��� ����������� ��� ������. ����� ������ ������, ������� ��� �� ����, � ��� ������������ � ��� ���������.~
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",2)TakePartyItem("Nwmisc20")
TakePartyItem("Nwmisc21")TakePartyItem("Nwmisc22")TakePartyItem("Nwmisc23")AddexperienceParty(80000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~��� ��������� ��������� ���� � ������. ��� ������������� � �������, ��� ����� ����� ���������� ���� �� ���� ����������. ����������� ������� ��� ��, ��� �������� ��� ������. ���� �� �� ������, �� ��������� ��������, ��� ����������� ��� ������. ������?~
  IF ~~ THEN REPLY ~��.~ DO ~SetGlobal("CloakTower","GLOBAL",3)StartCutSceneMode()StartCutScene("EltTest")~ EXIT
  IF ~~ THEN REPLY ~���.~ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY ~��� ������� �� �������� ������������, � � ��� �� ���. �������������, ����� �����. �� ������ ����� ������ ��������� ����: ������� �����, ������ ����, ������ ������ � ������� ������. ���������� ��������� �������.~
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY ~�� ���������� ���������� �������� � �� ������. �� ������ ���������� �����, �� ��� ������ ���� ����, ��� �� ������ ����������. ���� �� ������ ����� ������ ���������, ����� �������� ��� �������. "�������������" � 500 ������� ��� ������� ��������.~
  IF ~  PartyGoldGT(499)~ THEN REPLY ~��� ��� 500 �������. ��������� ��� ��� ��� ������ ����.~ GOTO 16
  IF ~~ THEN REPLY ~� �������� �����.~ GOTO 15
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 9.5
  SAY ~����������! �� �������� �������� �����������������! �� ����������� ����� ��������� �� ��������� ����� � ������� ��������� �����. � ���� ��� ������ �������. ������ ���� ���� � ��������� � ������, ��� ������� ������ ����� ������ ������ ���.~
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",4)GiveItemCreate("EltCloak",LastTalkedToBy,1,1,1)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2
  SAY ~����� ��������� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY ~��� ��������� ��������� ���� � ������. ��� ������������� � �������, ��� ����� ����� ���������� ���� �� ���� ����������. ����������� ������� ��� ��, ��� �������� ��� ������. ���� �� �� ������, �� ��������� ��������, ��� ����������� ��� ������.~
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",3)TakePartyGold(500)StartCutSceneMode()StartCutScene("EltTest")~ EXIT
END

// ---------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 17 // from:
  SAY ~����� ����������, �������. ��� ��� �����?~ [ELTUR053]
  IF ~~ THEN REPLY ~� ��� ���� ���������� ���������� ��� ������ �������?~ GOTO 18
  IF ~~ THEN REPLY ~��� ����� ���������� ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~��, ��� ������ ������� � ������� ���� ������ ����������. ���, ���������.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

