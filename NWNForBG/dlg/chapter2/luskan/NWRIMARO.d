// Лускан - Башня хозяина - 4 этаж - Римардо Домайн Маг  Этот крупный мужчина ведет себя с достоинством, но нервничает, словно он боится показать, кто он есть на самом деле, и в то же время не может этого до конца скрыть.

// Что вы делаете в Башне Хозяина?! Это непозволительно! [NWRIMA53]

// Я сдаюсь! Пощадите меня, умоляю! [RIMARD54]

BEGIN ~NWRIMARO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   Global("Attack","MYAREA",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  OR(2)HasItem("Potn55",Myself)HasItem("Nwpotn03",Myself)~ THEN REPLY @2 GOTO 2
  IF ~  !HasItem("Potn55",Myself)!HasItem("Nwpotn03",Myself)~ THEN REPLY @2 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 DO ~GiveItem("Potn55",LastTalkedToBy)GiveItem("Nwpotn03",LastTalkedToBy)~ GOTO 1
  IF ~~ THEN REPLY @3 DO ~GiveItem("Potn55",LastTalkedToBy)GiveItem("Nwpotn03",LastTalkedToBy)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~GiveItem("Potn55",LastTalkedToBy)GiveItem("Nwpotn03",LastTalkedToBy)~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN DO ~ForceSpellRES("NWRIMALO",Myself)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)Rest()SetGlobal("Attack","MYAREA",3)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~  OR(2)HasItem("Potn55",Myself)HasItem("Nwpotn03",Myself)~ THEN REPLY @2 GOTO 2
  IF ~  !HasItem("Potn55",Myself)!HasItem("Nwpotn03",Myself)~ THEN REPLY @2 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8// from: 0.4
  SAY @24
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY @31
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 6.2
  SAY @32
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 6.3
  SAY @33
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @34 GOTO 16
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @35
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @36 GOTO 17
  IF ~~ THEN REPLY @37 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @38
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
END


IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @39
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY @43
  IF ~CheckStatGT(LastTalkedToBy,10,LORE)~ THEN REPLY @44 GOTO 21
  IF ~CheckStatLT(LastTalkedToBy,11,LORE)~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 4
  IF ~~ THEN REPLY @46 GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @47
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 4
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 23
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @18 GOTO 4
  IF ~~ THEN REPLY @42 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY @52
  IF ~~ THEN REPLY @45 GOTO 4
  IF ~~ THEN REPLY @46 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 1
  IF ~~ THEN REPLY @53 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @54
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY @55
  IF ~~ THEN REPLY @49 GOTO 23
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~~ THEN REPLY @18 GOTO 4
  IF ~~ THEN REPLY @42 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @56
  IF ~~ THEN REPLY @18 GOTO 4
  IF ~~ THEN REPLY @42 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

// ------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 26 // from:
  SAY @57
  IF ~~ THEN DO ~SetGlobal("Attack","MYAREA",1)SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

