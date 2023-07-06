// Северная дорога, таверна Зеленый грифон, уровень 2 Замитра, Владеет камнем. Эта женщина осматривает таверну, и нагло заглядывает в глаза мужчинам, которые смотрят в ее сторону.

BEGIN ~ZAMITRA2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)IsGabber(Player1)!Global("Attack","LOCALS",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",2)~ THEN BEGIN 3 // from:
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @5
  IF ~  RandomNum(2,1)~ THEN REPLY @6 GOTO 5
  IF ~  RandomNum(2,2)~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",3)SetGlobal("ZamitraGem","MYAREA",1)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @14
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",4)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @18
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
  IF ~~ THEN REPLY @12 GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",3)~ THEN BEGIN 12 // from:
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",4)EscapeArea()~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY @23
  IF ~~ THEN EXIT
END
