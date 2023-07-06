// Чернозерье Поместье Мелданена Дриада Чернозерья   Несмотря на то, что она провела в клетке несколько дней, дриада из Уотердипа все еще умопомрачительно красива. Тем не менее, она выглядит грустной и довольно слабой.

// DisplayStringHead(Myself,000000) О, будьте осторожны, незнакомец! Мелданен где-то неподалеку! [NWDRYAD7]

// Положить в инвентарь "Crewtd3"// Прядь волос дриады

BEGIN ~NWDRYAD1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
    SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 9
  IF ~~ THEN REPLY @22 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY @23
  IF ~~ THEN DO ~ReputationInc(-1)SetGlobal("DryadAttack","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @24
  IF ~~ THEN DO ~ReputationInc(-1)SetGlobal("DryadAttack","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @28
  IF ~~ THEN DO ~AddexperienceParty(50000)GiveItem("Crewtd3",LastTalkedToBy)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @29
  IF ~~ THEN DO ~AddexperienceParty(50000)GiveItem("Crewtd3",LastTalkedToBy)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @30
  IF ~~ THEN DO ~AddexperienceParty(50000)GiveItem("Crewtd3",LastTalkedToBy)EscapeAreaDestroy(60)~ EXIT
END

// ------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN BEGIN 0 // from:
  SAY @31
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

