// Порт-Лласт Казармы Кендрака Аарин Генд

BEGIN ~AARIN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(Player1,MALE)~ THEN BEGIN 112 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(Player1,FEMALE)~ THEN BEGIN 148 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)Global("AarinTalk","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @2
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("AribethTalk","GLOBAL",1)~ THEN REPLY @4 GOTO 2
  IF ~  Global("AribethTalk","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  Global("AribethTalk","GLOBAL",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("AribethTalk","GLOBAL",1)~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @8
  IF ~  Global("AribethTalk","GLOBAL",1)~ THEN GOTO 2
  IF ~  Global("AribethTalk","GLOBAL",0)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @11
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @12
  IF ~~ THEN  DO ~SetGlobal("AarinTalk","GLOBAL",1)EraseJournalEntry(~Поиски культа

Благодаря нашим усилиям город Невервинтер был спасен, и оставшимся в живых жителям больше не угрожает Воющая смерть. Однако Дестер, человек, распространявший чуму, действовал не в одиночку. Значительную помощь и поддержку ему оказывал могущественный загадочный культ, о котором было известно только то, что он располагается где-то к северу от Невервинтера. Леди Арибет перенесла свой штаб расследования в поселение в Порт-Лласте, этот городок - самый северный член Союза Лордов. Она ждет нас в этом городе.~) UNSOLVED_JOURNAL @13 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @18
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @20
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @21
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 11.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @24
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.2
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 14.1
  SAY @42
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.2
  SAY @43
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.3
  SAY @44
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @39 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.1
  SAY @50
  IF ~~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.2
  SAY @51
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.3
  SAY @52
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 27.1
  SAY @53
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 18// from: 14.3
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @47 GOTO 29
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 28// from: 18.1
  SAY @56
  IF ~~ THEN REPLY @47 GOTO 29
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 29// from: 18.2
  SAY @57
  IF ~~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 30// from: 18.3
  SAY @58
  IF ~~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @47 GOTO 29
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 19// from: 14.4
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 31
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 31// from: 19.1
  SAY @61
  IF ~~ THEN REPLY @49 GOTO 14
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 15// from: 13.3.14.6
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 37 // from: 15.6
  SAY @74
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 32// from: 15.1
  SAY @75
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 33// from: 15.2
  SAY @76
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 34// from: 15.3
  SAY @77
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 35// from: 15.4
  SAY @78
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 36// from: 15.5
  SAY @79
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 38// from: 15.7
  SAY @80
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @81 GOTO 42
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @81 GOTO 43
  IF ~~ THEN REPLY @82 GOTO 44
  IF ~~ THEN REPLY @83 GOTO 45
  IF ~~ THEN REPLY @84 GOTO 46
END

IF ~~ THEN BEGIN 44// from: 38.3
  SAY @85
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @81 GOTO 42
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @81 GOTO 43
  IF ~~ THEN REPLY @83 GOTO 45
  IF ~~ THEN REPLY @84 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 46
END

IF ~~ THEN BEGIN 45// from: 38.4
  SAY @86
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 46// from: 38.5
  SAY @87
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 42// from: 38.1
  SAY @88
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 43// from: 38.2
  SAY @89
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47// from: 43.1
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 48
  IF ~~ THEN REPLY @92 GOTO 49
  IF ~~ THEN REPLY @93 GOTO 50
END

IF ~~ THEN BEGIN 48// from: 47.1
  SAY @94
  IF ~~ THEN REPLY @95 GOTO 51
  IF ~~ THEN REPLY @96 GOTO 52
  IF ~~ THEN REPLY @97 GOTO 53
END

IF ~~ THEN BEGIN 49// from: 47.2
  SAY @98
  IF ~~ THEN REPLY @95 GOTO 51
  IF ~~ THEN REPLY @96 GOTO 52
  IF ~~ THEN REPLY @97 GOTO 53
END

IF ~~ THEN BEGIN 50// from: 47.3
  SAY @99
  IF ~~ THEN REPLY @95 GOTO 51
  IF ~~ THEN REPLY @96 GOTO 51
  IF ~~ THEN REPLY @97 GOTO 51
END

IF ~~ THEN BEGIN 51// from: 50.1.2.3
  SAY @100
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52// from: 51.1
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 53
  IF ~~ THEN REPLY @103 GOTO 54
  IF ~~ THEN REPLY @104 GOTO 55
END

IF ~~ THEN BEGIN 53// from: 52.1
  SAY @105
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 54// from: 52.2
  SAY @106
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 55// from: 52.3
  SAY @107
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56// from: 53.1.54.1.55.1
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 57
  IF ~~ THEN REPLY @110 GOTO 58
  IF ~~ THEN REPLY @111 GOTO 58
END

IF ~~ THEN BEGIN 57// from: 56.1
  SAY @112
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 58// from: 56.2.3
  SAY @113
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59// from: 57.1.58.1
  SAY @114
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60// from: 59.1
  SAY @115
  IF ~~ THEN REPLY @116 DO ~SetGlobal("AarinFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 61
  IF ~~ THEN REPLY @117 DO ~SetGlobal("AarinFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 62
  IF ~~ THEN REPLY @118 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 63
END

IF ~~ THEN BEGIN 61// from: 60.1
  SAY @119
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 62// from: 60.2
  SAY @120
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 63// from: 60.3
  SAY @121
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 39// from: 15.8
  SAY @122
  IF ~~ THEN REPLY @123 GOTO 64
  IF ~~ THEN REPLY @124 GOTO 65
END

IF ~~ THEN BEGIN 65// from: 39.2
  SAY @125
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 64// from: 39.1
  SAY @126
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66// from: 64.1
  SAY @127
  IF ~~ THEN REPLY @128 GOTO 67
  IF ~~ THEN REPLY @129 GOTO 68
  IF ~~ THEN REPLY @130 GOTO 69
  IF ~~ THEN REPLY @131 GOTO 70
END

IF ~~ THEN BEGIN 67// from: 66.1
  SAY @132
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 68// from: 66.2
  SAY @133
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 69// from: 66.3
  SAY @134
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 70// from: 66.4
  SAY @135
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147// from: 66.4
  SAY @136
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71// from: 67.68.69.70
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 72
  IF ~~ THEN REPLY @139 GOTO 72
  IF ~~ THEN REPLY @140 GOTO 72
  IF ~~ THEN REPLY @141 GOTO 72
END

IF ~~ THEN BEGIN 72// from: 71
  SAY @142
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73// from: 72
  SAY @143
  IF ~~ THEN REPLY @144 GOTO 74
  IF ~~ THEN REPLY @145 GOTO 74
END

IF ~~ THEN BEGIN 74// from: 73
  SAY @146
  IF ~~ THEN REPLY @147 GOTO 75
  IF ~~ THEN REPLY @148 GOTO 76
  IF ~~ THEN REPLY @149 GOTO 77
END

IF ~~ THEN BEGIN 75// from: 74.1
  SAY @150
  IF ~~ THEN REPLY @151 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @152 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @153 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 79
END

IF ~~ THEN BEGIN 76// from: 74.2
  SAY @154
  IF ~~ THEN REPLY @151 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @152 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @153 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 79
END

IF ~~ THEN BEGIN 77// from: 74.3
  SAY @155
  IF ~~ THEN REPLY @151 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @152 DO ~SetGlobal("AarinFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAarin","LOCALS",ONE_DAY)~ GOTO 78
  IF ~~ THEN REPLY @153 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 79
END

IF ~~ THEN BEGIN 78// from: 75.1.2.76.1.2.77.1.2
  SAY @156
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 79// from: 75.1.76.1.77.1
  SAY @157
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 40// from: 15.9
  SAY @158
  IF ~CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @159 DO ~SetGlobal("AarinFriend","GLOBAL",5)~ GOTO 80
  IF ~CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @159 GOTO 81
  IF ~~ THEN REPLY @160 GOTO 82
END

IF ~~ THEN BEGIN 80// from: 40.1
  SAY @161
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 82// from: 40.3
  SAY @162
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 81// from: 40.2
  SAY @163
  IF ~Race(LastTalkedToBy(Myself),ELF)~ THEN GOTO 83
  IF ~!Race(LastTalkedToBy(Myself),ELF)~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83// from: 81.1
  SAY @164
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 84// from: 81.2
  SAY @165
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85// from: 83.1.84.1
  SAY @166
  IF ~~ THEN REPLY @167 GOTO 86
  IF ~~ THEN REPLY @168 GOTO 87
  IF ~~ THEN REPLY @169 GOTO 88
END

IF ~~ THEN BEGIN 86// from: 85.1
  SAY @170
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 87// from: 85.2
  SAY @171
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 88// from: 85.3
  SAY @172
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89// from: 86.1.87.1.88.1
  SAY @173
  IF ~~ THEN REPLY @174 GOTO 90
  IF ~~ THEN REPLY @175 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 91
END

IF ~~ THEN BEGIN 91// from: 89.2
  SAY @176
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 90// from: 89.1
  SAY @177
  IF ~~ THEN REPLY @178 GOTO 92
END

IF ~~ THEN BEGIN 92// from: 90.1
  SAY @179
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93// from: 92.1
  SAY @180
  IF ~~ THEN REPLY @181 GOTO 94
  IF ~~ THEN REPLY @182 GOTO 94
  IF ~~ THEN REPLY @183 GOTO 95
END

IF ~~ THEN BEGIN 94// from: 93.1
  SAY @184
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95// from: 93.3
  SAY @185
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96// from: 94.1.95.1
  SAY @186
  IF ~  Gender(Player1,FEMALE)~ THEN REPLY @187 GOTO 97
  IF ~  Gender(Player1,MALE)~ THEN REPLY @187 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 98
  IF ~~ THEN REPLY @188 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 99
  IF ~~ THEN REPLY @189 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 99
  IF ~~ THEN REPLY @190 GOTO 100
END

IF ~~ THEN BEGIN 97// from: 96.1
  SAY @191
  IF ~~ THEN REPLY @192 DO ~SetGlobal("AarinFriend","GLOBAL",4)~ GOTO 101
  IF ~~ THEN REPLY @193 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 102
END

IF ~~ THEN BEGIN 98// from: 96.2
  SAY @194
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 99// from: 96.3.4
  SAY @195
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 100// from: 96.5
  SAY @196
  IF ~  Gender(Player1,FEMALE)~ THEN REPLY @197 GOTO 97
  IF ~  Gender(Player1,MALE)~ THEN REPLY @197 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 98
  IF ~~ THEN REPLY @198 DO ~SetGlobal("AarinFriend","GLOBAL",9)~ GOTO 99
END

IF ~~ THEN BEGIN 101// from: 97.1
  SAY @199
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 102// from: 97.2
  SAY @200
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 41// from: 15.10
  SAY @201
  IF ~~ THEN REPLY @202 GOTO 103
  IF ~~ THEN REPLY @203 GOTO 103
  IF ~~ THEN REPLY @204 GOTO 104
END

IF ~~ THEN BEGIN 103// from: 41.1.2
  SAY @205
  IF ~~ THEN REPLY @206 GOTO 105
  IF ~~ THEN REPLY @207 GOTO 105
  IF ~~ THEN REPLY @208 GOTO 105
  IF ~~ THEN REPLY @209 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 106
END

IF ~~ THEN BEGIN 104// from: 41.3
  SAY @210
  IF ~~ THEN REPLY @206 GOTO 105
  IF ~~ THEN REPLY @207 GOTO 105
  IF ~~ THEN REPLY @208 GOTO 105
  IF ~~ THEN REPLY @209 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 106
END

IF ~~ THEN BEGIN 106// from: 104.4
  SAY @211
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 105// from: 104.1.2.3
  SAY @212
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107// from: 105.1
  SAY @213
  IF ~~ THEN REPLY @214 DO ~SetGlobal("AarinFriend","GLOBAL",5)GiveItemCreate("AmAarin",Player1,1,1,1)~ GOTO 108
  IF ~~ THEN REPLY @215 DO ~SetGlobal("AarinFriend","GLOBAL",5)GiveItemCreate("AmAarin",Player1,1,1,1)~ GOTO 109
  IF ~~ THEN REPLY @216 DO ~SetGlobal("AarinFriend","GLOBAL",3)~ GOTO 110
END

IF ~~ THEN BEGIN 108// from: 107.1
  SAY @217
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 109// from: 107.2
  SAY @218
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF ~~ THEN BEGIN 110// from: 107.3
  SAY @219
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @73 EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)Global("AarinTalk","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 111 // from:
  SAY @220
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)Global("LuskanTalk","LOCALS",0)IsGabber(Player1)~ THEN BEGIN 113 // from:
  SAY @221
  IF ~~ THEN DO ~SetGlobal("LuskanTalk","LOCALS",1)SetGlobal("GoToLuskan","GLOBAL",1)EraseJournalEntry(@13)~ UNSOLVED_JOURNAL @222 GOTO 114
END

IF ~~ THEN BEGIN 114// from: 113.1
  SAY @223
  IF ~~ THEN REPLY @224 GOTO 115
  IF ~~ THEN REPLY @225 GOTO 116
  IF ~~ THEN REPLY @226 GOTO 117
  IF ~~ THEN REPLY @227 GOTO 118
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 115// from: 114.1
  SAY @229
  IF ~~ THEN REPLY @225 GOTO 116
  IF ~~ THEN REPLY @226 GOTO 117
  IF ~~ THEN REPLY @227 GOTO 118
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 116// from: 114.2
  SAY @230
  IF ~~ THEN REPLY @224 GOTO 115
  IF ~~ THEN REPLY @226 GOTO 117
  IF ~~ THEN REPLY @227 GOTO 118
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 117// from: 114.3
  SAY @231
  IF ~~ THEN REPLY @232 GOTO 120
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 120// from: 117.1
  SAY @233
  IF ~~ THEN REPLY @224 GOTO 115
  IF ~~ THEN REPLY @225 GOTO 116
  IF ~~ THEN REPLY @227 GOTO 118
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 118// from: 114.4
  SAY @234
  IF ~~ THEN REPLY @224 GOTO 115
  IF ~~ THEN REPLY @225 GOTO 116
  IF ~~ THEN REPLY @226 GOTO 117
  IF ~~ THEN REPLY @228 GOTO 119
END

IF ~~ THEN BEGIN 119// from: 114.5
  SAY @235
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121// from: 119.1
  SAY @236
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)Global("LuskanTalk","LOCALS",1)IsGabber(Player1)~ THEN BEGIN 122 // from:
  SAY @237
  IF ~~ THEN REPLY @224 GOTO 115
  IF ~~ THEN REPLY @225 GOTO 116
  IF ~~ THEN REPLY @226 GOTO 117
  IF ~~ THEN REPLY @227 GOTO 118
  IF ~~ THEN REPLY @228 GOTO 119
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)Global("AarinTalk","GLOBAL",1)IsGabber(Player1)Global("HelpDruid","GLOBAL",1)Global("TalkAboutDruid","LOCALS",0)~ THEN BEGIN 123 // from:
  SAY @238
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @67 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 36
  IF ~~ THEN REPLY @68 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ GOTO 41
  IF ~~ THEN REPLY @73 DO ~SetGlobal("TalkAboutDruid","LOCALS",1)~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)Global("AarinTalk","GLOBAL",1)IsGabber(Player1)Global("Mutamin","GLOBAL",1)Global("TalkAboutMutamin","LOCALS",0)~ THEN BEGIN 124 // from:
  SAY @239
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @67 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 36
  IF ~~ THEN REPLY @68 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ GOTO 41
  IF ~~ THEN REPLY @73 DO ~SetGlobal("TalkAboutMutamin","LOCALS",1)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)Global("AarinTalk","GLOBAL",1)IsGabber(Player1)GlobalGT("AarinFriend","GLOBAL",1)Gender(Player1,FEMALE)~ THEN BEGIN 125 // from:
  SAY @240
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~ Global("DreamsOfAribeth","GLOBAL",0)Global("TalkDreams","GLOBAL",0)~ THEN REPLY @64 DO ~SetGlobal("TalkDreams","GLOBAL",1)~ GOTO 33
  IF ~  Global("AribethFriend","GLOBAL",2)~ THEN REPLY @65 DO ~SetGlobal("AribethFriend","GLOBAL",3)~ GOTO 34
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~  Global("AarinFriend","GLOBAL",0)~ THEN REPLY @69 GOTO 38
  IF ~  Global("AarinFriend","GLOBAL",1)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @70 GOTO 39
  IF ~  Global("AarinFriend","GLOBAL",2)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @71 GOTO 40
  IF ~  Global("AarinFriend","GLOBAL",4)GlobalTimerExpired("TalkAboutAarin","LOCALS")~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",2)Global("AribethWasGone","LOCALS",1)IsGabber(Player1)~ THEN BEGIN 20 // from:
  SAY @241
  IF ~ PartyHasItem("Nwbook51")
