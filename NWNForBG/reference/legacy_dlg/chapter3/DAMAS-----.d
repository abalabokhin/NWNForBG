// ���� ������ ������ ������  �������� �����   �������� ����� ������ ����� ���� ��������� � �����������.

BEGIN ~DAMAS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��! ��� ������ ����� ���������! � �� �����, ����� ����� ���������� ������ ���������... ��, ��������, <LADYLORD>. ��� ����������, ��� ��� ���� �� ������. ����� �������� ��� ������������� - � �� �� ������, ��� �������� ����� �������, �������� �����. ��� � ���� ������� ���?~ [DAMAS56]
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ������, ���� ����� ������������ �������� ���� �������� � ���� ������ ������ ������� � ���� �������� �� ��� ����� �������.~
  IF ~~ THEN REPLY ~������ ������� ��������?~ GOTO 7
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)GlobalLT("KillElks","GLOBAL",2)~ THEN REPLY ~�� ������, ������ ����� ����� ������� ���� ������ � ��������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ������ ���-������ � ������ ����?~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�������, ��� ����� ������� ��� ������������ �����. ����� ��������������� ��������� � ������������ �������� ���� �������� � ���� ������� ������ �������� ����.~
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~  Global("Siege_Is_Lifted","GLOBAL",0)~ THEN REPLY ~��������, � ����� ���-��� ����������� �� ������ ���� ���������.~ GOTO 11
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~~ THEN REPLY ~������ ������� ��������?~ GOTO 7
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)GlobalLT("KillElks","GLOBAL",2)~ THEN REPLY ~�� ������, ������ ����� ����� ������� ���� ������ � ��������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�������, ��� ����� ������� ��� ������������ �����. ����� ��������������� ��������� � ������������ �������� ���� �������� � ���� ������� ������ �������� ����.~
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ���� ������ �������� ����� ���������.~ GOTO 12
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~  Global("Siege_Is_Lifted","GLOBAL",0)~ THEN REPLY ~��������, � ����� ���-��� ����������� �� ������ ���� ���������.~ GOTO 11
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~�� ������, ������ ����� ����� ������� ���� ������ � ��������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�������, ��� ����� ������� ��� ������������ �����, ���� ����� ������������ �������� ���� �������� � ���������� ������� ����� ������� ����� �������� � ������� � ���� ������� ������ �������� ����.~
  IF ~  Global("KillElks","GLOBAL",0)~ THEN REPLY ~���� � ��� ���-�� ������?~ GOTO 32
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ���� ������ �������� ����� ���������.~ GOTO 12
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~  Global("Siege_Is_Lifted","GLOBAL",0)~ THEN REPLY ~��������, � ����� ���-��� ����������� �� ������ ���� ���������.~ GOTO 11
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~�� ������, ������ ����� ����� ������� ���� ������ � ��������?~ GOTO 8
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~�� � ���, ���� � ��� ������? �������� ����� ���� ����������� ������! �� ����� �����������. � ��� ���� ����, ����� ������� �� � ���� �����, � ��� ���� ��� *�����* ��� �������! ��� ������ ������ �� ������. � ��� ��� �����! �������� - �����, �������? ��� ������� ���� � ��������!~
  IF ~~ THEN REPLY ~��� �, �������. ����� ����� �������� ����������� ������.~ GOTO 14
  IF ~~ THEN REPLY ~������������ �������, �� ������� ����� ����� �������������� � ������� - �� ������� �� ��������� �� �������!~ GOTO 15
  IF ~~ THEN REPLY ~���� �� ������� ����� �����, �� � ���� ������� �� ����� �����-������ ������!~ GOTO 16
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY ~��� ����� ������, <LADYLORD>. ���� ��� ���-������ �����������, � ��������� � ����� ������������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY ~��� ����� � �����! ��� ������ ������ � ���, ��� ������� �� ������ � ������, ����� ��������� � ����������� ���������� � ������! ��, ����� ���������, ��� ���� �����! ���� ������ ������ ���� �������, ���� �� ����� �������� ��� �����! � �������� ������ ������, ���� ��� ������� �� ����� �������� ������� �� ������� ����� �������. ������, ���� ��� ������ ������ �� ����...~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY ~��� �����, ��� �������� ����� ���� ��������? ��������, ��� ������ ���� ������ ����� ����� ��������� ������� � ���������������!~
  IF ~  GlobalLT("KillElks","GLOBAL",2)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~�����, �� ������� ������������ � ��������� � �������� ����� ��������.~ GOTO 17
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY ~�, ��, ������ ����, ���� �� ������� ������ �����. �� �������� ��� �������� � ����� � ����������� ��� ������������ ���������� ���������, ���������? �� ���, ��� ��� ������� �������� ������. ����� ����� �������� ��������� ��������, � �� �����-�� ��� ������ ������.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY ~��� ���������� �������! ������� ��, ��� ������ ����������, ��� ��� ���� ������. �������������, ���� � �������� �������. ���, 1500 ������� �� ���� ��� �������������� ����������. �������� ���������, �� ��� ��?~
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",3)GiveGoldForce(1500)AddexperienceParty(80000)EraseJournalEntry(%����� ����� ������

