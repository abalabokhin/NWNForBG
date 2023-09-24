// Ћускан Ћогово  урта Ёвейн Ёта прекрасна€ эльфийка многое пережила в плену у  урта: это видно по огромным син€кам на ее шее и зап€сть€х, а также по тому, как осторожно она двигаетс€.

BEGIN ~NWEVAINE~

IF ~  NumTimesTalkedTo(0)Global("ElynwydQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @22
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),100)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",2)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

// -------------------------------------------------------------------

IF ~  NumTimesTalkedTo(0)Global("ElynwydQuest","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY @0
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @28
  IF ~  !PartyHasItem("NWMISC58")~ THEN GOTO 15
  IF ~  PartyHasItem("NWMISC58")~ THEN GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 5.4
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 7.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @32
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @33 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 12.2
  SAY @35
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",2)TakePartyItem("NWMISC58")ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.2
  SAY @36
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",2)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",2)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @33 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 14
END

IF ~~ THEN BEGIN 21 // from: 12.2
  SAY @41
  IF ~~ THEN DO ~SetGlobal("ElynwydQuest","GLOBAL",2)IncrementGlobal("EvilNW1","GLOBAL",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

// -------------------------------------------------------------------

IF ~  !NumTimesTalkedTo(0)GlobalLT("ElynwydQuest","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @42
  IF ~  PartyHasItem("NWMISC58")~ THEN REPLY @33 GOTO 16
  IF ~  PartyHasItem("NWMISC58")~ THEN REPLY @26 GOTO 16
  IF ~  !PartyHasItem("NWMISC58")CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @33 GOTO 18
  IF ~  !PartyHasItem("NWMISC58")CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 14
END

// -------------------------------------------------------------------

IF ~  !NumTimesTalkedTo(0)GlobalGT("ElynwydQuest","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY @43
  IF ~~ THEN EXIT
END



