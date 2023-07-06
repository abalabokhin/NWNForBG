// Центр Невервинтера  Зал ритуала   Арибет Леди Арибет - само воплощение красоты и сосредоточенности, хотя она, конечно, сильно озабочена судьбой тех, кто страдает из-за чумы. Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~ARIBETH3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @6
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @12
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @15 GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @16
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY @22
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY @23
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @24
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @25
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @26
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @27
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @28 GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @28 GOTO 23
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 15// from: 8.1
  SAY @30
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 16// from: 8.2
  SAY @31
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 17// from: 8.3
  SAY @32
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 18// from: 8.4
  SAY @33
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @34
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY @35
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 12.1
  SAY @36
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 14.1
  SAY @37
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 23 // from: 14.2
  SAY @38
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 14.3
  SAY @39
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 25// from: 16.1
  SAY @40
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 26// from: 17.1
  SAY @41
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY @23
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 21.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 34
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY @44
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY @45
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY @46
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.1
  SAY @47
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY @48
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 36 // from:
  SAY @49
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @11 GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @11 GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)~ THEN BEGIN 37 // from:
  SAY @50
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 39
  IF ~~ THEN REPLY @53 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @54
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @55
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY @56
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 43
  IF ~~ THEN REPLY @59 GOTO 44
  IF ~~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @61 GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @62
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY @63
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 42.3
  SAY @64
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 46 // from: 42.4
  SAY @65
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY @66
  IF ~~ THEN REPLY @59 GOTO 44
  IF ~~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @61 GOTO 46
  IF ~~ THEN REPLY @67 GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.4
  SAY @68
  IF ~~ THEN DO ~SetGlobal("ToHelmTempleNWN","GLOBAL",1)SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1
  SAY @69
  IF ~~ THEN REPLY @58 GOTO 43
  IF ~~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @61 GOTO 46
  IF ~~ THEN REPLY @67 GOTO 48
END

IF ~~ THEN BEGIN 50 // from: 45.1
  SAY @70
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY @71
  IF ~~ THEN REPLY @58 GOTO 43
  IF ~~ THEN REPLY @59 GOTO 44
  IF ~~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @67 GOTO 48
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY @72
  IF ~~ THEN REPLY @58 GOTO 43
  IF ~~ THEN REPLY @59 GOTO 44
  IF ~~ THEN REPLY @61 GOTO 46
  IF ~~ THEN REPLY @67 GOTO 48
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)~ THEN BEGIN 53 // from:
  SAY @73
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @74
  IF ~~ THEN REPLY @58 GOTO 43
  IF ~~ THEN REPLY @59 GOTO 44
  IF ~~ THEN REPLY @60 GOTO 45
  IF ~~ THEN REPLY @67 GOTO 48
END