�������� ����� �������� ��������� ������, ��� ������ ���������� ����������, �������������� ���� ������.%)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY ~� ���� ��� ��� �����: ���� ���� ����� � ���������� ��� ������ ����������, ��������� ����, � � ���������� � ���, ����� ���� ������ �� ��� ������� ������� �� ����� ����� ������. ������, ���� ������ ������...~
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",1)~ UNSOLVED_JOURNAL ~����� ����� ������

�������� ����� �������� ��������� ������, ��� ������ ���������� ����������, �������������� ���� ������.~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY ~�����������! � ���� ��������� ��� �� ����� ����� �������� ����� ������ ����������! �� �������� ������ ����� ����� ������, � ��� ������� ���� ��� 1000 �������!~
  IF ~~ THEN DO ~SetGlobal("KillElks","GLOBAL",2)GiveGoldForce(1000)AddexperienceParty(40000)EraseJournalEntry(%����� ����� ������

�������� ����� �������� ��������� ������, ��� ������ ���������� ����������, �������������� ���� ������%)EraseJournalEntry(%����� ����� ������

������, ����� ���������� ��������� ����������, ������� ����� ����� ��������� ����� ����� � ����� ������. �� �������� ��������� ������, ��� �������� ��� ������ ������, �������� ����� ������� �����, �������������� ����, ���������� ���� ������.%)~ UNSOLVED_JOURNAL ~����� ����� ������

������, ����� ����� � ����� ������ �����, ������� ����� ����� ��� � �������� ��������� � �������� �����. �� �������� ��������� ������, ��� ������ ���������� �� �� ���������� � �������� ������ ����� �������, ������ �����������.~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY ~����� ���� ����������! ��� �������� �� �� �������� �����������. �������-�� ��� ����� ������� �� ���� �������� �������! ���� �������. �������. 2000 ������� - ������������ �����. ������� �� ����, �� ������ ������ �����������.~
  IF ~~ THEN DO ~SetGlobal("KillElks","GLOBAL",3)GiveGoldForce(2000)AddexperienceParty(120000)EraseJournalEntry(%����� ����� ������

����� ��������, ��� ����� ���� �������� � �������� ������ ����� ������ ��-�� �������� ������������� ��������� ������; �������� ������ ������, ���������� ������ �������, � ������ �� �������������� ������� � �������� �������. ��� ������ �������� ��������������� ��� ������������. ����� ���� ������ ����� ����� ��������� ������ ��������� � ����, ���� �� ��������� �� �����������, ��, ������ �����, �� ����� �������, ������� ��������� ������ �� �����, ���� �� ���� �� �����. ���� �� ����� ������ ��� �������, ����� ��� �� ����� �� ����� � �������� �������, � ����� ��� ����� ���� ������������ �� ���.%)EraseJournalEntry(%����� ����� ������

�������� ����� �������, ��� �� ������� ����� ���� ������ �������. ������ ��� ������ �� ������ ��������� �������. ��������� ������� ����� ������� ������� - ��������� ��������� �� ���� ������ ����������� � ������ ����� ����, ��� �������� ����������� ������ ����� ��������� ������ � �������� ��������� �������.%)~ SOLVED_JOURNAL ~����� ����� ������

������, ����� ������ ������ ����������� ����������, ��������� ������ � ����� ����� ������ ������ ������� ������� ������� �����.~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY ~���, ��� ���� ������� �� ��� ���������. ������, ���� ������ ������...~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ���� ������ �������� ����� ���������.~ GOTO 12
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

