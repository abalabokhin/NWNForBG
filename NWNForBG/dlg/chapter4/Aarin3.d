// Невервинтер   Замок Невер       Аарин Генд

BEGIN ~AARIN3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: NASHER2.2
  SAY @1
  IF ~~ THEN EXTERN ~NASCHER2~ 3
END

IF ~~ THEN BEGIN 2 // from: NASHER2.3
  SAY @2
  IF ~~ THEN EXTERN ~NASCHER2~ 4
END

IF ~~ THEN BEGIN 3 // from: NASHER2.4
  SAY @3
  IF ~~ THEN EXTERN ~NASCHER2~ 5
END

IF ~~ THEN BEGIN 4 // from: NASHER2.5
  SAY @4
  IF ~~ THEN EXTERN ~NASCHER2~ 6
END

IF ~~ THEN BEGIN 5 // from: NASHER2.24
  SAY @5
  IF ~~ THEN EXTERN ~NASCHER2~ 34
END

IF ~~ THEN BEGIN 6 // from: NASHER2.34
  SAY @6
  IF ~~ THEN EXTERN ~NASCHER2~ 42
END

IF ~~ THEN BEGIN 7 // from: NASHER2.42
  SAY @7
  IF ~~ THEN EXTERN ~NASCHER2~ 48
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",0)Global("Aarin3Talk","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY @9
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)Global("Aarin3Talk","MYAREA",0)!Dead("Morag")~ THEN BEGIN 10 // from:
  SAY @10
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @11
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @12
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY @13 GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY @14 GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY @17 GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @19
  IF ~~ THEN EXTERN ~NASCHER2~ 68
END

IF ~~ THEN BEGIN 14 // from: NASCHER2.68
  SAY @20
  IF ~~ THEN EXTERN ~NASCHER2~ 69
END

IF ~~ THEN BEGIN 15 // from: NASCHER2.69
  SAY @21
  IF ~~ THEN EXTERN ~NASCHER2~ 70
END

IF ~~ THEN BEGIN 16 // from: NASCHER2.70
  SAY @22
  IF ~  Dead("Maugrim")~ THEN REPLY @14 GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY @17 GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY @23
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 12.3
  SAY @24
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 12.4
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 25
  IF ~~ THEN REPLY @27 GOTO 26
  IF ~~ THEN REPLY @28 GOTO 27
  IF ~~ THEN REPLY @29 GOTO 28
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY @30 GOTO 29
  IF ~  Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY @30 GOTO 30
  IF ~~ THEN REPLY @31 GOTO 31
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.5
  SAY @32
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY @33
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 22 // from: 12.7
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @35
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 35
  IF ~~ THEN REPLY @38 GOTO 36
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY @39
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY @40
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 27 // from: 19.3
  SAY @41
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 28 // from: 19.4
  SAY @42
  IF ~  Dead("Maugrim")~ THEN GOTO 40
  IF ~  !Dead("Maugrim")~ THEN GOTO 41
END

IF ~~ THEN BEGIN 29 // from: 19.5
  SAY @43
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 30 // from: 19.6
  SAY @44
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 31 // from: 19.7
  SAY @45
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 32 // from: 20.1
  SAY @46
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ UNSOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1
  SAY @49
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY @13 GOTO 13
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY @17 GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 35 // from: 24.1
  SAY @50
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 24.2
  SAY @51
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 37 // from: 25.1
  SAY @52
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 38 // from: 26.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 49
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 39 // from: 27.3
  SAY @55
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 40 // from: 28.1
  SAY @56
  IF ~   !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY @57 GOTO 51
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 28.2
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 52
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 42 // from: 29.1
  SAY @60
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 43 // from: 30.1
  SAY @61
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN GOTO 54
  IF ~  !Global("AarinFriend","GLOBAL",5)~ THEN GOTO 55
END

IF ~~ THEN BEGIN 44 // from: 31.1
  SAY @62
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 35.1
  SAY @63
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 47 // from: 36.1
  SAY @64
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY @13 GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY @14 GOTO 17
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 48 // from: 37.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 57
  IF ~~ THEN REPLY @67 GOTO 58
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 49 // from: 38.1
  SAY @68
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 50 // from: 39.1
  SAY @69
  IF ~~ THEN REPLY @54 GOTO 49
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 51 // from: 40.1
  SAY @70
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 41.1
  SAY @71
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 42.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @74 GOTO 62
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 54 // from: 43.1
  SAY @75
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 55 // from: 43.2
  SAY @76
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 56 // from: 44.1
  SAY @77
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY @78
  IF ~~ THEN REPLY @67 GOTO 58
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 58 // from: 48.2
  SAY @79
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 59 // from: 51.1
  SAY @80
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 60 // from: 52.1
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 69
  IF ~~ THEN REPLY @83 GOTO 70
END

IF ~~ THEN BEGIN 61 // from: 53.1
  SAY @84
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 62 // from: 53.2
  SAY @85
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 63 // from: 55.1
  SAY @86
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 64 // from: 56.1
  SAY @87
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 65 // from: 58.1
  SAY @88
  IF ~~ THEN REPLY @66 GOTO 57
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 66 // from: 59.1
  SAY @89
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @90
  IF ~~ THEN REPLY @59 GOTO 52
  IF ~~ THEN REPLY @91 GOTO 68
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 68 // from: 67.2
  SAY @92
  IF ~  !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY @57 GOTO 51
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 69 // from: 60.1
  SAY @93
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 70 // from: 60.2
  SAY @94
  IF ~~ THEN REPLY @95 GOTO 61
  IF ~~ THEN REPLY @74 GOTO 62
END

IF ~~ THEN BEGIN 71 // from: 61.1
  SAY @96
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 72 // from: 62.1
  SAY @85
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 69.1
  SAY @97
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY @98
  IF ~~ THEN REPLY @83 GOTO 70
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

IF ~~ THEN BEGIN 75 // from: 72.1
  SAY @96
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY @99
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)GlobalLT("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 77 // from:
  SAY @100
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY @101
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY @13 GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY @14 GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY @17 GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY @18 GOTO 22
END

// ------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)Global("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 79 // from:
  SAY @102
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 77.1
  SAY @100
  IF ~~ THEN GOTO 78
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~ Dead("Morag")~ THEN BEGIN 81 // from:
  SAY @103
  IF ~~ THEN EXIT
END

