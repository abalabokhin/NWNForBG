// Чернозерье Поместье Рамботтома Томс Рамботтом   Этот аристократ, похоже, обладает весьма буйным нравом и привык всегда добиваться своего.

// DisplayStringHead(Myself,000000) Кто ты, мерзкое создание?! Говори! Или я позову стражников, чтобы они вышвырнули тебя!

BEGIN ~NWTHOMS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
    SAY @8
  IF ~~ THEN DO ~ChangeClass(Myself,FIGHTER)SetGlobal("NWThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NWThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @10
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @11
  IF ~~ THEN EXIT
END