IF ~~ THEN BEGIN 15 // from: 5.2
  SAY ~��-�� � ��� ������, �? �������, ���� � ����� ��������� ������� ����, ��� ��� �� �������� ���� ���� � ��������? ���... �� ��, ����� � ���� ���� ����� ���������...~
  IF ~~ THEN REPLY ~� ����, ��� � ���� ���� ���������. ��� ��� ���.~ GOTO 18
  IF ~~ THEN REPLY ~����� ���������, ����� ������ ��������, ���� �� ��������� � ���, ��� ��� �� ���� �� ���� �������!~ GOTO 18
  IF ~~ THEN REPLY ~���� �� ������� ����� �����, �� � ���� ������� �� ����� �����-������ ������!~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 5.3
  SAY ~<MALEFEMALE>, ��� � ����������� �������� ��� ����� ����� �� ������ �� ���� ����� ���� �� ������, ����������, ����������� ����������! � �� ��������� ������� ��� ������ ������, ��� �� � ���� ������ ���������. � ����� ����, � ����� ����� ��� ��� ������?~
  IF ~~ THEN REPLY ~��������� ��� �� ��������, � � ������ �� ����� � ���, ��� �� �������� ����� ����� �����.~ GOTO 19
  IF ~~ THEN REPLY ~� ���-���� �����, ��� ����� ����� ����� �� �����������. �������-�� ���� ��������� �� ����.~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~��� ����� ���� ���������� � �����? �������� ������������ ������, ������� �������� �� ������ � �����������! �� ���� ���������� ��� �������! ������, ���� ��� ������ ������ �� ����...~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY ~�����, ����� �� ����� ����������. �� �������� �� ����, � ������ ������ � ���� ����� ������ �������� ������ ���������. �� � �������� �������... � ����� ���� ��� ���, � ������ ���� ��������� �� 3000 �������.~
  IF ~  PartyGoldGT(2999)~ THEN REPLY ~������, � ���� �� ����� ������� �����. ��� ���� ������.~ GOTO 22
  IF ~~ THEN REPLY ~����� � ����� ��������� �� ����� �������� ������� ���.~ GOTO 23
  IF ~~ THEN REPLY ~���� ������� ������. ������! � �����!~ GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY ~���� ���� �� ���������� ����� � ���, ��� � ������, ��� ������ �� �������. �����, � ������ ������� �� ����������, �� ������� ��������� ����������� ��� ����� �� �����. ���� ������� - ��� ������ ����� ����������. �������, � ���� �������� � ��� ���. ������� ��� - �� �������� ��� ��� ������ � ������ ������� ��� ��������� ���� �� ����������� ������� ����� � �������, � � ��� ��� 300 �������.~ 
  IF ~~ THEN REPLY ~������������.~ GOTO 25
  IF ~~ THEN REPLY ~����� ����� 500.~ GOTO 26
  IF ~~ THEN REPLY ~� ���-���� �����, ��� ����� ����� ����� �� �����������. �������-�� ���� ��������� �� ����.~ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY ~� ��� �� ����� ����� ��������� �����-�� ����������� �����. ���� ���-�� ������ ������� ���� �����������, � ��� ��� ���������� �������� ���������. ���������� ��� ����� ���� � ������, � ������ ���� �����-�� ������� �����. ����� �� �����, ��� �� ��������, �� ���� ������ ���� �����������, ��� �� ������ �� �� ����� ������, �� ������, �� �����.~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY ~������? ��� �, ����� � ���� ��� ���� ������ ���. ��� ������ ����� �� ��� - ������������ ��������� ��� �����, � ������� ��� ����� ����������� �����-�� ������� �����. ��� �, �����, ��� ��� ���� ����, � ��� ������� ��������� � ���������� ���� ������.~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ���� ������ �������� ����� ���������.~ GOTO 12
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY ~� ����, ��� �� ������ ������������. ��� ���������. ���� �� ��� �� �����������, � ������, ��� ��������� �� ���� ����� �� �����, ������� ��� ������ �� ����� ������. ������, ���� �� ���� ��������, � ������� � ����� �����.~
  IF ~~ THEN DO ~SetGlobal("NW_Medicine","GLOBAL",1)TakePartyGold(3000)GiveItem("NWMISC73",LastTalkedToBy)~ UNSOLVED_JOURNAL ~����� ����� ������

