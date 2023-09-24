BEGIN ~NWBOOK47~

IF ~  Global("KaohionQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
!See("NWKAOHIN")
!Range("NWKAOHIN",20)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
!AreaCheck("NW1040")
~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
See("NWKAOHIN")
Range("NWKAOHIN",20)
~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("KaohionQuest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KaohionQuest","GLOBAL",5)EraseJournalEntry(@94788)PlaySound("EFF_M63")~ SOLVED_JOURNAL @94876 EXIT
  IF ~~ THEN REPLY @7 EXIT
END
