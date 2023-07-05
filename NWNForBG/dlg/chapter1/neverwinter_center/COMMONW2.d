// creator  : weidu (version 24600)
// argument : COMMONW2.DLG
// game     : .
// source   : ./DATA/NWGEN3.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~COMMONW2~

IF ~  RandomNum(9,1)
~ THEN BEGIN 0 // from:
  SAY ~Ёто не лагерь, а форменный бардак! ƒикари-утгардты с плато и идиоты, шл€ющиес€ по улицам! Ё... это € не о вас.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,2)
~ THEN BEGIN 1 // from:
  SAY ~ћожет, вы и не самый ловкий солдат в лагере,, но вы точно знаете, как делать свою работу, правильно?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,3)
~ THEN BEGIN 2 // from:
  SAY ~Ёй, здесь, в лагере, безопасно. Ќе нужно ходить тут и размахивать оружием. ѕриберегите его дл€ битвы.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,4)
~ THEN BEGIN 3 // from:
  SAY ~ѕохоже, вы уже готовы пуститьс€ на поиски предательницы јрибет - вы вооружены и все такое!~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,5)
~ THEN BEGIN 4 // from:
  SAY ~ћожет, вы знаменитый герой и все такое, но вам совсем не об€зательно все врем€ расхаживать по лагерю с обнаженным оружием!~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,6)
~ THEN BEGIN 5 // from:
  SAY ~¬от это неожиданность - еще один <RACE> в этих кра€х - и к тому же такой знаменитый, как вы.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,7)
~ THEN BEGIN 6 // from:
  SAY ~ƒолжно быть, √енд платит вам целое состо€ние. ћне говорили, что ни один герой не станет работать за гроши.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,8)
~ THEN BEGIN 7 // from:
  SAY ~я знаю, что нам сейчас пригодитс€ люба€ помощь, но € не довер€ю этим утгардтам с плато.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 8 // from:
  SAY ~“олько хорошенька€ леди может напомнить солдатам перед отправкой на фронт, за что они, собственно, сражаютс€.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 9 // from:
  SAY ~“ы здесь, чтобы спасти нас всех от этой противной армии Ћускана, да?~ ~Ѕоже мой! ѕривет, красотул€! “ы здесь, чтобы спасти нас всех от этой противной армии Ћускана, да?~
  IF ~~ THEN EXIT
END
