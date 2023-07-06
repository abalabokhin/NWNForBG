// Святилище Маугрима Маугрим  Тело человека, который напустил чуму на Невервинтер, уничтожено смертью и гниением, а злые силы, которым он служил, разъедают его изнутри.

// Идиоты! Меня нельзя так просто убить! [MAUGR055]

// Я возрождаюсь! Королева Древних дала мне бессмертие! [MAUGR054]

// Нет, нет, этого не может быть! А как же бессмертие! Нет!! НЕ-Е-Е-ЕТ!!!

BEGIN ~MAUGRIM2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN EXIT
END

