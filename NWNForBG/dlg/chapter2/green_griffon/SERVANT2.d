// Северная дорога, таверна Зеленый грифон, уровень 1 Прислуга. Полурослик Похоже, этот полурослик очень занят, выполняя поручения человека в углу трактира.

BEGIN ~SERVANT2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)~ THEN BEGIN 0 // from:
  SAY ~Вы... это ведь вы выиграли состязание хозяина Мутамина? Э... поздравляю, <LADYLORD>. Вам есть чем гордиться.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 1 // from:
  SAY ~Я тут просто прислуживаю, <LADYLORD>. Я сейчас же пришлю вам официантку.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 2 // from:
  SAY ~Я прислуживаю в этом трактире, <LADYLORD>. Извините, но мне надо работать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 3 // from:
  SAY ~*Вздыхает*. В этой таверне ведь не так плохо... Просто мне хотелось бы вернуться в Лускан и заняться своим ремеслом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 4 // from:
  SAY ~Не приставайте ко мне. Я служу у хозяина Мутамина, и у меня куча работы на сегодня.~
  IF ~~ THEN EXIT
END