GlobalLT("CultInLuskan","GLOBAL",3)~ THEN REPLY @242 GOTO 126
  IF ~  PartyHasItem("Stamp")
Global("PlayerHasPermit","GLOBAL",0)
Global("AskAboutStamp","LOCALS",1)~ THEN REPLY @243 GOTO 127
  IF ~~ THEN REPLY @244 GOTO 128
  IF ~  Global("PlayerHasPermit","GLOBAL",0)~ THEN REPLY @245 GOTO 129
  IF ~~ THEN REPLY @246 GOTO 136
  IF ~  OR(3)GlobalLT("AarinFriend","GLOBAL",3)!Global("AarinFriend","GLOBAL",9)Gender(Player1,MALE)~ THEN REPLY @247 GOTO 130
  IF ~  GlobalGT("AarinFriend","GLOBAL",2)!Global("AarinFriend","GLOBAL",9)Gender(Player1,FEMALE)~ THEN REPLY @247 GOTO 139
END

IF ~~ THEN BEGIN 126// from: 20.1
  SAY @248
  IF ~~ THEN REPLY @249 GOTO 131
END

IF ~~ THEN BEGIN 131// from: 127.1
  SAY @250
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132// from: 131.1
  SAY @251
  IF ~~ THEN REPLY @252 GOTO 133
