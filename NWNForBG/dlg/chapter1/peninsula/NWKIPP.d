// Полуостров Капитан-привратник Кипп   Это красиво одетый и аккуратный капитан городской стражи. Он так же устал, как и его подчиненные. Чума высосала силы из всех.

BEGIN ~NWKIPP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWSedosQuest","GLOBAL",3)Global("NWPeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @10
  IF ~  GlobalLT("NWSedosQuest","GLOBAL",2)~ THEN UNSOLVED_JOURNAL @93969 EXIT
  IF ~  GlobalGT("NWSedosQuest","GLOBAL",1)~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("NWSedosQuest","GLOBAL",2)GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @16
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @17
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY @18
  IF ~~ THEN EXIT
END

