// Центр Невервинтера   Ярмарка Мечей  Наемник Наемники обычно держатся довольно холодно и отстраненно, и этот эльф - не исключение. Похоже, он участвовал во многих битвах по разным поводам.

BEGIN ~MERCNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Ха-ха! Только что из Маски Лунного Камня? Проверь, ничего не потерялось?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Мой двоюродный брат был такой же тормоз, как ты. Он был наемником... но захлебнулся в луже.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~Не размахивай своим оружием, или уж примени его...~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Выглядишь ты дружелюбно... Но мы никого не нанимаем, пока все не закончится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Мы никого не нанимаем. Уходи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~Теперь это место скорби. Нельзя уехать, и сделать ничего нельзя. Только ждать пока нас заберет Воющая Смерть.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Не стой так близко. О Воющей Смерти узнаешь, только когда будет уже слишком поздно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 7 // from:
  SAY ~Вы, святоши, должны сидеть в своей церкви и не казать носа на улицу. От вас никакой помощи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 8 // from:
  SAY ~Извини, мы не нанимаем волшебников. Уходи~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)!Class(LastTalkedToBy(Myself),MAGE_ALL)!Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 9 // from:
  SAY ~Мы бы не наняли тебя, даже если бы у нас были полны карманы золота... А они как раз пустые.~
  IF ~~ THEN EXIT
END

