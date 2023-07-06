// Холодный лес  Подземелье волшебника Накс  У этого эльфа голодный и совершенно отчаянный вид. Кажется, он слишком долго был пленником.

//   Global("NaxJob","GLOBAL",2) - Ритуал вызова элементаля завершен

BEGIN ~NAX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @6
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @9
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.5
  SAY @20
  IF ~  Global("NaxJob","GLOBAL",0)~ THEN DO ~SetGlobal("NaxJob","GLOBAL",1)~ EXIT
  IF ~  !Global("NaxJob","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @22
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @25
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NaxJob","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 1
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY @32
  IF ~~ THEN REPLY @31 GOTO 8
END

// -----------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NaxJob","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY @33
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @27 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @34 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 3
END

// -----------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NaxJob","GLOBAL",2)~ THEN BEGIN 19 // from:
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @38 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @39
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY @40
  IF ~~ THEN DO ~SetGlobal("NaxJob","GLOBAL",3)AddexperienceParty(60000)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @41
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 24
  IF ~~ THEN REPLY @44 GOTO 25
  IF ~~ THEN REPLY @45 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 21
  IF ~~ THEN REPLY @48 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @49
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @50 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @51
  IF ~  PartyHasItem("Snoworb")~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 22.4
  SAY @52
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY @53
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_ABSOLUTE_IMMUNITY)ReallyForceSpellRES("SPWI802",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @58
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 31
  IF ~~ THEN REPLY @61 GOTO 21
  IF ~~ THEN REPLY @62 GOTO 27
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @63
  IF ~~ THEN REPLY @61 GOTO 21
  IF ~~ THEN REPLY @62 GOTO 27
END

