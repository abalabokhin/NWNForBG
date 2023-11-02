// creator  : weidu (version 24600)
// argument : NWGUARDN.DLG
// game     : .
// source   : ./DATA/NWGEN4.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWGUARDN~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.0 2.0 1.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 5.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("NWJaregQuest","GLOBAL",0)
~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 24.0 6.0
  SAY @17
  IF ~~ THEN REPLY @14GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("NWJaregQuest","GLOBAL",0)
~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0
  SAY @18
  IF ~  Global("NWTalked_with_Quint","GLOBAL",1)
~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 17.0 8.1 7.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",1)EraseJournalEntry(@98004)~ UNSOLVED_JOURNAL @102639 EXIT
END

IF ~~ THEN BEGIN 11 // from: 17.1 8.2 7.2
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.0 15.0 14.0 9.0
  SAY @27
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @28
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 16.1 15.1 13.0 9.1
  SAY @29
  IF ~  Global("NWTalked_with_Quint","GLOBAL",1)
~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 16.2 14.1 13.1 9.2
  SAY @30
  IF ~  Global("NWTalked_with_Quint","GLOBAL",1)
~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.2 14.2 13.2 9.3
  SAY @31
  IF ~  Global("NWTalked_with_Quint","GLOBAL",1)
~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.3 15.3 14.3 13.3 9.4
  SAY @32
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("NWJaregQuest","GLOBAL",0)
~ THEN REPLY @16 GOTO 11
END

