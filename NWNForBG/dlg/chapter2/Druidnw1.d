// Лес Невервинтер, пещера с пауками - Орлейн, пропавший друид. замотан в паутину  m2q2iorlane    

BEGIN ~DRUIDNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2902")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  IsGabber(Player1)~ THEN REPLY @5 GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 5
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @22
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 8

END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @29
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Druid1Saved","GLOBAL",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @31
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @35
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @38
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @39
  IF ~  Dead("SpiritFo")~ THEN REPLY @40 GOTO 20
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 5
  IF ~  OR(2)Global("Druid2Saved","GLOBAL",0)Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @42 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @43 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @44
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY @45
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~  OR(2)Global("Druid2Saved","GLOBAL",0)Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @42 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 22
  IF ~~ THEN REPLY @48 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Druid1Saved","GLOBAL",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 24
  IF ~~ THEN REPLY @48 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @53
  IF ~  OR(2)Global("Druid2Saved","GLOBAL",0)Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @42 GOTO 6
  IF ~~ THEN REPLY @54 GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 22.1 22.2
  SAY @55
  IF ~  OR(2)Global("Druid2Saved","GLOBAL",0)Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @42 GOTO 6
  IF ~~ THEN REPLY @54 GOTO 11
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2902")Global("Druid1Saved","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 8
  IF ~~ THEN REPLY @58 GOTO 11
  IF ~~ THEN REPLY @43 GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2800")GlobalGT("Druid1Saved","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY @59
  IF ~~ THEN EXIT
END
