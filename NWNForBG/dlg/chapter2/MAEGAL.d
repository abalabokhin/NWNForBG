// Южная дорога - Маегал - дух героя из клана Мириалис

BEGIN ~MAEGAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~  PartyHasItem("Treatise")~ THEN REPLY @6 GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY @7 GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @7 GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY @8 GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @8 GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY @9 GOTO 7
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @9 GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY @10 GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @10 GOTO 18
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @12
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT // ReallyForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE) CreateVisualEffectObject("SPUNHOLY",Myself)
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @13
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY @17
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY @18
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY @19
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY @20
  IF ~  PartyHasItem("Treatise")~ THEN REPLY @6 GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY @10 GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @10 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @26
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)GiveItemCreate("Miralis",LastTalkedToBy,1,0,0)AddexperienceParty(20000)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @27
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @28
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY @30
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY @31
  IF ~~ THEN GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Warning","LOCALS",1)~ THEN BEGIN 17 // from:
  SAY @32
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4
  SAY @34
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY @35
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END
