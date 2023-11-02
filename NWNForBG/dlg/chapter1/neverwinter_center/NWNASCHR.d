// Центр Невервинтера  Зал ритуала   Лорд Нашер ликует. У лорда Нашера царственная осанка, его легко можно представить себе искателем приключений в молодости. Тем не менее, на его теле видны ранние признаки чумы.  Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~NWNASCHR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @7
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @10 GOTO 12
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @13
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 7 // from:
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @15
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from:
  SAY @15
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 11 // from:
  SAY @16
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12 // from:
  SAY @17
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY @18
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from:
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 17 // from:
  SAY @22
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @23
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 19 // from:
  SAY @24
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @25
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWDestherIsTraitor","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY @26
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @8 GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @8 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWDestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)GlobalLT("NWNChapter","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @27
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @30 GOTO 25
END

IF ~~ THEN BEGIN 24 // from:
  SAY @31
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from:
  SAY @32
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from:
  SAY @33
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY @34
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from:
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 30
  IF ~~ THEN REPLY @37 GOTO 31
  IF ~~ THEN REPLY @30 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 32
END

IF ~~ THEN BEGIN 29 // from:
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 33
  IF ~~ THEN REPLY @40 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @8 GOTO 32
END

IF ~~ THEN BEGIN 30 // from:
  SAY @41
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from:
  SAY @42
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 32 // from:
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @44
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 37
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 38
END

IF ~~ THEN BEGIN 34 // from:
  SAY @45
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 35 // from:
  SAY @46
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36 // from:
  SAY @47
  IF ~~ THEN REPLY @36 GOTO 30
  IF ~~ THEN REPLY @30 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 32
END

IF ~~ THEN BEGIN 37 // from:
  SAY @48
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 38 // from:
  SAY @49
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY @50
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from:
  SAY @51
  IF ~~ THEN REPLY @37 GOTO 31
  IF ~~ THEN REPLY @30 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 32
END

IF ~~ THEN BEGIN 41 // from:
  SAY @52
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42 // from:
  SAY @53
  IF ~~ THEN REPLY @39 GOTO 33
  IF ~~ THEN REPLY @40 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @8 GOTO 32
END

IF ~~ THEN BEGIN 43 // from:
  SAY @54
  IF ~~ THEN REPLY @39 GOTO 33
  IF ~~ THEN REPLY @40 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @8 GOTO 32
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWDestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)GlobalLT("NWNChapter","GLOBAL",2)~ THEN BEGIN 44 // from:
  SAY @55
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @30 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 32
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",2)Global("NWFindCult","GLOBAL",0)Global("FindCultTalk","LOCALS",0)~ THEN BEGIN 45 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 46
  IF ~~ THEN REPLY @58 GOTO 47
  IF ~~ THEN REPLY @59 GOTO 48
  IF ~~ THEN REPLY @60 GOTO 49
END

IF ~~ THEN BEGIN 46 // 45.1
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 47
  IF ~~ THEN REPLY @59 GOTO 48
  IF ~~ THEN REPLY @60 GOTO 49
END

IF ~~ THEN BEGIN 47 // 45.2
  SAY @63
  IF ~~ THEN REPLY @57 GOTO 46
  IF ~~ THEN REPLY @59 GOTO 48
  IF ~~ THEN REPLY @60 GOTO 49
END

IF ~~ THEN BEGIN 48 // 45.3
  SAY @64
  IF ~~ THEN DO ~SetGlobal("NWFindCult","GLOBAL",1)RevealAreaOnMap("NW2000")~ UNSOLVED_JOURNAL @92485 EXIT
END

IF ~~ THEN BEGIN 49 // 45.4
  SAY @66
  IF ~~ THEN DO ~SetGlobal("FindCultTalk","LOCALS",1)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",2)Global("NWFindCult","GLOBAL",0)Global("FindCultTalk","LOCALS",1)~ THEN BEGIN 50 // from:
  SAY @67
  IF ~~ THEN REPLY @57 GOTO 46
  IF ~~ THEN REPLY @58 GOTO 47
  IF ~~ THEN REPLY @59 GOTO 48
  IF ~~ THEN REPLY @60 GOTO 49
END

// ------------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",2)GlobalGT("NWFindCult","GLOBAL",0)~ THEN BEGIN 51 // from:
  SAY @68
  IF ~~ THEN EXIT
END











