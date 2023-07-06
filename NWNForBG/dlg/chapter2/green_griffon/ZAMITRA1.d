// Северная дорога, таверна Зеленый грифон, уровень 1 Замитра, Владеет камнем. Эта женщина осматривает таверну, и нагло заглядывает в глаза мужчинам, которые смотрят в ее сторону.

BEGIN ~ZAMITRA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",1)~ THEN BEGIN 10 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",0)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",2)~ THEN BEGIN 11 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",3)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialog","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @2
  IF ~~ THEN EXTERN ~MUTAMIN2~ 19 // Я заверяю вас, мадам, у нас очень приличное заведение. [MUTAM050]
END

IF ~~ THEN BEGIN 1 // from: MUTAMIN2 50
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(Player1,MALE)IsGabber(Player1)GlobalGT("AelaithQuest","GLOBAL",0)Global("Pause","MYAREA",0)~ THEN BEGIN 2 // from:
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Pause","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("SexWithZamitra","GLOBAL",1)EscapeAreaObject("Stairs")~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)Gender(Player1,FEMALE)!IsGabber(Player1)Global("AelaithQuest","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY @16
  IF ~  Gender(Player1,MALE)~ THEN EXIT
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY @17 GOTO 9
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY @18 EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AelaithQuest","GLOBAL",0)IsGabber(Player1)Global("Pause","MYAREA",1)~ THEN BEGIN 12 // from:
  SAY @20
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END
