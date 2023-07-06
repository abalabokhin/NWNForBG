// Полуостров Камеры заключения  Эмерник   Эльф  Этого эльфа-стражника захватили заключенные, которых он когда-то охранял. Кажется, они его еще и избили. Впрочем, он еще может показать себя.

BEGIN ~EMERNIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN DO ~MoveToPointNoInterrupt([3513.352])~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",FALSE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @10
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @11
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @18
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("EmFollow",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @32
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY @33
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY @34
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 9.4
  SAY @35
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @36
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY @37
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY @38
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY @39
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY @40
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Talked","LOCALS",1)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY @41
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SedosQuest","GLOBAL",2)~ THEN BEGIN 23 // from:
  SAY @42
  IF ~~ THEN EXIT
END

