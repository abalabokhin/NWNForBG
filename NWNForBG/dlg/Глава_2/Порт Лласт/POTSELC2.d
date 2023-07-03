// creator  : weidu (version 23700)
// argument : POTSELC2.DLG
// game     : .
// source   : ./override/POTSELC2.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~POTSELC2~

IF ~  NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в мою лавку! Я здесь торгую микстурами. Хотите взглянуть на мои товары?~
  IF ~~ THEN REPLY ~Да, пожалуй. Покажите, что у вас есть.~ GOTO 2
  IF ~~ THEN REPLY ~О, нет-нет, как-нибудь в другой раз.~ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)~ THEN BEGIN 1 // from:
  SAY ~Вы вернулись! Хотите взглянуть на мои микстуры?~
  IF ~~ THEN REPLY ~Да, пожалуй.~ GOTO 2
  IF ~~ THEN REPLY ~Нет, как-нибудь в другой раз.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~Уверен, вы останетесь довольны, <SIRMAAM>!~
  IF ~~ THEN DO ~StartStore("PotSelC2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY ~Надеюсь, мы еще увидимся!~
  IF ~~ THEN EXIT
END
