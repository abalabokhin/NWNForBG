// Роща Друидов  Вайверн - эльф, мужчина, известный бандит, и большой знаток леса. Он лжив и коварен, хорошо владеет луком. NWWYVERB 

BEGIN ~NWWYVERN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN DO ~ClearAllActions()StartCutsceneMode()StartCutScene("NWWYVER0")~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @9
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("Attack","LOCALS",2)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.3
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1 6.3
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 4
END

IF ~~ THEN BEGIN 9// from: 7.2
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1 6.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @28
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @29
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("SPRITE_IS_DEADNWWYVERB","GLOBAL",1)SetGlobal("Attack","LOCALS",2)GiveItem("NWEARBAD",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @28
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @30
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @39
  IF ~~ THEN GOTO 10
END

// ----------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Attack","LOCALS",2)~ THEN BEGIN 20 // from:
  SAY @40
  IF ~~ THEN EXIT
END

