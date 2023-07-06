// Чарвуд, таверна - Странный человек (культист) раса - человек. Положить в инвентарь CharwJ - Дневник Культиста из Чарвуда
// Этот человек явно очень возбужден, такое ощущение, что он в любой момент может сорваться. Он как будто постоянно пребывает в замешательстве и пытается проникнуть в истинную суть вещей. Одет он не так, как простые деревенские жители. Он точно не из Чарвуда.

BEGIN ~CULTISTC~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @8
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @18
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.1
  SAY @19
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @22
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 2
END
