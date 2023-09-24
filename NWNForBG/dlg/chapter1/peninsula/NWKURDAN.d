// Полуостров Казематы   Курдан Фенкт полуорк   Этот могучий представитель породы полуорков готов к драке... любой драке.

//Да, господин. Мы ждем их здесь. [NWKURD50]

// Рррр... Вы умеете сражаться. Я сдаюсь. [KURDAN51]

BEGIN ~NWKURDAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @19
  IF ~~ THEN DO ~AddexperienceParty(20000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @20
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @21
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @24
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @25
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 7
END

