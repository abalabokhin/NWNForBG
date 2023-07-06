// Лес Невервинтер, дом Сетары - Бри, пропавший друид. в плену у Сетары человек женщина 

BEGIN ~DRUIDNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2904")Global("Druid2Saved","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @20
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @23
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @24
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @29
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @32 GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY @33
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 6 3
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @35
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @36
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 19 // from: 15.1
  SAY @37
  IF ~  Dead("SpiritFo")~ THEN REPLY @38 GOTO 20
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY @39 GOTO 21
  IF ~  !Dead("SpiritFo")Global("SpiritSaved","GLOBAL",0)~ THEN REPLY @40 GOTO 5
  IF ~  OR(2)
Global("Druid1Saved","GLOBAL",0)
Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @41 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY @44
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @48
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @50
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~  OR(2)
Global("Druid1Saved","GLOBAL",0)
Global("Druid3Saved","GLOBAL",0)~ THEN REPLY @41 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY @51
  IF ~~ THEN DO ~SetGlobal("Druid2Saved","GLOBAL",1)EscapeAreaObject("Door1")~ EXIT
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2904")Global("Druid2Saved","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 4
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @54 GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Druid2Saved","GLOBAL",0)~ THEN BEGIN 26 // from:
  SAY @55
  IF ~~ THEN EXIT
END
