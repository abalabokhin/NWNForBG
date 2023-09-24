// Колодец Беорунна: Бар Лилиан Кэмбридж, Эта молодая женщина полна решимости присоединиться к обильным возлияниям, проводящимся в этом заведении.

BEGIN ~NWLILLIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @7
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("LillianJob","GLOBAL",2)~ THEN BEGIN 4 // from:
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 81
  SAY @18
  IF ~~ THEN GOTO 7
END

// -------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("Chapter3AarinJob","GLOBAL",1)Global("LillianJob","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @24
  IF ~  !PartyHasItem("NWSNOWOB")~ THEN REPLY @25 GOTO 36
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 20
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @38 GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @39
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @42 GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @43
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~  Global("PlayerKnovAboutSnowOrb","LOCALS",1)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY @44
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @45 GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 14.2
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY @48
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN GOTO 28
  IF ~  Global("LillianJob","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY @49
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @50
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY @51
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN GOTO 30
  IF ~  Global("LillianJob","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 32
  IF ~~ THEN REPLY @54 GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY @55
  IF ~~ THEN REPLY @34 GOTO 20
  IF ~~ THEN REPLY @54 GOTO 33
END

IF ~~ THEN BEGIN 27 // from: 20.1
  SAY @56
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @57
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @25 GOTO 36
  IF ~~ THEN REPLY @12 GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 38
END

IF ~~ THEN BEGIN 30 // from: 24.1
  SAY @61
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @25 GOTO 36
  IF ~~ THEN REPLY @12 GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 24.2
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 39
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 26.2
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.1
  SAY @65
  IF ~~ THEN DO ~SetGlobal("LillianJob","GLOBAL",2)TakePartyItem("NWSNOWOB")DestroyItem("NWSNOWOB")AddexperienceParty(102000)EraseJournalEntry(@107747)~ SOLVED_JOURNAL @104724 GOTO 41
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY @67
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 36 // from: 28.4
  SAY @68
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 28.5
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 29.1
  SAY @70
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @71 GOTO 35
  IF ~~ THEN REPLY @72 GOTO 45
  IF ~~ THEN REPLY @73 GOTO 46
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY @74
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @71 GOTO 35
  IF ~~ THEN REPLY @72 GOTO 45
  IF ~~ THEN REPLY @73 GOTO 46
END

IF ~~ THEN BEGIN 40 // from: 32.1
  SAY @75
  IF ~~ THEN DO ~SetGlobal("LillianJob","GLOBAL",2)TakePartyItem("NWSNOWOB")DestroyItem("NWSNOWOB")GiveGoldForce(300)AddexperienceParty(102000)EraseJournalEntry(@107747)~ SOLVED_JOURNAL @104724 GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 34.1 40.1
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 47
  IF ~~ THEN REPLY @78 GOTO 48
END

IF ~~ THEN BEGIN 42 // from: 35.1
  SAY @79
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @25 GOTO 36
  IF ~~ THEN REPLY @12 GOTO 37
END

IF ~~ THEN BEGIN 44 // from: 36.2
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 38.3
  SAY @81
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 38.4
  SAY @82
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @71 GOTO 35
  IF ~~ THEN REPLY @72 GOTO 45
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY @76
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 41.2
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 45.1
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 52
  IF ~~ THEN REPLY @89 GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY @90
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY @91
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.2
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 52
  IF ~~ THEN REPLY @4 GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 51.1
  SAY @94
  IF ~~ THEN DO ~SetGlobal("LillianJob","GLOBAL",1)~ UNSOLVED_JOURNAL @107747 EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @96
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PartyHasNWWord1","GLOBAL",0)Global("LillianJob","GLOBAL",1)~ THEN BEGIN 56 // from:
  SAY @97
  IF ~  Global("LillianJob","GLOBAL",1)~ THEN REPLY @25 GOTO 36
  IF ~  PartyHasItem("NWSNOWOB")~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 37
END

