// Порт-Лласт Женщина 1 Заданий нет

BEGIN ~PEASANTF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Хотела бы я, чтоб мой муж был на вас похож!~ ~Какое миленькое нижнее бельишко.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Слегка не по погоде вы одеты, не находите?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~Пожалуйста, не размахивай тут оружием. Меня это раздражает!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Ну и красавчик у нас тут завелся!~ ~Вы потрясающая женщина! Вам нравятся крестьяне?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Не советую вам идти дальше на север, на дороге много разбойников.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Уберите оружие! Я не желаю вам зла!.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Надо вести себя очень осторожно... ходят слухи, что в этом районе водятся оборотни.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Надеюсь, ты не в Лускан направляешься. Говорят, город закрыли.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~О... ты, наверное, из этих наемников, что пришли недавно в город, да?~
  IF ~~ THEN EXIT
END
