// Гнездо нищих Дом Крестал Дварф Этот молодой гном выглядит неуверенно и явно нервничает. Он, похоже, видел в последнее время слишком много смертей, и слишком много ходячих мертвецов.

BEGIN ~NWKRESTL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)!Dead("NWDRAWL")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY @18
  IF ~~ THEN DO ~SetGlobal("NWKnowBandit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @19
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @20
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 8
END

// -------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)!Dead("NWDRAWL")~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWDRAWL")~ THEN BEGIN 12 // from:
  SAY @22
  IF ~~ THEN EXIT
END
