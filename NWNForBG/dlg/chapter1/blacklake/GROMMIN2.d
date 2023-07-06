// Чернозерье Поместье Мелданена Громмин   Что-то подсказывает вам, что этот полуорк довольно глуп. Наверное поэтому он ковыряет в носу своей секирой. Да-да, секирой.

// DisplayStringHead(Myself,000000) Эй! Эй, ты! Твоя надо... это... э-дин-ти-фе-сыро-вать. Да, дент-и-фи-цыфровать!

// DisplayStringHead(Myself,000000) Тьфу! Никто не слушать Громмин...

BEGIN ~GROMMIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @12
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY @13
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @22
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @23
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @26
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @27
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 9
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 8
  IF ~  Dead("Meldanen")~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @32
  IF ~~ THEN DO ~AddexperienceParty(10000)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY @33
  IF ~~ THEN EXIT
END