END

IF ~~ THEN BEGIN 133// from: 132.1
  SAY @253
  IF ~~ THEN REPLY @254 DO ~SetGlobal("CultInLuskan","GLOBAL",4)EraseJournalEntry(~Поиски культа

Благодаря твоей доблести и храбрости город Невервинтер был спасен, и тем жителям, которые еще остались в живых, больше не угрожает Воющая Смерть. Однако, Дестер, человек, распространявший чуму, действовал не в одиночку. Значительную помощь и поддержку ему оказывал могущественный загадочный культ, месторасположение которого с огромным трудом было установлено. Он находится в Башне Хозяина Братства Таинств в Лускане. Лидер культа, чародей по имени Маугрим, организовал переворот с целью разрушить орден волшебников и подчинить культу большую часть его силы. Ту же силу он использовал, чтобы сблизиться с другими державами на севере и сбросить Лускан в хаос... и все это для того, чтобы собрать армию, которая могла бы напасть на Невервинтер. Эту армию возглавит не кто иной, как сама леди Арибет... павший паладин, перешедший на сторону госпожи Маугрима, странного ящерообразного существа по имени Мораг.

Эта Мораг ищет 'Слова Власти'... Что это такое, и что случится, когда Мораг найдет их, неизвестно. Но возможно, завладеть ими - единственный способ лишить Маугрима и его культ той силы, что у них уже есть. Время не терпит. Тебе необходимо как можно скорее сообщить эту информацию Аарину Генду в храме Тира!~)EraseJournalEntry(@258)StartCutSceneMode()StartCutScene("ToNewer")~ UNSOLVED_JOURNAL @255 EXIT
  IF ~~ THEN REPLY @256 DO ~SetGlobal("CultInLuskan","GLOBAL",3)EraseJournalEntry(@258)EraseJournalEntry(~Поиски культа

Благодаря твоей доблести и храбрости город Невервинтер был спасен, и тем жителям, которые еще остались в живых, больше не угрожает Воющая Смерть. Однако, Дестер, человек, распространявший чуму, действовал не в одиночку. Значительную помощь и поддержку ему оказывал могущественный загадочный культ, месторасположение которого с огромным трудом было установлено. Он находится в Башне Хозяина Братства Таинств в Лускане. Лидер культа, чародей по имени Маугрим, организовал переворот с целью разрушить орден волшебников и подчинить культу большую часть его силы. Ту же силу он использовал, чтобы сблизиться с другими державами на севере и сбросить Лускан в хаос... и все это для того, чтобы собрать армию, которая могла бы напасть на Невервинтер. Эту армию возглавит не кто иной, как сама леди Арибет... павший паладин, перешедший на сторону госпожи Маугрима, странного ящерообразного существа по имени Мораг.

Эта Мораг ищет 'Слова Власти'... Что это такое, и что случится, когда Мораг найдет их, неизвестно. Но возможно, завладеть ими - единственный способ лишить Маугрима и его культ той силы, что у них уже есть. Время не терпит. Тебе необходимо как можно скорее сообщить эту информацию Аарину Генду в храме Тира!~) UNSOLVED_JOURNAL @255 EXIT
END

