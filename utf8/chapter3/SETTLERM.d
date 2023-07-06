// Форт-Илкард: казармы поселенцев Поселенец Этот мужчина - один из поселенцев, которые были призваны в армию для защиты форта Илкард..

BEGIN ~SETTLERM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~И зачем я здесь. Я же не солдат! Я просто крестьянин, которого мобилизовали.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Командир Дамас не выпустит нас, даже для того, чтобы попробовать спасти наши семьи.~
  IF ~~ THEN EXIT
END

