// Центр Невервинтера  Зал ритуала   Фентик ликует. Он абсолютно уверен, что уже через несколько минут у него будет долгожданное лекарство. Он широко улыбается Дестеру.  Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~FENTHIC2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @5
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @8
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @9
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: DESTHER2 1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @15
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @16
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @18 GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @21
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @28
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @29
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 17 // from: DESTHER 6
  SAY @30
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @33
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 7.5
  SAY @36
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY @37
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @38
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @40
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @41
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 31
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY @36
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY @46
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @49
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 7.4
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 7.5
  SAY @36
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 21.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.2
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 27.3
  SAY @36
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 30.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 35 // from:
  SAY @50
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY @14 GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY @14 GOTO 37
END

