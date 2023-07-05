// Колодец Беорунна: улица Простолюдин Мужчина Этот человек - один из многих обывателей, которые приехали в Колодец Беорунна, чтобы помочь солдатам в лагере получить все, что нужно.

BEGIN ~COMMONW3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Прекрасно - еще один наемник явился, чтобы опустошить сундуки Генда~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Завтра я отправляюсь на фронт войны против Лускана, и у меня нет времени на таких, как вы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~Сначала Арибет предает нас, а потом приходится заключать союз с такими, как вы. Жуткие времена!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Я знаю, что нам сейчас пригодится любая помощь, но я не доверяю этим утгардтам с плато.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Поверить не могу, что Арибет предала нас!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Простите, я не могу сейчас разговаривать. Мне нужно пойти собрать вещи - завтра я отправляюсь на фронт.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Вы не похожи на обычный сброд, который служит Союзу Лордов. Всегда приятно иметь на борту хоть одного профессионала!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Вы, должно быть, из наемников, которых Генд нанял для того, чтобы найти Слова Власти. Желаю вам удачи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8 // from:
  SAY ~Здравствуйте, мисс. Что такая симпатичная девушка делает в этой вонючей дыре, замаскированной под лагерь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 9 // from:
  SAY ~Похоже, ты парень из тех, на кого можно положиться. Вы здесь, чтобы найти эти Слова Власти, о которых мне говорили?~
  IF ~~ THEN EXIT
END