IF ~~ THEN BEGIN 127// from: 20.2
  SAY @257
  IF ~~ THEN DO ~TakePartyItem("Stamp")GiveItemCreate("PermitTo",Player1,0,0,0)SetGlobal("PlayerHasPermit","GLOBAL",1)EraseJournalEntry(@262)~ UNSOLVED_JOURNAL @258 GOTO 135
END

IF ~~ THEN BEGIN 135// from: 127.1
  SAY @259
  IF ~  OR(3)GlobalLT("AarinFriend","GLOBAL",3)!Global("AarinFriend","GLOBAL",9)Gender(Player1,MALE)~ THEN REPLY @247 GOTO 130
  IF ~  GlobalGT("AarinFriend","GLOBAL",2)!Global("AarinFriend","GLOBAL",9)Gender(Player1,FEMALE)~ THEN REPLY @247 GOTO 139
END

IF ~~ THEN BEGIN 128// from: 20.3
  SAY @260
  IF ~ PartyHasItem("Nwbook51")
GlobalLT("CultInLuskan","GLOBAL",3)~ THEN REPLY @242 GOTO 126
  IF ~  PartyHasItem("Stamp")
Global("PlayerHasPermit","GLOBAL",0)
Global("AskAboutStamp","LOCALS",1)~ THEN REPLY @243 GOTO 127
  IF ~ Global("PlayerHasPermit","GLOBAL",0)~ THEN REPLY @245 GOTO 129
  IF ~~ THEN REPLY @246 GOTO 136
  IF ~  OR(3)GlobalLT("AarinFriend","GLOBAL",3)!Global("AarinFriend","GLOBAL",9)Gender(Player1,MALE)~ THEN REPLY @247 GOTO 130
  IF ~  GlobalGT("AarinFriend","GLOBAL",2)!Global("AarinFriend","GLOBAL",9)Gender(Player1,FEMALE)~ THEN REPLY @247 GOTO 139
