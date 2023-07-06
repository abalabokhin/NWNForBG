// Чернозерье Орреан   Этот вольнонаемный охранник-эльф холодно смотрит на вас. Похоже, он вполне способен постоять за себя, если возникнет необходимость.

BEGIN ~MELDGU01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)Global("MeldanenDoor","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,INT)~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @19
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @22
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,INT)~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,INT)~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("MeldanenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("MeldanenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.3
  SAY @32
  IF ~~ THEN DO ~SetGlobal("MeldanenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4
  SAY @33
  IF ~~ THEN DO ~SetGlobal("MeldanenGuard","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.1
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @35 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("MeldanenDoor","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY @38
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY @41
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @44
  IF ~~ THEN REPLY @29 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)Global("MeldanenDoor","MYAREA",0)~ THEN BEGIN 22 // from:
  SAY @45
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("MeldanenDoor","MYAREA",0)~ THEN BEGIN 23 // from:
  SAY @46
  IF ~~ THEN EXIT
END

