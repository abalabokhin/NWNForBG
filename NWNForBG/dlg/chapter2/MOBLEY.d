// Чарвуд, кабинет мэра - мэр Мобли (толстый человек) Выражение лица этого человека постоянно меняется с целеустремленного и решительного на растерянное и смущенное.

BEGIN ~MOBLEY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Charwood_Is_Saved","GLOBAL",0)Global("Charwood_Is_Cursed","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("KnowMajor","GLOBAL",1)~ UNSOLVED_JOURNAL @98004 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 15
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @17
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @29
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY @30
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY @31
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 1.3
  SAY @32
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 14
  SAY @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 18
  IF ~~ THEN REPLY @37 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @39
  IF ~~ THEN EXIT
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Charwood_Is_Saved","GLOBAL",0)Global("Charwood_Is_Cursed","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @40
  IF ~  GlobalGT("KnowMajor","GLOBAL",0)~ THEN REPLY @41 GOTO 2
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @41 DO ~SetGlobal("KnowMajor","GLOBAL",1)~ UNSOLVED_JOURNAL @98004 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Charwood_Is_Saved","GLOBAL",1)~ THEN BEGIN 21 // from:
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~~ THEN REPLY @3 GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @46
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @47
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY @48
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 21.4
  SAY @49
  IF ~~ THEN DO ~ReputationInc(1)EscapeArea()~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Charwood_Is_Cursed","GLOBAL",1)Global("JaregQuest","GLOBAL",5)~ THEN BEGIN 26 // from:
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 27
  IF ~~ THEN REPLY @52 GOTO 28
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @3 GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @54
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY @55
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 26.3
  SAY @56
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 26.4
  SAY @57
  IF ~~ THEN DO ~ReputationInc(-1)ForceSpellRES("MoblFire",Myself)EscapeArea()~ EXIT
END

// ----------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Charwood_Is_Cursed","GLOBAL",1)Global("JaregQuest","GLOBAL",6)~ THEN BEGIN 39 // from:
  SAY @0
  IF ~~ THEN REPLY @1GOTO 31
  IF ~~ THEN REPLY @41 GOTO 32
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 33
  IF ~~ THEN REPLY @6 GOTO 34
  IF ~~ THEN REPLY @7 GOTO 35
END

IF ~~ THEN BEGIN 32 // from: 30.2
  SAY @8
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 37
  IF ~~ THEN REPLY @1 GOTO 31
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 38
  IF ~~ THEN REPLY @1 GOTO 31
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 34 // from: 31.2
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 35
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 35 // from: 31.3
  SAY @32
  IF ~~ THEN REPLY @6 GOTO 34
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @17
  IF ~~ THEN REPLY @1 GOTO 31
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY @18
  IF ~~ THEN REPLY @1 GOTO 31
  IF ~~ THEN REPLY @3 GOTO 3
END
