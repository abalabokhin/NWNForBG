// Порт-Лласт Казармы Кендрака Баракс Заданий нет

BEGIN ~NWBARAX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkNum","LOCALS",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("PlayerBad","LOCALS",1)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PlayerBad","LOCALS",1)Global("NWCultInLuskan","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @15
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWCultInLuskan","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 8 // from:
  SAY @16
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWCultInLuskan","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY @17
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWCultInLuskan","GLOBAL",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY @18
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWCultInLuskan","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY @19
  IF ~~ THEN EXIT
END
