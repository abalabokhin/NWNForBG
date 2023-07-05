// Гнездо нищих Лабиринты Проклятых Зомби
BEGIN ~ZOMB1223~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)~ THEN BEGIN 0 // from:
  SAY ~Слушайте меня внимательно, мертвецы! Вы хотели использовать меня, принести меня в жертву ради заклинания! Я использовала вас, чтобы освободиться!~ [GULNAN50]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 1 // from:
  SAY ~Вы присоединитесь к моим легионам смерти! У меня были видения! Чешуйчатые будут здесь править! Я захвачу все!~ [GULNAN51]
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 2 // from:
  SAY ~Чума ослабляет вас, но укрепляет мою армию! Это благословение! Дар! Вы даже представить себе не можете, какой это дар!~ [GULNAN52]
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 3 // from:
  SAY ~Вы не можете отрицать, что чешуйчатые будут править миром! Видите мою силу?! Она невероятна, больше, чем у самого Мерршаулка!~ [GULNAN53]
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 4 // from:
  SAY ~Идите, если должны, но вы умрете! Видения никогда не лгут! Я вижу пришествие глаза! Глаза!~ [GULNAN54]
  IF ~~ THEN EXIT
END

