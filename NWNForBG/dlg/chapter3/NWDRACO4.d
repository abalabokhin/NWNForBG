// Лунный лес логово Клаута  Клаут Красный дракон  Этот древний колоссальный красный дракон по кличке "Старый Снарл" покрыт ужасными шрамами. Это, возможно, самое страшное и могущественное смертное существо во всем Фейруне. 

// Предательство! Испорченная сущность мертвого дракона! Теперь ты умрешь! [DRACO450]

BEGIN ~NWDRACO4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Draco4Job","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 20
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 21
  IF ~~ THEN REPLY @21 GOTO 15
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.7
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @27
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY @30
  IF ~~ THEN REPLY @16 GOTO 20
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.2
  SAY @31
  IF ~~ THEN REPLY @16 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @32
  IF ~~ THEN DO~TakePartyItem("SphereE2")GiveGoldForce(10000)DestroyItem("SphereE2")ClearAllActions()StartCutSceneMode()StartCutScene("Draco4")EraseJournalEntry(@200001)EraseJournalEntry(@200002)~ SOLVED_JOURNAL @200000 EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY @34
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY @35
  IF ~~ THEN DO~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)SetGlobal("KlautHostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 24
  IF ~~ THEN REPLY @38 DO ~SetGlobal("Suggestion","LOCALS",1)~ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY @39
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 22
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 58
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 6.2
  SAY @45
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @48
  IF ~~ THEN REPLY @44 GOTO 58
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 25 // from: 17.2
  SAY @51
  IF ~  OR(2)PartyHasItem("Dragegg1")PartyHasItem("Dragegg2")~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @55 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @56
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @59 GOTO 33
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY @60
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @55 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 25.3
  SAY @61
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @55 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.4
  SAY @62
  IF ~~ THEN DO ~SetGlobal("Draco4Job","GLOBAL",1)~ UNSOLVED_JOURNAL @200001 EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY @64
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 32 // from: 27.1
  SAY @65
  IF ~  PartyHasItem("Dragegg1")~ THEN DO ~SetGlobal("Draco4Job","GLOBAL",2)TakePartyItem("Dragegg1")GiveItem("NWKEY15",LastTalkedToBy)EraseJournalEntry(@200001)~ SOLVED_JOURNAL @200002 EXIT
  IF ~  PartyHasItem("Dragegg2")~ THEN DO ~SetGlobal("Draco4Job","GLOBAL",2)TakePartyItem("Dragegg2")GiveItem("NWKEY15",LastTalkedToBy)EraseJournalEntry(@200001)~ SOLVED_JOURNAL @200002 EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.2
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 32
  IF ~~ THEN REPLY @69 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY @70
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Draco4Job","GLOBAL",2)~ THEN BEGIN 35 // from:
  SAY @71
  IF ~  Global("Draco4Job","GLOBAL",1)~ THEN GOTO 36
  IF ~  !Global("Draco4Job","GLOBAL",1)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 38
  IF ~  OR(2)PartyHasItem("Dragegg1")PartyHasItem("Dragegg2")~ THEN REPLY @52 GOTO 27
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 5
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 6
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @74
  IF ~~ THEN REPLY @4 GOTO 31
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~ Global("Draco4Job","GLOBAL",2)~ THEN BEGIN 39 // from:
  SAY @75
  IF ~  OR(2)PartyHasItem("Dragegg2")PartyHasItem("Dragegg1")~ THEN REPLY @76 GOTO 40
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 44
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 45
  IF ~~ THEN REPLY @79 GOTO 46
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 47
  IF ~~ THEN REPLY @17 GOTO 48
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 50
  IF ~~ THEN REPLY @20 GOTO 51
  IF ~~ THEN REPLY @21 GOTO 52
END

IF ~~ THEN BEGIN 43 // from: 39.4
  SAY @64
  IF ~~ THEN REPLY @12 GOTO 53
  IF ~~ THEN REPLY @13 GOTO 54
  IF ~~ THEN REPLY @80 GOTO 55
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 44 // from: 39.6
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 56
  IF ~~ THEN REPLY @24 GOTO 56
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 45 // from: 40.1
  SAY @81
  IF ~  PartyHasItem("Dragegg2")~ THEN DO ~TakePartyItem("Dragegg2")GiveGoldForce(8000)~ EXIT
  IF ~  PartyHasItem("Dragegg1")~ THEN DO ~TakePartyItem("Dragegg1")GiveGoldForce(8000)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 40.2
  SAY @82
  IF ~~ THEN REPLY @68 GOTO 45
  IF ~~ THEN REPLY @83 GOTO 57
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY @42
  IF ~~ THEN REPLY @84 GOTO 49
  IF ~~ THEN REPLY @44 GOTO 58
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 48 // from: 41.2
  SAY @31
  IF ~~ THEN REPLY @16 GOTO 47
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY @48
  IF ~~ THEN REPLY @44 GOTO 58
  IF ~~ THEN REPLY @17 GOTO 48
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 50 // from: 42.1
  SAY @32
  IF ~~ THEN DO~TakePartyItem("SphereE2")DestroyItem("SphereE2")GiveGoldForce(10000)ClearAllActions()StartCutSceneMode()StartCutScene("Draco4")EraseJournalEntry(@200001)EraseJournalEntry(@200002)~ SOLVED_JOURNAL @200000 EXIT
END

IF ~~ THEN BEGIN 51 // from: 42.2
  SAY @85
  IF ~~ THEN REPLY @19 GOTO 50
  IF ~~ THEN REPLY @20 GOTO 51
  IF ~~ THEN REPLY @21 GOTO 52
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 44
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 52 // from: 42.3
  SAY @34
  IF ~~ THEN REPLY @19 GOTO 50
  IF ~~ THEN REPLY @20 GOTO 51
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~  Global("Draco3Job","GLOBAL",1)~ THEN REPLY @6 GOTO 44
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 53 // from: 43.1
  SAY @27
  IF ~~ THEN REPLY @13 GOTO 54
  IF ~~ THEN REPLY @80 GOTO 55
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 54 // from: 43.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 59
  IF ~~ THEN REPLY @12 GOTO 53
  IF ~~ THEN REPLY @80 GOTO 55
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 55 // from: 43.3
  SAY @86
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 56 // from: 44.1
  SAY @35
  IF ~~ THEN DO~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)SetGlobal("KlautHostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 46.2
  SAY @87
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.1
  SAY @88
  IF ~~ THEN REPLY @89 GOTO 61
  IF ~~ THEN REPLY @17 GOTO 48
  IF ~~ THEN REPLY @4 GOTO 43
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 59 // from: 54.1
  SAY @39
  IF ~~ THEN REPLY @12 GOTO 53
  IF ~~ THEN REPLY @80 GOTO 55
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 60 // from: 55.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 61
  IF ~~ THEN REPLY @12 GOTO 53
  IF ~~ THEN REPLY @13 GOTO 54
  IF ~  PartyHasItem("SphereE1")~ THEN REPLY @5 GOTO 41
  IF ~  PartyHasItem("SphereE2")~ THEN REPLY @5 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY @62
  IF ~~ THEN EXIT
END

