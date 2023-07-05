// Колодец Беорунна: бар Простолюдин Мужчина Этот человек - один из многих обывателей, которые приехали в Колодец Беорунна, чтобы помочь солдатам в лагере получить все, что нужно.

BEGIN ~CUSTOM26~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Это не лагерь, а черт знает что! Дикари из Утгардта на плато и идиоты, шляющиеся по улицам!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Эй, здесь, в лагере, безопасно. Не нужно ходить тут и размахивать оружием. Приберегите его для битвы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~Похоже, вы уже готовы пуститься на поиски предательницы Арибет - вы вооружены и все такое!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 3 // from:
  SAY ~Здравствуйте, мисс. Что такая симпатичная девушка делает в этой вонючей дыре, замаскированной под лагерь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 4 // from:
  SAY ~Похоже, ты парень из тех, на кого можно положиться. Вы здесь, чтобы найти эти Слова Власти, о которых мне говорили?~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 5 // from:
  SAY ~Вы, должно быть, из наемников, которых Генд нанял для того, чтобы найти Слова Власти. Желаю вам удачи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 6 // from:
  SAY ~Простите, я не могу сейчас разговаривать. Мне нужно пойти собрать вещи - завтра я отправляюсь на фронт.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 7 // from:
  SAY ~Я знаю, что нам сейчас пригодится любая помощь, но я не доверяю этим утгардтам с плато.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8 // from:
  SAY ~Только хорошенькая леди может напомнить солдатам перед отправкой на фронт, за что они, собственно, сражаются.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 9 // from:
  SAY ~Прекрасно - еще один наемник явился, чтобы опустошить сундуки Генда.~
  IF ~~ THEN EXIT
END