�������� ����� �������, ��� �� ������� ����� ���� ������ �������. ������ ��� ������ �� ������ ��������� �������. ��������� ������� ����� ������� ������� - ��������� ��������� �� ���� ������ ����������� � ������ ����� ����, ��� �������� ����������� ������ ����� ��������� ������ � �������� ��������� �������.~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY ~������, �� ������! ����� � ������!~
  IF ~  PartyGoldGT(2999)~ THEN REPLY ~������, � ���� �� ����� ������� �����. ��� ���� ������.~ GOTO 22
  IF ~~ THEN REPLY ~����� ����!~ DO ~SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.3
  SAY ~�� ���� ���� ������. � ��� �� ���� ��  ������� ����������� ������ �� ���� �������. ��� ������� ����������� � ����. ������, ��, � ������� ���������� ��� ������ � �������� ������, ������ ����, ����� ������� ��. ���� �� ��� �� �����������, � ������, ��� ��������� �� ���� ����� �� �����, ������� ��� ������ �� ����� ������. ������, ���� �� ���� ��������, � ������� � ����� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY ~� ���� ������� ����� ����, <SIRMAAM>. � ����� �������� �� ���, ����� ��� ������ ������, � ������ ����� ������� �� ����� � ��� ������������.~
  IF ~~ THEN DO ~SetGlobal("NWCoverlet","GLOBAL",3)TakePartyItem("Coverlet")DestroyItem("Coverlet")GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY ~�����, �� ������ �� ���������, ����� ���� ��� ���� �������. � ���� ���� �������� ��������� ���������� �������� � ���� ���������, �� � ����� �� ��������� ������� �� ��� ����� ���������. ���� ��� �� ����� ��� ������, �������� ���� ��� ������. ��� � ������ ��� �����. ��� ��� ��������� ���� ������� ��� �����������. ������ �������� 300 �������?~ 
  IF ~~ THEN REPLY ~������������.~ GOTO 25 
  IF ~~ THEN REPLY ~������ �� ����.~ GOTO 29
  IF ~~ THEN REPLY ~� ���-���� �����, ��� ����� ����� ����� �� �����������. �������-�� ���� ��������� �� ����.~ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 20.1
  SAY ~��� � ��� �������, ��-�����, ��� ����� ������ - ������ ����� �������. �� ���� �� ������ ������ �������� ��, � ������� ��� ����������� �� �� � ����, ���� �� �� ������� ��� ������� �����. ���� � ������ ������ ���� ���-�� �� ������ �� ���. ��� �, �����, ��� ��� ���� ����, � ��� ������� ��������� � ���������� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 8.1
  SAY ~������ � �� ����� ��������� �����������, ��� � �� ���� ������������ � ������� ������. �� ��� �������� ��� ������ ����� �� ���? �� ����� ��������� � ������ �������.~
  IF ~~ THEN REPLY ~�����?~ GOTO 20
  IF ~  GlobalGT("NW3303Vizited","GLOBAL",0)~ THEN REPLY ~��� ��� �������� ��� ��������.~ GOTO 21
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY ~��� �, ���� �� ��� ������, ������. �������� ���� ������.~ 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 4.1
  SAY ~���� �� ������ ��� ������, � ���� �������� ������, ������� ���� ������������. ���������� ��� �������� ��� ��� ������������ ��������, ���� ��� ���� ���������, ������� ����� ������ � �������. ~ 
  IF ~~ THEN GOTO 33 
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~� ����, ����� ��� �������� ������ �������, �������� ����� ���������, ������� ��������� ������! � �������� ��� ����� �� ����� ����� �������� �����, � �������� �������� ������, ������ ��� ����� ������� �� ����� ����� ������! �������, � ���������� � ���, ����� ���� ������ �� �������� ������� ������� �������. ������, ���� ������ ������... � ������� ������ ������~ 
  IF ~~ THEN DO ~SetGlobal("KillElks","GLOBAL",1)~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY ~������ �� ���������? �� �� ��� �������� ��������� ��� ������� ���� - ��� ��� ��� �� ���� �����?~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NW_Medicine","GLOBAL",0)~ THEN BEGIN 31 // from:
  SAY ~����, �� ���������, <LADYLORD>. ��� ��� � ���� ��� ��� �������?~
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NWCoverlet","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 2
  IF ~  GlobalLT("NWCoverlet","GLOBAL",3)GlobalLT("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 3
  IF ~  GlobalGT("Siege_Is_Lifted","GLOBAL",2)OR(2)GlobalLT("KillElks","GLOBAL",3)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY ~� ���� ���� ��������� ��������.~ GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY ~�� ������ �������� � ������� ����� ����� ����������� ��������!~ GOTO 5
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ���� ������ �������� ����� ���������.~ GOTO 12
  IF ~  PartyHasItem("ZOKANHD")~ THEN REPLY ~� ���� ������ ������ �����������.~ GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY ~���������� ����������.~ GOTO 10
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 6 
END

