// Доки Подвал Таверны Сиди Дара'ней Эта эльфийка держится вызывающе, несмотря на то, как с ней обошлись ее тюремщики. Она одета в форму Кровавых Моряков, тем не менее, она не похожа на опытного бойца. Дать в инвентарь медальон-ключ - нельзя украсть

BEGIN ~DARANEI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Dead("Vengaul")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @5 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @6 GOTO 6
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @7 GOTO 7
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @5 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @6 GOTO 6
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @7 GOTO 7
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @5 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @6 GOTO 6
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @7 GOTO 7
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("PlayerIntroduced","LOCALS",1)~ GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.7
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @25
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY @30
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @40
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @41
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.1
  SAY @42
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.2
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 25
  IF ~~ THEN REPLY @22 GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY @45
  IF ~  Global("Medallion","LOCALS",0)~ THEN GOTO 26
  IF ~  Global("Medallion","LOCALS",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 16.2
  SAY @46
  IF ~  Global("Medallion","LOCALS",0)~ THEN GOTO 26
  IF ~  Global("Medallion","LOCALS",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 16.3
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY @48
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 26 // from: 22.1 23.1
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Medallion","LOCALS",1)GiveItem("Nwmisc50",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 23.2
  SAY @50
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Dead("Vengaul")~ THEN BEGIN 28 // from:
  SAY @51
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @5 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @6 GOTO 6
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("PlayerIntroduced","LOCALS",1)~ THEN REPLY @7 GOTO 7
  IF ~  Global("PlayerIntroduced","LOCALS",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Vengaul")~ THEN BEGIN 29 // from:
  SAY @52
  IF ~~ THEN EXIT
END

