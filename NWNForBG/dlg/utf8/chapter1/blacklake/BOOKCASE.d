// creator  : weidu (version 23700)
// argument : BOOKCASE.DLG
// game     : .
// source   : ./override/BOOKCASE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~BOOKCASE~

IF ~  Global("DoorOpened","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY ~Вы замечаете что это не простой шкаф, но, как вы не пытаетесь сдвинуть его с места, у вас ничего не получается. По всей видимости нужно произнести какое-то слово или прочитать заклинание.~
  IF ~  OR(2)GlobalGT("TelmaSecret","GLOBAL",0)GlobalGT("PankinSecret","GLOBAL",0)~ THEN REPLY ~Произнести слово "Хэлуэт".~GOTO 1
  IF ~~ THEN REPLY ~Произнести слово "Невер".~ GOTO 2
  IF ~~ THEN REPLY ~Произнести слово "Торил".~ GOTO 2
  IF ~~ THEN REPLY ~Произнести слово "Мирабар ".~ GOTO 2
  IF ~~ THEN REPLY ~Произнести слово "Роматар".~ GOTO 2
  IF ~  HaveSpell(WIZARD_KNOCK)~ THEN REPLY ~Прочитать заклинание "Стук".~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~Шкаф отодвигается в сторону, перед вами окрывается проход с лестницей.~
  IF ~~ THEN DO ~SetGlobal("DoorOpened","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.3 0.2 0.1
  SAY ~Ничего не происходит.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY ~Ничего не происходит.~ [EFF_M56]
  IF ~~ THEN DO ~RemoveSpell(WIZARD_KNOCK)~ EXIT
END
