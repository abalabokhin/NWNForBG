// Порт-Лласт Казармы Кендрака Арибет  Арибет выглядит уставшей, сбитой с толку и куда менее уверенной, чем тогда, когда вы увиделись впервые.

BEGIN ~NWARIBE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
   IF ~~ THEN  DO ~SetGlobal("AribethTalk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.6
  SAY @23
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @24
  IF ~  PartyHasItem("NWGANONL")~ THEN REPLY @25 DO ~TakePartyItem("NWGANONL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NWSOLOML")~ THEN REPLY @26 DO ~TakePartyItem("NWSOLOML")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NWNEVAL")~ THEN REPLY @27 DO ~TakePartyItem("NWNEVAL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("NWRELMAL")
Global("WardokLetter","GLOBAL",0)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("NWRELMAL")
Global("WardokLetter","GLOBAL",1)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("NWCHARWJ")~ THEN REPLY @29 DO ~TakePartyItem("NWCHARWJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("NWGANONL")
!PartyHasItem("NWSOLOML")
!PartyHasItem("NWNEVAL")
!PartyHasItem("NWRELMAL")
!PartyHasItem("NWCHARWJ")
!PartyHasItem("NWWARDOL")~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1
  SAY @32
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 17.1
  SAY @33
  IF ~  PartyHasItem("NWSOLOML")~ THEN REPLY @26 DO ~TakePartyItem("NWSOLOML")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NWNEVAL")~ THEN REPLY @27 DO ~TakePartyItem("NWNEVAL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("NWCHARWJ")~ THEN REPLY @29 DO ~TakePartyItem("NWCHARWJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("NWSOLOML")
!PartyHasItem("NWNEVAL")
!PartyHasItem("NWRELMAL")
!PartyHasItem("NWCHARWJ")
!PartyHasItem("NWWARDOL")~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY @34
  IF ~  PartyHasItem("NWGANONL")~ THEN REPLY @25 DO ~TakePartyItem("NWGANONL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NWNEVAL")~ THEN REPLY @27 DO ~TakePartyItem("NWNEVAL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("NWCHARWJ")~ THEN REPLY @29 DO ~TakePartyItem("NWCHARWJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("NWGANONL")
!PartyHasItem("NWNEVAL")
!PartyHasItem("NWRELMAL")
!PartyHasItem("NWCHARWJ")
!PartyHasItem("NWWARDOL")~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 19 // from: 6.3
  SAY @35
  IF ~  PartyHasItem("NWGANONL")~ THEN REPLY @25 DO ~TakePartyItem("NWGANONL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NWSOLOML")~ THEN REPLY @26 DO ~TakePartyItem("NWSOLOML")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("NWCHARWJ")~ THEN REPLY @29 DO ~TakePartyItem("NWCHARWJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("NWGANONL")
!PartyHasItem("NWSOLOML")
!PartyHasItem("NWRELMAL")
!PartyHasItem("NWCHARWJ")
!PartyHasItem("NWWARDOL")~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.4
  SAY @36
  IF ~~ THEN REPLY @37 EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.6
  SAY @38 
  IF ~  PartyHasItem("NWGANONL")~ THEN REPLY @25 DO ~TakePartyItem("NWGANONL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NWSOLOML")~ THEN REPLY @26 DO ~TakePartyItem("NWSOLOML")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NWNEVAL")~ THEN REPLY @27 DO ~TakePartyItem("NWNEVAL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("NWRELMAL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY @28 DO ~TakePartyItem("NWRELMAL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("NWWARDOL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY @30 DO ~TakePartyItem("NWWARDOL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("NWGANONL")
!PartyHasItem("NWSOLOML")
!PartyHasItem("NWNEVAL")
!PartyHasItem("NWRELMAL")
!PartyHasItem("NWWARDOL")~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.7
  SAY @39
  IF ~~ THEN REPLY @40 EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.5
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @46
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @47
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY @48
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @45 DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @49
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY @50
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY @51
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.4
  SAY @52
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.5
  SAY @53
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @54
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY @55 GOTO 27
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY @56 GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY @57 GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY @58 GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 7.1.2
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 28
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @61 GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @61 GOTO 31
  IF ~~ THEN REPLY @62 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @63
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @64 GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @64 GOTO 31
  IF ~~ THEN REPLY @62 GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @65
  IF ~~ THEN REPLY @66 DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY @67 DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY @68
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1.2
  SAY @69
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @70
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 35
  IF ~~ THEN REPLY @73 GOTO 35
  IF ~~ THEN REPLY @74 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1.2.3
  SAY @75
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY @76
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 36
  IF ~~ THEN REPLY @79 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 8.1
  SAY @80
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 8.2
  SAY @81
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @82
  IF ~~ THEN REPLY @83 GOTO 39
  IF ~~ THEN REPLY @84 GOTO 40
  IF ~~ THEN REPLY @85 GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @86
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @87
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY @88
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY @89
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 44
  IF ~~ THEN REPLY @92 GOTO 45
  IF ~~ THEN REPLY @93 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY @94
  IF ~~ THEN REPLY @95 GOTO 47
  IF ~~ THEN REPLY @96 GOTO 48
  IF ~~ THEN REPLY @97 GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY @98
  IF ~~ THEN REPLY @95 GOTO 47
  IF ~~ THEN REPLY @96 GOTO 48
  IF ~~ THEN REPLY @97 GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 50
  IF ~~ THEN REPLY @101 GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY @102
  IF ~~ THEN REPLY @95 GOTO 47
  IF ~~ THEN REPLY @96 GOTO 48
  IF ~~ THEN REPLY @97 GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 46.2
  SAY @81
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 53
  IF ~~ THEN REPLY @106 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 47.1
  SAY @107
  IF ~~ THEN REPLY @108 DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY @109 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY @110 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY @111
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY @112
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 57 // from: 52.3
  SAY @113
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.2
  SAY @114
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 53
  IF ~~ THEN REPLY @106 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 49 // from: 44.3
  SAY @115
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 53
  IF ~~ THEN REPLY @106 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 47.2
  SAY @116
  IF ~~ THEN REPLY @108 DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY @109 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY @110 DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 54 // from: 47.3
  SAY @117
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 58
  IF ~~ THEN REPLY @120 GOTO 59
  IF ~~ THEN REPLY @121 GOTO 60
  IF ~~ THEN REPLY @122 GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 9.1
  SAY @123
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 9.2
  SAY @124
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 60 // from: 9.3
  SAY @125
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 9.4
  SAY @126
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.1
  SAY @127
  IF ~~ THEN REPLY @128 GOTO 63
  IF ~~ THEN REPLY @129 GOTO 64
  IF ~~ THEN REPLY @130 GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @131
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 64 // from: 62.2
  SAY @132
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 62.3
  SAY @133
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 63.1.64.1.65.1
  SAY @134
  IF ~~ THEN REPLY @135 GOTO 67
  IF ~~ THEN REPLY @136 GOTO 68
  IF ~~ THEN REPLY @137 GOTO 69
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @138
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY @139
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 66.3
  SAY @140
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 67.1.68.1.69.1
  SAY @141
  IF ~~ THEN REPLY @142 GOTO 71
  IF ~~ THEN REPLY @143 GOTO 72
  IF ~~ THEN REPLY @144 GOTO 72
  IF ~~ THEN REPLY @145 GOTO 73
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY @146
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 70.2
  SAY @147
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 70.3
  SAY @148
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.1.72.1
  SAY @149
  IF ~~ THEN REPLY @150 GOTO 75
  IF ~~ THEN REPLY @151 GOTO 76
  IF ~~ THEN REPLY @152 GOTO 77
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY @153
  IF ~~ THEN REPLY @151 GOTO 76
  IF ~~ THEN REPLY @152 GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 74.2
  SAY @154
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("NWARRING",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 74.3
  SAY @155
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("NWARRING",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY @156
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from: 4.7
  SAY @157
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 4.8
  SAY @158
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
Global("Evidence","GLOBAL",0)
Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 80 // from:
  SAY @159
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @160 EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
GlobalGT("Evidence","GLOBAL",0)
GlobalGT("AribethFriend","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
!Global("AribethFriend","GLOBAL",4)
!Global("RelmarJournal","GLOBAL",1)
!Global("WardokLetter","GLOBAL",1)
IsGabber(Player1)~ THEN BEGIN 81 // from:
  SAY @161
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @160 EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)
Global("AribethFriend","GLOBAL",4)
Global("RelmarJournal","GLOBAL",1)
Global("WardokLetter","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 82 // from:
  SAY @162
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  OR(6)
PartyHasItem("NWGANONL")
PartyHasItem("NWSOLOML")
PartyHasItem("NWNEVAL")
PartyHasItem("NWRELMAL")
PartyHasItem("NWCHARWJ")
PartyHasItem("NWWARDOL")~ THEN REPLY @9 GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @11 GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY @12 GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY @13 GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY @13 GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY @13 GOTO 79
  IF ~~ THEN REPLY @160 EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 83 // from:
  SAY @163
  IF ~~ THEN EXIT
END
