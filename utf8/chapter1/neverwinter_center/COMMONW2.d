// creator  : weidu (version 24600)
// argument : COMMONW2.DLG
// game     : .
// source   : ./DATA/NWGEN3.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~COMMONW2~

IF ~  RandomNum(9,1)
~ THEN BEGIN 0 // from:
  SAY ~Это не лагерь, а форменный бардак! Дикари-утгардты с плато и идиоты, шляющиеся по улицам! Э... это я не о вас.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,2)
~ THEN BEGIN 1 // from:
  SAY ~Может, вы и не самый ловкий солдат в лагере,, но вы точно знаете, как делать свою работу, правильно?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,3)
~ THEN BEGIN 2 // from:
  SAY ~Эй, здесь, в лагере, безопасно. Не нужно ходить тут и размахивать оружием. Приберегите его для битвы.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,4)
~ THEN BEGIN 3 // from:
  SAY ~Похоже, вы уже готовы пуститься на поиски предательницы Арибет - вы вооружены и все такое!~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,5)
~ THEN BEGIN 4 // from:
  SAY ~Может, вы знаменитый герой и все такое, но вам совсем не обязательно все время расхаживать по лагерю с обнаженным оружием!~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,6)
~ THEN BEGIN 5 // from:
  SAY ~Вот это неожиданность - еще один <RACE> в этих краях - и к тому же такой знаменитый, как вы.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,7)
~ THEN BEGIN 6 // from:
  SAY ~Должно быть, Генд платит вам целое состояние. Мне говорили, что ни один герой не станет работать за гроши.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,8)
~ THEN BEGIN 7 // from:
  SAY ~Я знаю, что нам сейчас пригодится любая помощь, но я не доверяю этим утгардтам с плато.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 8 // from:
  SAY ~Только хорошенькая леди может напомнить солдатам перед отправкой на фронт, за что они, собственно, сражаются.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 9 // from:
  SAY ~Ты здесь, чтобы спасти нас всех от этой противной армии Лускана, да?~ ~Боже мой! Привет, красотуля! Ты здесь, чтобы спасти нас всех от этой противной армии Лускана, да?~
  IF ~~ THEN EXIT
END