IF ~  !NumberOfTimesTalkedTo(0)
GlobalLT("NWJaregQuest","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY @33
  IF ~  Global("NWJaregQuest","GLOBAL",1)
~ THEN REPLY @34 GOTO 19
  IF ~  Global("NWJaregQuest","GLOBAL",1)
~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @38
  IF ~  PartyHasItem("NWKARLA0")
PartyHasItem("NWQUINTT")
~ THEN REPLY@39 GOTO 25
  IF ~  Global("KarlatTestimony","LOCALS",1)
PartyHasItem("NWQUINTT")
!PartyHasItem("NWKARLA0")
~ THEN REPLY @40 GOTO 26
  IF ~  Global("KarlatTestimony","LOCALS",0)
PartyHasItem("NWQUINTT")
!PartyHasItem("NWKARLA0")
~ THEN REPLY @40 GOTO 27
  IF ~  Global("QuintTestimony","LOCALS",1)
PartyHasItem("NWKARLA0")
!PartyHasItem("NWQUINTT")
~ THEN REPLY @41 GOTO 26
  IF ~  Global("QuintTestimony","LOCALS",0)
PartyHasItem("NWKARLA0")
!PartyHasItem("NWQUINTT")
~ THEN REPLY @41 GOTO 28
  IF ~~ THEN REPLY @42 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.5 18.1
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY @45
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 21.0
  SAY@46
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @47
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 25 // from: 19.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 30
  IF ~~ THEN REPLY @50 GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 19.3 19.1
  SAY @51
  IF ~~ THEN REPLY @49 GOTO 30
  IF ~~ THEN REPLY @50 GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 19.2
  SAY @52
  IF ~~ THEN DO ~SetGlobal("QuintTestimony","LOCALS",1)
TakePartyItem("NWQUINTT")
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.4
  SAY @52
  IF ~~ THEN DO ~SetGlobal("KarlatTestimony","LOCALS",1)
TakePartyItem("NWKARLA0")
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1 25.1
  SAY @53
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",2)
TakePartyItem("NWQUINTT")
TakePartyItem("NWKARLA0")
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 34.0 31.0 26.0 25.0
  SAY @54
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT")
~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("NWJaregQuest","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY @55
  IF ~~ THEN REPLY @49 GOTO 30
  IF ~~ THEN REPLY @50 GOTO 32
  IF ~~ THEN REPLY @56 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 34.1 31.1
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @57
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 30
  IF ~~ THEN REPLY @60 GOTO 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY @61
  IF ~~ THEN EXTERN ~NWKARLAT~ 27
END

IF ~~ THEN BEGIN 36 // from:
  SAY @62
  IF ~~ THEN REPLY @63 EXTERN ~NWQUINT2~ 24
  IF ~~ THEN REPLY @64 EXTERN ~NWKARLAT~ 33
  IF ~~ THEN REPLY @65 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.2
  SAY @66
  IF ~  PartyHasItem("NWBELIAT")
~ THEN REPLY @67 GOTO 38
  IF ~~ THEN REPLY @68 GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @69
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT2")
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @70
  IF ~~ THEN REPLY @63 EXTERN ~NWQUINT2~ 24
  IF ~~ THEN REPLY @64 EXTERN ~NWKARLAT~ 33
END

IF ~~ THEN BEGIN 40 // from:
  SAY @71
  IF ~~ THEN EXTERN ~NWKARLAT~ 28
END

IF ~~ THEN BEGIN 41 // from:
  SAY @72
  IF ~~ THEN EXTERN ~NWQUINT2~ 28
END

IF ~~ THEN BEGIN 42 // from:
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 74
  IF ~~ THEN REPLY @75 GOTO 75
  IF ~~ THEN REPLY @76 GOTO 76
  IF ~~ THEN REPLY @77 GOTO 77
END

IF ~~ THEN BEGIN 43 // from:
  SAY @73
  IF ~~ THEN REPLY @78 GOTO 47
  IF ~~ THEN REPLY @79 GOTO 45
  IF ~~ THEN REPLY @76 GOTO 46
  IF ~~ THEN REPLY @77 GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.3
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 49
  IF ~~ THEN REPLY @82 GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @83
  IF ~~ THEN REPLY @81 GOTO 49
  IF ~~ THEN REPLY @82 GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 43.2
  SAY @84
  IF ~~ THEN REPLY @81 GOTO 49
  IF ~~ THEN REPLY @82 GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 43.0
  SAY @85
  IF ~~ THEN REPLY @81 GOTO 49
  IF ~~ THEN REPLY @82 GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 52.0 47.1 46.1 45.1 44.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",5)
SetGlobal("NWCharwood_Is_Saved","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT3")
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 46.0 45.0 44.0
  SAY @87
  IF ~~ THEN EXTERN ~NWQUINT2~ 25
END

IF ~~ THEN BEGIN 50 // from:
  SAY @88
  IF ~~ THEN EXTERN ~NWKARLAT~ 29
END

IF ~~ THEN BEGIN 51 // from:
  SAY  @89
  IF ~  InMyArea("NWBELIAL")
~ THEN EXTERN ~NWBELIAL~ 26
  IF ~  !InMyArea("NWBELIAL")
~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY @90
  IF ~~ THEN GOTO 48
END

IF ~  Global("NWJaregQuest","GLOBAL",4)
~ THEN BEGIN 53 // from:
  SAY @91
  IF ~~ THEN EXTERN ~NWBELIAL~ 20
END

IF ~~ THEN BEGIN 54 // from:
  SAY @92
  IF ~~ THEN REPLY @93 EXTERN ~NWBELIAL~ 21
  IF ~~ THEN REPLY @94 EXTERN ~NWBELIAL~ 22
END

IF ~~ THEN BEGIN 55 // from:
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 58
  IF ~~ THEN REPLY @97 GOTO 59
END

IF ~~ THEN BEGIN 56 // from:
  SAY @98
  IF ~~ THEN EXTERN ~NWQUINT2~ 29
END

IF ~~ THEN BEGIN 57 // from:
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 60
  IF ~~ THEN REPLY @97 GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 55.0
  SAY @101
  IF ~~ THEN REPLY  @81 GOTO 64
  IF ~~ THEN REPLY @82 GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 55.1
  SAY @102
  IF ~~ THEN REPLY @81 GOTO 64
  IF ~~ THEN REPLY @82 GOTO 62
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY @101
  IF ~~ THEN REPLY @81 GOTO 69
  IF ~~ THEN REPLY @82 GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 57.1
  SAY @102
  IF ~~ THEN REPLY @81 GOTO 69
  IF ~~ THEN REPLY @82 GOTO 63
END

IF ~~ THEN BEGIN 62 // from: 59.1 58.1
  SAY @103
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",5)
GiveItemCreate("NWPHYLA3",Player1,1,0,0)
SetGlobal("NWCharwood_Is_Saved","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT4")
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1 60.1
  SAY @103
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",6)
SetGlobal("NWCharwood_Is_Cursed","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT5")
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.0 58.0
  SAY @87
  IF ~~ THEN EXTERN ~NWQUINT2~ 26
END

IF ~~ THEN BEGIN 65 // from:
  SAY @88
  IF ~~ THEN EXTERN ~NWKARLAT~ 30
END

IF ~~ THEN BEGIN 66 // from:
  SAY @89
  IF ~  InMyArea("NWBELIAL")
~ THEN EXTERN ~NWBELIAL~ 23
  IF ~  !InMyArea("NWBELIAL")
~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @90
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @86
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",5)
GiveItemCreate("NWPHYLA3",Player1,1,0,0)
SetGlobal("NWCharwood_Is_Saved","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT4")
~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.0 60.0
  SAY @87
  IF ~~ THEN EXTERN ~NWQUINT2~ 27
END

IF ~~ THEN BEGIN 70 // from:
  SAY @88
  IF ~~ THEN EXTERN ~NWKARLAT~ 31
END

IF ~~ THEN BEGIN 71 // from:
  SAY @89
  IF ~  InMyArea("NWBELIAL")
~ THEN EXTERN ~NWBELIAL~ 24
  IF ~  !InMyArea("NWBELIAL")
~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @90
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @86
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",6)
SetGlobal("NWCharwood_Is_Cursed","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT5")
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 42.0
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 79
  IF ~~ THEN REPLY @82 GOTO 78
END

IF ~~ THEN BEGIN 75 // from: 42.1
  SAY @83
  IF ~~ THEN REPLY @81 GOTO 79
  IF ~~ THEN REPLY @82 GOTO 78
END

IF ~~ THEN BEGIN 76 // from: 42.2
  SAY @84
  IF ~~ THEN REPLY @81 GOTO 79
  IF ~~ THEN REPLY @82 GOTO 78
END

IF ~~ THEN BEGIN 77 // from: 42.3
  SAY @85
  IF ~~ THEN REPLY @81 GOTO 79
  IF ~~ THEN REPLY @82 GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 82.0 77.1 76.1 75.1 74.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("NWJaregQuest","GLOBAL",5)
SetGlobal("NWCharwood_Is_Cursed","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWCOURT6")
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.0 76.0 75.0 74.0
  SAY @87
  IF ~~ THEN EXTERN ~NWQUINT2~ 30
END

IF ~~ THEN BEGIN 80 // from:
  SAY @88
  IF ~~ THEN EXTERN ~NWKARLAT~ 32
END

IF ~~ THEN BEGIN 81 // from:
  SAY @89
  IF ~  InMyArea("NWBELIAL")
~ THEN EXTERN ~NWBELIAL~ 25
  IF ~  !InMyArea("NWBELIAL")
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @90
  IF ~~ THEN GOTO 78
END
