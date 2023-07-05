// Невервинтер Таверна Слухи

BEGIN ~RUMORNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Говорят, у аристократов Чернозерья есть лекарство от мора, но они не хотят поделиться им с нами, простыми жителями! Хотя, вообще, много что говорят.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Говорят, из тюрьмы в районе полуострова был совершен побег. Интересно, насколько эти слухи правдивы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~Эти богатеи в Чернозерье; один из них копил продовольствие! Говорили, что у них есть лекарство от чумы, но все, что у них есть - только жадность!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Говорят, Гнездо Нищих кишит зомби, зараженными чумой!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Ополчение больше не в силах поддерживать порядок! Стражникам в Сердце города даже все равно, что из тюрьмы в районе полуострова был совершен побег.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~В портовом районе царит анархия! Говорят, преступники захватили его, и теперь городская стража боится даже заходить туда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Лорд Нашер не появлялся уже несколько недель. И кто посмеет обвинить его? Здесь всюду пахнет горелым мясом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 7 // from:
  SAY ~Хельмитов пропустили в город чтобы они основали в нем свое святилище. Говорят, они продолжают раздавать благословения. Однако, вряд ли это поможет жителям Невервинтера.~
  IF ~~ THEN EXIT
END