END

IF ~~ THEN BEGIN 129// from: 20.4
  SAY @261
  IF ~~ THEN DO ~SetGlobal("AskAboutStamp","LOCALS",1)EraseJournalEntry(@222)~ UNSOLVED_JOURNAL @262 GOTO 137
END

IF ~~ THEN BEGIN 137// from: 129.1
  SAY @263
  IF ~ PartyHasItem("Nwbook51")
GlobalLT("CultInLuskan","GLOBAL",3)~ THEN REPLY @242 GOTO 126
  IF ~  PartyHasItem("Stamp")
Global("PlayerHasPermit","GLOBAL",0)
Global("AskAboutStamp","LOCALS",1)~ THEN REPLY @243 GOTO 127
  IF ~~ THEN REPLY @244 GOTO 128
  IF ~~ THEN REPLY @246 GOTO 136
  IF ~  OR(3)GlobalLT("AarinFriend","GLOBAL",3)!Global("AarinFriend","GLOBAL",9)Gender(Player1,MALE)~ THEN REPLY @247 GOTO 130
  IF ~  GlobalGT("AarinFriend","GLOBAL",2)!Global("AarinFriend","GLOBAL",9)Gender(Player1,FEMALE)~ THEN REPLY @247 GOTO 139
END

IF ~~ THEN BEGIN 136// from: 20.5
  SAY @264
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138// from: 136.1
  SAY @265
  IF ~ PartyHasItem("Nwbook51")
