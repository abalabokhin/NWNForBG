// \Пещера Снежного Шара  Белый дракон-страж   Ма'фел'но'сей'кедех'наар  Клык Зимы    Хотя белые драконы и являются слабейшей породой червей Фейруна, огромный размер этой особи указывает на его большой возраст и чудовищную силу.     Строки:
// У вас Амулет Веков! Вы должны умереть! [DRACO150]  
// Подойдите, малютка. Говорите со мной, если у вас хватит храбрости. [DRACO151]     

BEGIN ~NWDRACO1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("DRACAMU3")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~  !IsGabber(Player1)~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  OR(2)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")~ THEN REPLY @13 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @14
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~  !IsGabber(Player1)~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @26
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY @27
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)SetGlobal("KillPlayer","LOCALS",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @30
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  OR(3)PartyHasItem("DRACAMU1")PartyHasItem("DRACAMU2")~ THEN REPLY @13 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @31
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @32
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @41
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @42
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)SetGlobal("KillPlayer","LOCALS",1)Enemy()~ EXIT
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("DRACAMU3")~ THEN BEGIN 22 // from:
  SAY @43
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 2
  IF ~  !IsGabber(Player1)~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

