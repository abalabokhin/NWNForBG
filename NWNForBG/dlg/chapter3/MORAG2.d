// Форт Илкард Форт Илкард сад в руинах Созидателей в прошлом Мораг, Рептилоид В поведении этой человекоподобной рептилии есть что-то властное и жестокое.

BEGIN ~MORAG2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @13
  IF ~~ THEN DO ~SetGlobal("MoragHostile","MYAREA",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @15
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @18
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @19
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("MoragHostile","MYAREA",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.2
  SAY @21
  IF ~~ THEN GOTO 11
END

