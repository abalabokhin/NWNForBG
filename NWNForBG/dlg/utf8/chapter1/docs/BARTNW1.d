// creator  : weidu (version 23700)
// argument : BARTNW1.DLG
// game     : .
// source   : ./override/BARTNW1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~BARTNW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY ~Я могу вам чем-нибудь помочь?~
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~EXIT
  IF ~~ THEN REPLY ~Вы не покажете, что у вас есть в продаже?~ DO ~StartStore("Inn1101",LastTalkedToBy(Myself))
~ EXIT
END
