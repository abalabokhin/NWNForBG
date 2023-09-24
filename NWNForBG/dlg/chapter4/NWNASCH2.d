// Центр Невервинтера  Зал ритуала   Лорд Нашер ликует. У лорда Нашера царственная осанка, его легко можно представить себе искателем приключений в молодости. Тем не менее, на его теле видны ранние признаки чумы.  Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~NWNASCH2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Dead("NWMORAG")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @2
  IF ~~ THEN EXTERN ~NWAARIN3~ 1
END

IF ~~ THEN BEGIN 3 // from: NWAARIN3.1
  SAY @3
  IF ~~ THEN EXTERN ~NWAARIN3~ 2
END

IF ~~ THEN BEGIN 4 // from: NWAARIN3.2
  SAY @4
  IF ~~ THEN EXTERN ~NWAARIN3~ 3
END

IF ~~ THEN BEGIN 5 // from: NWAARIN3.3
  SAY @5
  IF ~~ THEN EXTERN ~NWAARIN3~ 4
END

IF ~~ THEN BEGIN 6 // from: NWAARIN3.4
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @14 GOTO 14
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("NWARIBEH")~ THEN REPLY @15 GOTO 15
  IF ~  Global("AribetSurrendered","GLOBAL",0)!Dead("NWARIBEH")~ THEN REPLY @15 GOTO 24
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @16
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @17
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @18
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY @19
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 8.3
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 8.4
  SAY @21
  IF ~  !Dead("NWMAUGRM")Global("AribetSurrendered","GLOBAL",0)!Dead("NWARIBEH")~ THEN GOTO 21
  IF ~  Dead("NWMAUGRM")OR(2)GlobalGT("AribetSurrendered","GLOBAL",0)Dead("NWARIBEH")~ THEN GOTO 22
  IF ~  !Dead("NWMAUGRM")OR(2)GlobalGT("AribetSurrendered","GLOBAL",0)Dead("NWARIBEH")~ THEN GOTO 23
END

IF ~~ THEN BEGIN 15 // from: 8.5
  SAY @22
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY @23
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Nascher2Talk","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @25
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 28
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY @29
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 31
  IF ~~ THEN REPLY @32 GOTO 32
  IF ~~ THEN REPLY @28 GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 14.2
  SAY @33
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 14.3
  SAY @34
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 24 // from: 8.6
  SAY @35
  IF ~~ THEN EXTERN ~NWAARIN3~ 5
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY @36
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Nascher2Talk","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 18.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 36
  IF ~~ THEN REPLY @39 GOTO 37
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 28 // from: 19.1
  SAY @40
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 29 // from: 19.2
  SAY @41
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @14 GOTO 14
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("NWARIBEH")~ THEN REPLY @15 GOTO 15
  IF ~  Global("AribetSurrendered","GLOBAL",0)!Dead("NWARIBEH")~ THEN REPLY @15 GOTO 24
  IF ~~ THEN REPLY @42 GOTO 39
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 20.1
  SAY @43
  IF ~~ THEN REPLY @27 GOTO 28
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 31 // from: 21.1
  SAY @44
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 32 // from: 21.2
  SAY @45
  IF ~~ THEN REPLY @31 GOTO 31
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 33 // from: 22.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 41
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 34 // from: NWAARIN3.5
  SAY @48
  IF ~~ THEN EXTERN ~NWAARIN3~ 6
END

IF ~~ THEN BEGIN 35 // from: 25.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~~ THEN REPLY @51 GOTO 54
  IF ~~ THEN REPLY @52 GOTO 55
END

IF ~~ THEN BEGIN 36 // from: 27.1
  SAY @53
  IF ~~ THEN REPLY @39 GOTO 37
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY @54
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 38 // from: 28.1
  SAY @55
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 39 // from: 29.7
  SAY @56
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 31.1
  SAY @57
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 41 // from: 33.1
  SAY @58
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 42 // from: NWAARIN3.6
  SAY @59
  IF ~~ THEN EXTERN ~NWAARIN3~ 7
END

IF ~~ THEN BEGIN 43 // from: 37.1
  SAY @60
  IF ~~ THEN REPLY @38 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY @61
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY @62
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 46 // from: 40.1
  SAY @63
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 50
  IF ~~ THEN REPLY @66 GOTO 50
  IF ~~ THEN REPLY @67 GOTO 50
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)~ THEN REPLY @68 GOTO 51
  IF ~  Global("AribetSurrendered","GLOBAL",0)~ THEN REPLY @68 GOTO 52
END

IF ~~ THEN BEGIN 48 // from: NWAARIN3.7
  SAY @69
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 49 // from: 46.1
  SAY @70
  IF ~~ THEN REPLY @47 GOTO 41
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 50 // from: 47.1
  SAY @71
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 54
  IF ~~ THEN REPLY @52 GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 47.5
  SAY @74
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 50.1
  SAY @75
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 54 // from: 51.1
  SAY @76
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 51.2
  SAY @77
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 52.1
  SAY @78
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 57 // from: 53.1
  SAY @79
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)~ THEN REPLY @68 GOTO 51
  IF ~  Global("AribetSurrendered","GLOBAL",0)~ THEN REPLY @68 GOTO 52
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)~ THEN REPLY @80 GOTO 51
  IF ~  Global("AribetSurrendered","GLOBAL",0)~ THEN REPLY @80 GOTO 52
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 58 // from: 54.1
  SAY @81
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 55.1
  SAY @82
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY @83
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 61 // from: 59.1
  SAY @84
  IF ~~ THEN REPLY @28 GOTO 29
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AribetSurrendered","GLOBAL",0)!Dead("NWMORAG")~ THEN BEGIN 62 // from:
  SAY @85
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @86
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("NWMORAG")~ THEN BEGIN 64 // from:
  SAY @87
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY @88
  IF ~~ THEN REPLY @89 GOTO 71
  IF ~~ THEN REPLY @90 GOTO 73
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Dead("NWMORAG")~ THEN BEGIN 66 // from:
  SAY @0
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @91
  IF ~  Global("Chapter4End","GLOBAL",0)~ THEN DO ~SetGlobal("Chapter4End","GLOBAL",1)AddexperienceParty(500000)~ EXIT
  IF ~  !Global("Chapter4End","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // NWAARIN3.13
  SAY @92
  IF ~~ THEN EXTERN ~NWAARIN3~ 14
END

IF ~~ THEN BEGIN 69 // NWAARIN3.14
  SAY @93
  IF ~~ THEN EXTERN ~NWAARIN3~ 15
END

IF ~~ THEN BEGIN 70 // NWAARIN3.15
  SAY @94
  IF ~~ THEN EXTERN ~NWAARIN3~ 16
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY @95
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @96
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 73 // from: 65.2
  SAY @97
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY @98
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY @99
  IF ~~ THEN REPLY @89 GOTO 71
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 9
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @9 GOTO 10
END