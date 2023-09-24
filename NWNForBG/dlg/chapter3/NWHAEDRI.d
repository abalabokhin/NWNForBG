//  Хэдралин   Человекоящер  NWHAEDRI
BEGIN ~NWHAEDRI~

// Поговори со мной **шшш*. Нам есть чему поучиться друг у друга. [HAERD050]

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",1)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @25
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY @26
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @32
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @33
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 15.4
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @41
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @42
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY @43
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY @44
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY @45
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @48 GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 28 
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @51 GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @52
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @51 GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY @53
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.2
  SAY @54
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY @55
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 32.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 33
  IF ~~ THEN REPLY @62 GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @63
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",2)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)PartyHasItem("NWWORD1")PartyHasItem("NWWORD2")PartyHasItem("NWWORD3")Global("HaerdalinTalk","GLOBAL",2)~ THEN BEGIN 34 // from:
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~~ THEN REPLY @66 GOTO 35
  IF ~~ THEN REPLY @3 GOTO 36
  IF ~~ THEN REPLY @67 GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @68
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 34.3
  SAY @69
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~~ THEN REPLY @66 GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.4
  SAY @70
  IF ~~ THEN REPLY @3 GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @73
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 41
  IF ~~ THEN REPLY @76 GOTO 42
  IF ~~ THEN REPLY @77 GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @78
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY @79
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 40.3
  SAY @80
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 41.1
  SAY @81
  IF ~~ THEN REPLY @76 GOTO 42
  IF ~~ THEN REPLY @77 GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 42.1
  SAY @82
  IF ~~ THEN REPLY @75 GOTO 41
  IF ~~ THEN REPLY @77 GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY @83
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 48
  IF ~~ THEN REPLY @86 GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @87
  IF ~~ THEN DO ~SetGlobal("HaerdalinTalk","GLOBAL",3)CreateVisualEffectObject("ICRMPARI",Myself)Wait(3)DestroySelf()~ EXIT
END

