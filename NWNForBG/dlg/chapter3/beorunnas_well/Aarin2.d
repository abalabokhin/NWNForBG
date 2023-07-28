// Колодец Беорунна   Домик Аарина       Аарин Генд
// В скрипт локации
// IF
// Global("TeleportToNewervinter","GLOBAL",1)
// THEN
// RESPONSE #100
// SetGlobal("TeleportToNewervinter","GLOBAL",1)
// ClearAllActions()
// StartCutSceneMode()
// StartCutScene("ToNever2")
// END

BEGIN ~AARIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN GOTO 2
  IF ~  OR(2)GlobalLT("AarinFriend","GLOBAL",5)Global("AarinFriend","GLOBAL",9)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @2
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @3
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @9
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @19
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @21
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @22
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY @25
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY @26
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 24
  IF ~~ THEN REPLY @31 GOTO 25
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @33
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @34
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @35
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @36
  IF ~~ THEN REPLY @30 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 25
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY @38
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 109
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 19.3
  SAY @40
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 24
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY @41
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 24
  IF ~~ THEN REPLY @31 GOTO 25
  IF ~~ THEN REPLY @39 GOTO 109
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 109 // from: 24.3
  SAY @42
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 25
  IF ~~ THEN REPLY @32 GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Chapter3AarinJob","GLOBAL",1)~ UNSOLVED_JOURNAL @104555 EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",1)IsGabber(Player1)GlobalGT("AarinFriend","GLOBAL",0)!Global("AarinFriend","GLOBAL",9)~ THEN BEGIN 28 // from:
  SAY @45
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @46
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @47
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 31
  IF ~~ THEN REPLY @31 GOTO 34
  IF ~~ THEN REPLY @49 GOTO 35
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @50
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @51
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @52
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN GOTO 38
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN GOTO 39
  IF ~  GlobalLT("AarinFriend","GLOBAL",5)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY @53
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 31
  IF ~~ THEN REPLY @49 GOTO 35
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY @54
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @28
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 31
  IF ~~ THEN REPLY @31 GOTO 34
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.2
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 41
  IF ~~ THEN REPLY @57 GOTO 42
END

IF ~~ THEN BEGIN 39 // from: 33.2
  SAY @58
  IF ~~ THEN REPLY @56 GOTO 43
  IF ~~ THEN REPLY @57 GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 33.3
  SAY @59
  IF ~~ THEN REPLY @56 GOTO 41
  IF ~~ THEN REPLY @57 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.1
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 38.2
  SAY @62
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 39.1  2500
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 39.2  2500
  SAY @62
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 41.1  3000
  SAY @63
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 43.1  2500
  SAY @63
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1  3000
  SAY @64
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 46.1  2500
  SAY @64
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 47.1  3000
  SAY @65
   IF ~  PartyHasItem("NWWord1")~ THEN DO ~TakePartyItem("NWWord1")DestroyItem("NWWord1")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3000)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
   IF ~  PartyHasItem("NWWord2")~ THEN DO ~TakePartyItem("NWWord2")DestroyItem("NWWord2")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3000)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
   IF ~  PartyHasItem("NWWord3")~ THEN DO ~TakePartyItem("NWWord3")DestroyItem("NWWord3")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3000)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1  3000
  SAY @65
   IF ~  PartyHasItem("NWWord1")~ THEN DO ~TakePartyItem("NWWord1")DestroyItem("NWWord1")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(2500)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
   IF ~  PartyHasItem("NWWord2")~ THEN DO ~TakePartyItem("NWWord2")DestroyItem("NWWord2")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(2500)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
   IF ~  PartyHasItem("NWWord3")~ THEN DO ~TakePartyItem("NWWord3")DestroyItem("NWWord3")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(2500)AddexperienceParty(184000)~ UNSOLVED_JOURNAL @104511 EXIT
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",1)IsGabber(Player1)OR(2)Global("AarinFriend","GLOBAL",0)Global("AarinFriend","GLOBAL",9)~ THEN BEGIN 51 // from:
  SAY @67
  IF ~~ THEN GOTO 29
END

// ------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",2)IsGabber(Player1)~ THEN BEGIN 52 // from:
  SAY @68
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @69
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN REPLY @70 GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 63
  IF ~~ THEN REPLY @76 GOTO 63
  IF ~~ THEN REPLY @77 GOTO 64
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @78
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY @79
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN GOTO 72
  IF ~  OR(2)GlobalLT("AarinFriend","GLOBAL",5)Global("AarinFriend","GLOBAL",9)~ THEN GOTO 73
END

IF ~~ THEN BEGIN 57 // from: 53.2
  SAY @80
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY @81
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN REPLY @70 GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 59 // from: 53.4
  SAY @82
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.4
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 74
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN REPLY @70 GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 61 // from: 53.5
  SAY @85
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.1
  SAY @86
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN REPLY @70 GOTO 54
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 63 // from: 54.1
  SAY @87
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY @88
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 66
  IF ~~ THEN REPLY @91 GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.1
  SAY @92
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @93
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY @94
  IF ~~ THEN REPLY @95 GOTO 69
  IF ~~ THEN REPLY @96 GOTO 69
  IF ~~ THEN REPLY @97 GOTO 69
  IF ~~ THEN REPLY @98 GOTO 86
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY @99
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY @100
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 78
  IF ~~ THEN REPLY @103 GOTO 80
  IF ~~ THEN REPLY @104 GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 71.3
  SAY @105
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.1
  SAY @106
  IF ~~ THEN DO ~SetGlobal("AarinFriend","GLOBAL",0)~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.1
  SAY @107
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 72 // from: 56.1
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 89
  IF ~~ THEN REPLY @110 GOTO 93
