// Лускан Подмигни и ущипни Бармен

BEGIN ~BART2E03~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @3
  IF ~~ THEN REPLY @1 DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @4
  IF ~~ THEN REPLY @1 DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
