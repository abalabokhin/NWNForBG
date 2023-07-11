// Лес Невервинтер, дом нимфы - Терари, пропавший друид. в плену у нимфы эльф 

BEGIN ~DRUIDNW3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2901")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  IsGabber(Player1)~ THEN REPLY @5 GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @14
  IF ~  IsGabber(Player1)~ THEN REPLY @5 GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @15
  IF ~  IsGabber(Player1)~ THEN REPLY @5 GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @16
  IF ~~ THEN GOTO 13

END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @17
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 7 8
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.2
  SAY @25
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @27
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @28
  IF ~  Dead("SpiritFo")~ THEN REPLY @29 GOTO 15
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~  OR(2)Global("Druid1Saved","GLOBAL",0)Global("Druid2Saved","GLOBAL",0)~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @37
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY @39
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY @44
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY @45
  IF ~~ THEN DO ~EraseJournalEntry(@58)SetGlobal("Druid3Saved","GLOBAL",1)MoveToPointNoInterrupt([1128.452])DestroySelf()~ UNSOLVED_JOURNAL @46 EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 25
  IF ~~ THEN REPLY @49 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY @50
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY @53
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @54
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 3
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2901")Global("Druid3Saved","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 7
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2800")GlobalGT("Druid3Saved","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY @57
  IF ~~ THEN EXIT
END
