// �����_1 �������� ������ ������ ������ ��� ���������� ������, ���������� ������� ������ �����������, ���� ������� � ����������.

BEGIN ~NWARMOR~

IF ~  Global("NWArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("NWArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NWArmorQuest","GLOBAL",3)~ EXIT
END

