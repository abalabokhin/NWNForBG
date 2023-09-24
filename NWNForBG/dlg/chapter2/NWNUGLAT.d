// Северная дорога, пещеры огров, Нуглат пленник - полуорк Несмотря на то, что этот полуорк сильно смахивает на заключенного, есть в нем какое-то дикое благородство.

BEGIN ~NWNUGLAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 GOTO 1
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @20
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY @26
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @27
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @28
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @29
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @30
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 5
END

// --------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @31
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END
