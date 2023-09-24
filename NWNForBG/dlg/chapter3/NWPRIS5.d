// Лунный лес логово огненного великана  Вогар Полуорк Хоть этот полуорк так же уродлив, как и большинство его собратьев, в лице его видны кое-какие зачатки интеллекта.

BEGIN ~NWPRIS5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)RunAwayFrom(LastTalkedToBy(Myself),60)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @8
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @17
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @19
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

