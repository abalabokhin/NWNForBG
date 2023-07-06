// Лускан - Башня хозяина - 7 этаж  Делтагар Зельханд  - Заключенный (Раб или нищий) Большие синяки, порезы и другие следы пыток говорят о том, что этот мужчина - заключенный.

BEGIN ~DELTAGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 5
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @28
  IF ~~ THEN DO ~Enemy()
ForceSpell(Myself,WIZARD_ABSOLUTE_IMMUNITY)
ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_FIREBALL)
RunAwayFrom(LastTalkedToBy(Myself),150)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 6.4
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 13
  IF ~~ THEN REPLY @44 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @45
  IF ~~ THEN DO ~AddexperienceParty(10000)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @46
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @50
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 10.4
  SAY @51
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 10.5
  SAY @52
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @53
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @54
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY @57
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 12.1
  SAY @58
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @43 GOTO 13
  IF ~~ THEN REPLY @44 GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 12.2
  SAY @59
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 13
  IF ~~ THEN REPLY @44 GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 14.1
  SAY @60
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 15.1
  SAY @61
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 15.2
  SAY @62
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 16
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @63
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 18
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,8,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 29 // from:
  SAY @64
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)~ THEN BEGIN 30 // from:
  SAY @65
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

