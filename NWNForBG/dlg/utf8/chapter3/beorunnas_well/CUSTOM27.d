// Колодец Беорунна: бар Простолюдин Гном Женщина Этот гном - один из многих обывателей, которые приехали в Колодец Беорунна, чтобы присоединиться к работе Союза Лордов.

BEGIN ~CUSTOM27~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Это не лагерь, а черт знает что! Дикари из Утгардта на плато и идиоты, шляющиеся по улицам!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Может, вы и не самый ловкий солдат в лагере, но вы точно знаете, как делать свою работу, правильно?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~Мне говорили, что армией Лускана управляют маги из Братства Таинств. Хорошо, что и на нашей стороне есть такие сильные маги, как в вашем отряде.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 3 // from:
  SAY ~(вздыхает) Можно было бы пустить тебя на ночь ко мне в кровать, красава, но такие герои, как ты, слишком ценны, чтобы держать их в спальне в такие времена.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 4 // from:
  SAY ~Все только и говорят о том, что вы сделали для Невервинтера... Но никто ни разу не упомянул, насколько вы прекрасны!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 5 // from:
  SAY ~Вы, должно быть, из наемников, которых Генд нанял для того, чтобы найти Слова Власти. Желаю вам удачи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 6 // from:
  SAY ~Говорят, что Аарин Генд отправил вас на поиски Слов Власти. Жаль - <MALEFEMALE> вроде вам может очень пригодиться нам на фронте.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 7 // from:
  SAY ~Завтра я отправляюсь на фронт. Может быть, мне представится шанс проявить себя и стать героем, как вы!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8 // from:
  SAY ~Только хорошенькая леди может напомнить солдатам перед отправкой на фронт, за что они, собственно, сражаются.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 9 // from:
  SAY ~Боже мой! Привет, красавчик! Ты здесь, чтобы спасти нас всех от этой противной армии Лускана, да?~
  IF ~~ THEN EXIT
END

