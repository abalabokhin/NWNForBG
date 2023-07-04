// Порт-Лласт Винторп и Герцог Человек мужчина Заданий нет 

BEGIN ~WINTORP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Аристократы из района Черного Озера закрылись ото всех. Там происходит что-то странное, попомните мои слова!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Говорят, благородных из Чернозерья поставили на место. Хотелось бы верить. Они ни о ком, кроме себя не думают.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Говорят, по улицам Гнезда Нищих бродят трупы умерших от мора. И они нападают и пожирают живых!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Мертвецы восстали в Гнезде Нищих! Сейчас их уничтожили, но кто знает, что будет дальше!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 4 // from:
  SAY ~Что ж, чудесно. Еще один тупой бродяга <RACE>. Разносчики мора, вот кто вы все такие!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Ополчение больше не в силах поддерживать порядок! Стражникам в Сердце города даже все равно, что из тюрьмы в районе полуострова был совершен побег.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Говорят, много народу погибло во время бунта в тюрьме на полуострове. Хорошо, что все закончилось. Хватит с нас и чумы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)~ THEN BEGIN 7 // from:
  SAY ~Один совет: будьте осторожны. Если вы заразитесь Воющей Смертью, среди этих горящих трупов вскоре окажется и *ваш*.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,6)~ THEN BEGIN 8 // from:
  SAY ~Вы ведь не заодно с теми портовыми пиратами, правда? Мне казалось, раньше они  попадались только в районе островов Нелантера. Наверное, я многого не знаю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)~ THEN BEGIN 9 // from:
  SAY ~Вы должно быть с гор... может быть, даже с Хребта Мира? Мор еще туда не добрался?~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 10 // from:
  SAY ~Думаете, это ваше оружие способно остановить Воющую Смерть? С таким же успехом можете попробовать плюнуть в Анаврок!~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~В портовом районе царит анархия! Говорят, преступники захватили его, и теперь городская стража боится даже заходить туда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Говорят, сейчас в Доках стало поспокойнее. Наверное, мне стоит побывать там, нет уже никаких сил выносить запах горящей плоти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 13 // from:
  SAY ~Хмм. Советую здесь не пользоваться магией, <SIRMAAM>. Некоторые обвиняют чародеев в появлении мора! Они могут изгнать магов в Озеро Мертвых. Может быть.~
  IF ~~ THEN EXIT
END

