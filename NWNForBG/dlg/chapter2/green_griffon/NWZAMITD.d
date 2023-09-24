// Северная дорога, таверна Зеленый грифон, уровень 1 Охрана Замитры. Эта женщина-воин выглядит так, будто она готова немедленно вступить в бой с толпами орков и гоблинов.

BEGIN ~NWZAMITD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InMyArea("NWZAMITA")!Dead("NWZAMITA")RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   InMyArea("NWZAMITA")!Dead("NWZAMITA")RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !InMyArea("NWZAMITA")Global("SexWithZamitra","GLOBAL",1)Global("PlayerHasZgem","MYAREA",0)~ THEN BEGIN 12 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END
