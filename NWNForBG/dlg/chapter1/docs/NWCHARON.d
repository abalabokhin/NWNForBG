// Порт Акведуки Харон   Один из тех немногих, кого чума не коснулась. Во всяком случае, не коснулась физически. Этот человек выглядит несколько... неуравновешенным.
// Стринг над головой - Лодка готова, как всегда. Новая - аж блестит. Готова ко всему... (вздыхает) Эххх, я спустил свою жизнь в канализацию.

BEGIN ~NWCHARON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5

END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN DO ~ClearAllActions()SaveGame(2)SmallWait(5)StartCutSceneMode()StartCutScene("NWSEWERE")~ EXIT
END

// ------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @12
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @13
  IF ~~ THEN EXIT
END

