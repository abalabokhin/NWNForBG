// Гнездо Нищих  Дом Томаса Уилрайта  (Ремонт повозок Томаса Уилрайта) Гектор  - тупой человек (сделать полуорком?) запчасти для повозки Этот человек выглядит очень сильным, но его манеры просты и невинны. Похоже, он не знает, что ему делать.

BEGIN ~NWHECTOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("HectorFollow","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  GlobalGT("AldoQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: NWALDO 2
  SAY @8
  IF ~~ THEN EXTERN ~NWALDO~ 14 // Хорошо, хорошо, расслабься, увалень. Надо подумать, что нам делать дальше. Видимо, пора покидать корабль. Нет частей - нет повозки. Ну что же.
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @9
  IF ~~ THEN DO ~SetGlobal("KnowHector","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~  Global("AldoQuest","GLOBAL",0)~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~  Global("AldoQuest","GLOBAL",0)~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~  GlobalGT("AldoQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("HectorFollow","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @18
  IF ~  GlobalGT("AldoQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

// --------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("HectorFollow","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~  GlobalGT("AldoQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @21
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("HectorFollow","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @22
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.3
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",0)~ EXIT
END

