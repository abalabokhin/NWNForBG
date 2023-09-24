//  Подземелье замка Невер Хэдралин   Человекоящер  NWHAEDRI
BEGIN ~NWHAEDR2~

// Поговори со мной **шшш*. Нам есть чему поучиться друг у друга. [HAERD050]

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  PartyHasItem("NWWORD4")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY @7
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("HaedralinJob","GLOBAL",2)EraseJournalEntry(@107603)~ UNSOLVED_JOURNAL @107602 EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @14
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @18
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @19
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @20
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("NWWORD4")~ THEN BEGIN 13 // from:
  SAY @21
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @22
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~  PartyHasItem("NWWORD4")~ THEN REPLY @28 GOTO 3
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @30
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @31
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY @32
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY @33
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY @34
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @35
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY @36
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 18.2
  SAY @39
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 28
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY @44
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY @45
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 25.2
  SAY @46
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY @47
  IF ~ PartyHasItem("NWWORD4")~ THEN REPLY @28 GOTO 3
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @49 GOTO 35
  IF ~~ THEN REPLY @50 GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 37
  IF ~~ THEN REPLY @53 GOTO 38
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY @55
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY @56
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY @57
  IF ~~ THEN DO ~SetGlobal("HaedralinJob","GLOBAL",1)EraseJournalEntry(@104662)~ UNSOLVED_JOURNAL @107603 EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY @59
  IF ~ PartyHasItem("NWWORD4")~ THEN REPLY @28 GOTO 3
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 36
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
  IF ~~ THEN REPLY @63 GOTO 43
  IF ~~ THEN REPLY @64 GOTO 44
  IF ~~ THEN REPLY @65 GOTO 45
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 37 // from: 31.1
  SAY @66
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY @67
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @68
  IF ~~ THEN GOTO 39
  IF ~~ THEN REPLY @53 GOTO 38
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @69
  IF ~~ THEN REPLY @52 GOTO 37
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 41 // from: 36.1
  SAY @70
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 36.2
  SAY @71
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 36.3
  SAY @72
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 36.4
  SAY @73
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 36.5
  SAY @74
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 46 // from: 41.1
  SAY @75
  IF ~~ THEN REPLY @62 GOTO 42
  IF ~~ THEN REPLY @63 GOTO 43
  IF ~~ THEN REPLY @64 GOTO 44
  IF ~~ THEN REPLY @65 GOTO 45
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 47 // from: 43.1
  SAY @76
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @63 GOTO 43
  IF ~~ THEN REPLY @64 GOTO 44
  IF ~~ THEN REPLY @65 GOTO 45
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @77
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @78
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
  IF ~~ THEN REPLY @64 GOTO 44
  IF ~~ THEN REPLY @65 GOTO 45
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 50 // from: 44.1
  SAY @79
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY @80
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
  IF ~~ THEN REPLY @63 GOTO 43
  IF ~~ THEN REPLY @65 GOTO 45
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

IF ~~ THEN BEGIN 52 // from: 45.1
  SAY @81
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @82
  IF ~~ THEN REPLY @61 GOTO 41
  IF ~~ THEN REPLY @62 GOTO 42
  IF ~~ THEN REPLY @63 GOTO 43
  IF ~~ THEN REPLY @64 GOTO 44
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @29 GOTO 22
END

// ------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("NWWORD4")Global("HaedralinJob","GLOBAL",0)~ THEN BEGIN 54 // from:
  SAY @83
  IF ~~ THEN GOTO 15
END

// ------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("NWWORD4")Global("HaedralinJob","GLOBAL",1)~ THEN BEGIN 55 // from:
  SAY @84
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY @85
  IF ~ PartyHasItem("NWWORD4")~ THEN REPLY @28 GOTO 3
  IF ~~ THEN REPLY @48 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 36
  IF ~~ THEN REPLY @49 GOTO 35
END

// ------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("NWWORD4")GlobalGT("HaedralinJob","GLOBAL",1)~ THEN BEGIN 57 // from:
  SAY @86
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY @87
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

