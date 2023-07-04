// Колодец Беорунна: бар Солдат-мужчина Этот человек, видимо, один из многих солдат, которые были призваны в армию Союза Лордов.

BEGIN ~CUSTOM32~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~В этом лагере делать нечего - только пить и дожидаться приказа, который отправит тебя на передовую.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Слышали новости? Осаду с форта Илкарда сняли! А меня уже чуть было тоже не отправили туда сражаться. Думаю, за такую удачу не грех и пропустить стаканчик!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)Global("ILCARD_Free","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~По лагерю ходят слухи, что форт Илкард осадило одно из этих мятежных варварских племен. Я так понимаю, что некоторых из нас скоро отправят туда, чтобы мы тоже участвовали в сражении.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 3 // from:
  SAY ~Эй, а вы ведь <CHARNAME> - герой Невервинтера! Я бы купил вам выпить, если бы в этой дыре не драли с нас так!~
  IF ~~ THEN EXIT
END

