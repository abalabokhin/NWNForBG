// Лунный лес логово огненного великана  Заключенный Эльф Женщина  Этот эльф, несомненно, узник огненных великанов.

// IF
//	!Range(Player1,20)
//	!Allegiance(Myself,ENEMY)
//	InMyArea(Player1)
//	CombatCounter(0)
//	GlobalTimerExpired("MyFollow","LOCALS")
// THEN
//	RESPONSE #100
//		SetGlobal("Follow","LOCALS",1)
//		MoveToObjectFollow(Player1)
//		Continue()
// END

BEGIN ~PRISNW4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Prisnw4Follow","MYAREA",1)~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @13
  IF ~~ THEN DO ~Enemy()~ GOTO 4
END

