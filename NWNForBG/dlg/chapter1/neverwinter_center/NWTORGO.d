// Центр Невервинтера   Маска Лунного Камня  Торго - бармен   Это один из многочисленных в Невервинтере торговцев горячительными напитками. Он одевается просто, желая вызвать симпатию у своих клиентов.

BEGIN ~NWTORGO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWMoonstoneMask","GLOBAL",2)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("NWMoonstoneMask","GLOBAL",2)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 DO ~StartStore("NWTORGO",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  PartyGoldGT(199)~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @2 DO ~StartStore("NWTORGO",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @2 DO ~StartStore("NWTORGO",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN DO ~TakePartyGold(200)GiveItemCreate("NWOPPERT",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN REPLY @2 DO ~StartStore("NWTORGO",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

