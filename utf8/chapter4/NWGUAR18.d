// Центр Невервинтера   Сердце города  Страж замка Невервинтер Человек, мужчина  Это один из многих солдат, которые еще сражаются, чтобы спасти Невервинтер.

BEGIN ~NWGUAR18~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Мы стараемся не пускать гражданское население на улицы, но вы можете идти, куда захотите.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Слава богам, вы здесь! Может быть, вы сможете спасти нас от захватчиков из Лускана!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Вся южная часть города занята врагом. Городской центр - единственное безопасное место в Невервинтере... Пока.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Половина солдат моего взвода были убиты, когда враг проломил стены. Будь проклята эта предательница Арибет - надеюсь, когда все закончится, она заплатит за все, что сделала!~
  IF ~~ THEN EXIT
END

