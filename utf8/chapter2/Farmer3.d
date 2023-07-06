// Южная дорога 2  Фермер Заданий нет

BEGIN ~FARMER3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedToGT(5)~ THEN BEGIN 0 // from:
  SAY ~Вам, что, больше нечего делать?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)~ THEN BEGIN 2 // from:
  SAY ~Клянусь, я видел недавно привидение, так что теперь я все время держу наготове факел и хорошую дубину. Пока оно держится подальше от моего заднего двора, меня это не волнует.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 3 // from:
  SAY ~Ты бы лучше на ферму к Питу О'Дилу сходил, у него, скажу тебе по-секрету, дочка на выданье, отличная деваха.~ ~Ты бы лучше на ферму к Инге сходила, у него, скажу тебе по-секрету, сынок - что надо парень, тебе понравится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 4 // from:
  SAY ~Нет времени болтать - нужно еще один участок засеять. Но я дам тебе один совет: поосторожней на дорогах. Разбойники могут отнять у тебя не только золото.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 5 // from:
  SAY ~Если вы в Чарвуд направляетесь, то лучше поворачивайте назад, там привидений всяких полно. Из сумрачного леса на моем веку еще никто не возвращался, точно тебе говорю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 6 // from:
  SAY ~Я простой фермер. Я ничего не знаю. И незачем топтать мои посевы.~
  IF ~~ THEN EXIT
END
