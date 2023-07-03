// Сердце города Зал Справедливости  Сиделка Человек  Лицо этой молодой женщины усталое и изнуренное от постоянного ухаживания за ранеными.

BEGIN ~NURSE3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Этот человек истекает кровью - простите, вам я не могу помочь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Поговорите со жрецом, у меня сейчас нет времени, извините.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Пожалуйста, выйдите, пациенты должны поспать!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Мне бы очень хотелось помочь вам, но нужно вернуться к своим пациентам.~
  IF ~~ THEN EXIT
END

