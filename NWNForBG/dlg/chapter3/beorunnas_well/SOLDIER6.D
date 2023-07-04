// Колодец Беорунна: Казармы наемников Солдат-мужчина Этот человек, видимо, один из многих солдат, которые были призваны в армию Союза Лордов

BEGIN ~SOLDIER6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Видели тело утгардта на колу возле храма? Это заставит этих дикарей присмиреть!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)Global("RolganConvicted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Эти утгардты просто банда варваров! Один из них убил Гриффа, представляешь!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 2 // from:
  SAY ~Ролкид просто замечательный генерал! С его военными планами и такими героями, как вы на нашей стороне, мы быстро разобьем этих собак из Лускана!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 3 // from:
  SAY ~Слава богам, что осада форта Илкард закончилась, а то меня могли отправить на передовую, чтобы помогать защищать крепость!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 4 // from:
  SAY ~Мне говорили, что форт Илкард осадило племя Лосей из Утгардта! Интересно, отправят ли меня туда, чтобы помочь защитить форт?~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 5 // from:
  SAY ~Три построения в день и постоянный доход - по мне, быть солдатом это не так уж плохо. Разумеется, если меня не убьют.~
  IF ~~ THEN EXIT
END

