// Лускан Башня хозяина 7-этаж Заключенный Большие синяки, порезы и другие следы пыток говорят о том, что этот мужчина - заключенный.

BEGIN ~PRISNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY ~Все они отправились ловить меня, думают, я ничего не знаю, но я-то знаю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 1 // from:
  SAY ~Это те, которые бросили меня сюда, все они сговорились убрать меня, чтобы я им не мешал.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 2 // from:
  SAY ~Скоро я отомщу... Очень скоро.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 3 // from:
  SAY ~Никогда не стоит недооценивать силу ненависти, она согревает человека изнутри.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 4 // from:
  SAY ~Меня окружают лишь лжецы и предатели, они крадут мои мысли, чтобы заставить меня страдать! Но у меня есть тайные мысли, которые им никогда не найти!~
  IF ~~ THEN EXIT
END 

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 5 // from:
  SAY ~Я вижу, они, наконец, пришли убить меня, заткнуть меня, избавиться от своей проблемы. Но нет, этого я им не позволю, они у меня захлебнутся в собственной крови.~
  IF ~~ THEN EXIT
END

