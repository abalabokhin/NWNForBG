// Чернозерье Милли   Служанка, которая работает на аристократов в Чернозерье. Ее простое платье разительно отличается от пышных нарядов ее господ.

BEGIN ~MELCLEAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @16
  IF ~  GlobalGT("FormosaQuest","GLOBAL",1)!Dead("Formosa")~ THEN REPLY @17 GOTO 12
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @17 GOTO 20
  IF ~  Dead("Formosa")~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @22
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY @23
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @27
  IF ~  Dead("Meldanen")~ THEN REPLY @28 GOTO 18
  IF ~  !Dead("Meldanen")~ THEN REPLY @28 GOTO 26
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @30
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY @31
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 5.4
  SAY @32
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 5.5
  SAY @33
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 6.1
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @35 GOTO 23
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @36 GOTO 25
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY @38
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY @39
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY @40
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY @41
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 5.2
  SAY @42
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY @43
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 15.4
  SAY @44
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 23 // from: 15.1
  SAY @45
  IF ~  Global("PartyHasKey","LOCALS",0)~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 15.2
  SAY @48
  IF ~~ THEN REPLY @36 GOTO 25
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 25 // from: 15.3
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 10.2
  SAY @50
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY @51
  IF ~  HasItem("Nwkey07",Myself)~ THEN GOTO 30
  IF ~  !HasItem("Nwkey07",Myself)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @52
  IF ~  Global("PartyHasKey","LOCALS",0)~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 29 // from: 25.1
  SAY @53
  IF ~  Global("PartyHasKey","LOCALS",0)~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 32
  IF ~~ THEN REPLY @3 GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @56
  IF ~~ THEN REPLY @55 GOTO 32
  IF ~~ THEN REPLY @3 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @57
  IF ~~ THEN DO ~SetGlobal("PartyHasKey","LOCALS",1)TakePartyGold(10)GiveItem("Nwkey07",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY @58
  IF ~~ THEN DO ~SetGlobal("PartyHasKey","LOCALS",1)GiveItem("Nwkey07",LastTalkedToBy)~ EXIT
END

// -------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 34 // from:
  SAY @59
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

