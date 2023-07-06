// Доки Хеммел Мастерсон   Аристократ, пытающийся сохранять достоинство, явно не в своей тарелке. Он выглядит растерянным и не очень понимает, что ему теперь делать.
// Положить в инвентарь Nwmisc28 объявление о аукционе

BEGIN ~HEMMEL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // Забыл? Я ГОВОРИЛА тебе, что ему нельзя доверять.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @1
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: AGNES 2
  SAY @6
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // Хеммел, я могу сколько угодно клясться, что ты умен, но от этого ты умнее не станешь.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // Хеммел, я могу сколько угодно клясться, что ты умен, но от этого ты умнее не станешь.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 4 // О, чудесно, Хеммел. Так ты распрощаешься с фамильным амулетом Мастерсонов.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @15
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(240)AddexperienceParty(24000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: AGNES 3.1
  SAY @21
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 6 // И корабль тоже наверняка краденый. Правда, Хеммел, как ты мог вести себя так глупо.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

IF ~~ THEN BEGIN 12 // from: AGNES 4
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY @29
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(700)AddexperienceParty(18000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY @33
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 9
END

IF ~~ THEN BEGIN 17 // from: AGNES 3.2
  SAY @34
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 7 // Я говорила тебе, что это просто хитрость. Но этот Каллик раздавал свои завуалированные обещания, а ты был готов отдать ему все.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 18 // from: AGNES 3.3
  SAY @35
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: AGNES 5
  SAY @36
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 10.1
  SAY @37
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

IF ~~ THEN BEGIN 21 // from: AGNES 6
  SAY @37
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 18
   IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

IF ~~ THEN BEGIN 23 // from: AGNES 7
  SAY @40
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY @42
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)GiveItem("Nwmisc28",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @43
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 8 // Только потому, что ты слишком большой трус, чтобы пользоваться им, Хеммел.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: AGNES 8
  SAY @44
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY @26 GOTO 31
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 28 // from:
  SAY @45
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // Забыл? Я ГОВОРИЛА тебе, что ему нельзя доверять.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Amulet","LOCALS",1)~ THEN BEGIN 29 // from:
  SAY @46
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY @47 GOTO 3
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY @50
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 17
END

IF ~~ THEN BEGIN 31 // from: 3.4
  SAY @51
  IF ~~ THEN GOTO 19
END

