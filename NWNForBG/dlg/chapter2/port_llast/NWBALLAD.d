// Порт-Лласт Баллард следопыт (друид?)

BEGIN ~NWBALLAD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 DO ~SetGlobal("BallardQuest","GLOBAL",1)
StartStore("NWBALLAD",LastTalkedToBy(Myself))~ UNSOLVED_JOURNAL @96270 EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @19
  IF ~~ THEN DO ~SetGlobal("BallardQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96270 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @20
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @21
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 3
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 9 // from:
  SAY @22
  IF ~  Global("BallardQuest","GLOBAL",0)~ THEN REPLY @23 GOTO 2
  IF ~  Global("BallardQuest","GLOBAL",1)~ THEN REPLY @23 GOTO 10
  IF ~  Global("BallardQuest","GLOBAL",1)~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @6
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @27
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @28 EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY @20
  IF ~  Global("BallardQuest","GLOBAL",0)~ THEN REPLY @23 GOTO 2
  IF ~  Global("BallardQuest","GLOBAL",1)~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @28 EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4
  SAY @29
  IF ~~ THEN DO ~StartStore("NWBALLAD",LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SpiritSaved","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @30
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @31 EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSPIRIO")~ THEN BEGIN 15 // from:
  SAY @32
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @31 EXIT
END