END

IF ~~ THEN BEGIN 73 // from: 56.2
  SAY @111
  IF ~~ THEN REPLY @109 GOTO 89
  IF ~~ THEN REPLY @110 GOTO 93
END

IF ~~ THEN BEGIN 74 // from: 60.1
  SAY @112
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY @113
  IF ~  GlobalGT("AarinFriend","GLOBAL",4)!Global("AarinFriend","GLOBAL",9)~ THEN GOTO 76
  IF ~  OR(2)GlobalLT("AarinFriend","GLOBAL",5)Global("AarinFriend","GLOBAL",9)~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY @114
  IF ~~ THEN REPLY @115 GOTO 77
  IF ~~ THEN REPLY @116 GOTO 77
  IF ~~ THEN REPLY @117 GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY @118
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 78 // from: 71.1
  SAY @119
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY @120
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 71.2
  SAY @121
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @122
  IF ~~ THEN REPLY @123 GOTO 82
  IF ~~ THEN REPLY @124 GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @125
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 81.2
  SAY @126
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY @127
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY @128
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 86 // from: 68.4
  SAY @129
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY @130
  IF ~~ THEN DO ~SetGlobal("AarinFriend","GLOBAL",0)~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY @131
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 55
  IF ~~ THEN REPLY @71 GOTO 57
  IF ~~ THEN REPLY @72 GOTO 59
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 89 // from: 72.1
  SAY @132
  IF ~~ THEN REPLY @133 GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.1
  SAY @134
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1
  SAY @135
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.1
  SAY @43
IF ~  PartyHasItem("NWWord1")~ THEN DO ~TakePartyItem("NWWord1")DestroyItem("NWWord1")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3500)AddexperienceParty(228000)EraseJournalEntry(@104511)~ UNSOLVED_JOURNAL @104512 EXIT
IF ~  PartyHasItem("NWWord2")~ THEN DO ~TakePartyItem("NWWord2")DestroyItem("NWWord2")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3500)AddexperienceParty(228000)EraseJournalEntry(@104511)~ UNSOLVED_JOURNAL @104512 EXIT
IF ~  PartyHasItem("NWWord3")~ THEN DO ~TakePartyItem("NWWord3")DestroyItem("NWWord3")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(3500)AddexperienceParty(228000)EraseJournalEntry(@104511)~ UNSOLVED_JOURNAL @104512 EXIT
END


IF ~~ THEN BEGIN 93 // from: 72.2
  SAY @137
  IF ~~ THEN REPLY @109 GOTO 89
END

// ------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 94 // from:
  SAY @138
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 94.1
  SAY @139
  IF ~ OR(3)PartyHasItem("NWWord1")PartyHasItem("NWWord2")PartyHasItem("NWWord3")~ THEN REPLY @48 GOTO 96
  IF ~~ THEN REPLY @32 GOTO 37
END

IF ~~ THEN BEGIN 96 // from: 95.1
  SAY @140
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY @141
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY @142
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY @143
  IF ~~ THEN REPLY @144 GOTO 100
  IF ~~ THEN REPLY @145 GOTO 100
  IF ~~ THEN REPLY @146 GOTO 103
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY @147
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.1
  SAY @148
  IF ~~ THEN REPLY @149 GOTO 102
  IF ~~ THEN REPLY @150 GOTO 104
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY @151
IF ~  PartyHasItem("NWWord1")~ THEN DO ~TakePartyItem("NWWord1")DestroyItem("NWWord1")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(228000)SetGlobal("TeleportToNewervinter","GLOBAL",1)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
IF ~  PartyHasItem("NWWord2")~ THEN DO ~TakePartyItem("NWWord2")DestroyItem("NWWord2")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(228000)SetGlobal("TeleportToNewervinter","GLOBAL",1)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
IF ~  PartyHasItem("NWWord3")~ THEN DO ~TakePartyItem("NWWord3")DestroyItem("NWWord3")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(228000)SetGlobal("TeleportToNewervinter","GLOBAL",1)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.3
  SAY @153
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 104 // from: 101.2
  SAY @154
IF ~  PartyHasItem("NWWord1")~ THEN DO ~TakePartyItem("NWWord1")DestroyItem("NWWord1")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(288000)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
IF ~  PartyHasItem("NWWord2")~ THEN DO ~TakePartyItem("NWWord2")DestroyItem("NWWord2")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(288000)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
IF ~  PartyHasItem("NWWord3")~ THEN DO ~TakePartyItem("NWWord3")DestroyItem("NWWord3")IncrementGlobal("Chapter3AarinJob","GLOBAL",1)GiveGoldForce(5000)AddexperienceParty(288000)EraseJournalEntry(@104512)~ UNSOLVED_JOURNAL @104662 EXIT
END

// ------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Chapter3AarinJob","GLOBAL",4)IsGabber(Player1)!AreaCheck("NW1030")~ THEN BEGIN 105 // from:
  SAY @147
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY @148
  IF ~~ THEN REPLY @149 GOTO 107
  IF ~~ THEN REPLY @150 GOTO 108
END

IF ~~ THEN BEGIN 107 // from: 106.1
  SAY @151
   IF ~~ THEN DO ~EraseJournalEntry(@104555)ClearAllActions()StartCutSceneMode()StartCutScene("ToNever2")~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 106.2
  SAY @154
   IF ~~ THEN EXIT
END

