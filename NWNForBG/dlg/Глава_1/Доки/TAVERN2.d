// Доки Невервинтера Таверна Сиди Посетитель таверны Человек мужчина Заданий нет Алкаш 

BEGIN ~TAVERN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Кто станет моим другом? Тот, кто купит мне еще ст-таканчик, вот кто. Ха-хааааа!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~За всех моих друзей! Да, за всех вас... (ик!) Я люблю вас, парни...~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Кто хочет спеть! Ну что ж, давайте, а я не буду. (ик!) Ха-хааааа...~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Вот хорошее место, да... (ик!). Пить весь день... всю ночь... напролет. Ну да ладно.~
  IF ~~ THEN EXIT
END

