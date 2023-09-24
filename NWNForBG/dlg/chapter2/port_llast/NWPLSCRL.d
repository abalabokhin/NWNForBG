// Порт-Лласт Торговец свитками Заданий нет

BEGIN ~NWPLSCRL~

IF ~  OR(2)Class(LastTalkedToBy,MAGE_ALL)Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("NWPLSCRL",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~  !Class(LastTalkedToBy,MAGE_ALL)!Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 2 // from:
  SAY @4
  IF ~~ THEN REPLY @1 DO ~StartStore("NWPLSCRL",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

