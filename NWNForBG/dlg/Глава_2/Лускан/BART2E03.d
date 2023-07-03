// Лускан Подмигни и ущипни Бармен

BEGIN ~BART2E03~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY ~Будьте повежливее с гостями. Все приходят сюда, чтобы расслабиться. Ну так что, выпить хотите?~
  IF ~~ THEN REPLY ~Да.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Нет.~ EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY ~Будьте осмотрительны, не пейте много. Вы же не хотите ковылять по Лускану, ничего не соображая. Ну так что, выпить хотите?~
  IF ~~ THEN REPLY ~Да.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Нет.~ EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY ~Пока вы готовы покупать, вам здесь рады. Ну так что, выпить хотите?~
  IF ~~ THEN REPLY ~Да.~ DO ~StartStore("Bart2e03",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Нет.~ EXIT
END
