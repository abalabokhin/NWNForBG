// Подвал Зеленого Грифона Стражник

BEGIN ~NW2207GR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWKnowsAboutMatch","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKnowsAboutMatch","GLOBAL",3)GlobalLT("NWKnowsAboutMatch","GLOBAL",7)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKnowsAboutMatch","GLOBAL",6)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

