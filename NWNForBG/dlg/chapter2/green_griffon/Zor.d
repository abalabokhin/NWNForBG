// Северная дорога, Зеленый_Грифон 2 этаж Зор минотавр

BEGIN ~ZOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @9
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2 5.2
  SAY @13
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 6
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @28
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.3
  SAY @29
  IF ~~ THEN DO ~ClearAllActions()ApplySpell(Myself,RESTORE_FULL_HEALTH)AddexperienceParty(50000)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @30
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END