GlobalLT("CultInLuskan","GLOBAL",3)~ THEN REPLY @242 GOTO 126
  IF ~  PartyHasItem("Stamp")
Global("PlayerHasPermit","GLOBAL",0)
Global("AskAboutStamp","LOCALS",1)~ THEN REPLY @243 GOTO 127
  IF ~~ THEN REPLY @244 GOTO 128
  IF ~  Global("PlayerHasPermit","GLOBAL",0)~ THEN REPLY @245 GOTO 129
  IF ~  OR(3)GlobalLT("AarinFriend","GLOBAL",3)!Global("AarinFriend","GLOBAL",9)Gender(Player1,MALE)~ THEN REPLY @247 GOTO 130
  IF ~  GlobalGT("AarinFriend","GLOBAL",2)!Global("AarinFriend","GLOBAL",9)Gender(Player1,FEMALE)~ THEN REPLY @247 GOTO 139
END

IF ~~ THEN BEGIN 130// from: 20.6
  SAY @236
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139// from: 20.7
  SAY @266
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",2)Global("AribethWasGone","LOCALS",0)IsGabber(Player1)~ THEN BEGIN 140 // from:
  SAY @267
  IF ~~ THEN REPLY @268 GOTO 141
  IF ~~ THEN REPLY @269 GOTO 142
  IF ~~ THEN REPLY @270 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 143
  IF ~~ THEN REPLY @271 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 144
END

IF ~~ THEN BEGIN 141// from: 140.1
  SAY @272
  IF ~~ THEN REPLY @269 GOTO 142
  IF ~~ THEN REPLY @270 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 143
  IF ~~ THEN REPLY @271 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 144
END

IF ~~ THEN BEGIN 142// from: 140.2.141.1
  SAY @273
  IF ~~ THEN REPLY @270 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 143
  IF ~~ THEN REPLY @271 DO ~SetGlobal("AribethWasGone","LOCALS",1)~ GOTO 144
END

IF ~~ THEN BEGIN 143// from: 140.3.141.2.142.1
  SAY @274
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144// from: 140.4.141.3.142.2
  SAY @275
  IF ~~ THEN REPLY @245 GOTO 129
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 134 // from:
  SAY @276
  IF ~~ THEN REPLY @254 DO ~SetGlobal("CultInLuskan","GLOBAL",4)StartCutSceneMode()StartCutScene("ToNewer")~ EXIT
  IF ~~ THEN REPLY @277 EXIT
END
