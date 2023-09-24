// Святилище Камня-Источника   Ашира   Эльф   Хоть она и носит одежды странных и незнакомых земель, физическое сходство между этим эльфийским паладином и Арибет просто сверхъестественное.

// Nwamul02  - Амулет Аширы

// Этот амулет принадлежал Ашире, таинственному воину из другого мира. Его магические свойства обеспечивают дополнительную защиту от Мораг и ее ящероподобных приспешников.

BEGIN ~NWASHIRA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @17
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY @18
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 5.5
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.6
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @27
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY @28
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @29
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @30
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 7.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 23
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @20 GOTO 16
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @35
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY @36
  IF ~~ THEN REPLY @10 GOTO 25
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 18.1
  SAY @41
  IF ~~ THEN DO ~GiveItemCreate("Nwamul02",LastTalkedToBy,0,0,0)CreateVisualEffectObject("ICRMPARI",Myself)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY @42
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY @43
  IF ~~ THEN REPLY @33 GOTO 23
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @20 GOTO 16
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @44
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @45
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @26 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @46
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @47
  IF ~~ THEN REPLY @38 GOTO 25
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 11
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~ False()~ THEN BEGIN 30 // from:
  SAY @48
  IF ~~ THEN EXIT
END

