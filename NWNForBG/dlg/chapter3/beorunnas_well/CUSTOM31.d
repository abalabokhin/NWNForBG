// Колодец Беорунна: бар Солдат-женщина Эта женщина, видимо, одна из многих солдат, которые были призваны в армию Союза Лордов.

BEGIN ~CUSTOM31~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Говорят, что война идет плохо. Похоже, что племя Лосей из Утгардта присоединилось к армии Лускана. Интересно, когда мой отряд призовут на передовую для подкрепления?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Слышали хорошие новости? Друид Юсам говорит, что нам больше не надо беспокоиться из-за этого лосиного племени варваров!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Я не знаю, что хуже - захватчики из Лускана или эти кровожадные дикари из Утгардта, с которыми нам приходится сражаться бок о бок.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Что вы здесь делаете? Мне казалось, что такой герой, как вы, не станет тратить свое время в переполненной дыре, как эта.~
  IF ~~ THEN EXIT
END

