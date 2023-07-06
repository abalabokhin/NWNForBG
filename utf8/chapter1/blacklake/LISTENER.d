// Невервинтер Чернозерье Зритель Хоть этот человек и выглядит озабоченным, его лицо не выглядит так измождено, как лица жителей других кварталов. Его, изолированного в Чернозерье, чума напрямую не коснулась.

BEGIN ~LISTENER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)!Race(LastTalkedToBy(Myself),DWARF)!Race(LastTalkedToBy(Myself),HALFORC)~ THEN BEGIN 0 // from:
  SAY ~Ой, не надо оружием размахивать, ладно? Меня не испугаешь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)OR(2)Race(LastTalkedToBy(Myself),DWARF)Race(LastTalkedToBy(Myself),HALFORC)~ THEN BEGIN 1 // from:
  SAY ~Как стража вас пропустила в Чернозерье? Вы же <RACE>, так ведь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 2 // from:
  SAY ~О, убирайтесь подальше. Наверняка вы чуму распространяете.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)!Dead("Meldanen")~ THEN BEGIN 3 // from:
  SAY ~Э... нет, нет, я ничего плохого не знаю о Мелданене. И не надо больше меня об этом спрашивать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)Dead("Meldanen")~ THEN BEGIN 4 // from:
  SAY ~Что ж, это, конечно, к лучшему! Этот Мелданен мешал всем нам!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Dead("Formosa")~ THEN BEGIN 5 // from:
  SAY ~Можно было не сомневаться в том, что эта дурочка Формоса допрыгается со своими рассказами о волшебнике. Ц-ц-ц...~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)!Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 6 // from:
  SAY ~Чего она вообще хочет? Раздать все богатство колдуна бедным? Смехотворно!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 7 // from:
  SAY ~Вы же не думаете, что Формоса действительно имеет какое-то отношение к смерти колдуна, правда? Нет, нет, это невероятно...~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)!Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 8 // from:
  SAY ~Чего она вообще хочет? Раздать все богатство колдуна бедным? Смехотворно!~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 9 // from:
  SAY ~Говорят, в доме у волшебника было множество всяких злобных тварей. Я думаю, с ним вовремя покончили!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)Dead("Formosa")~ THEN BEGIN 10 // from:
  SAY ~Итак... ааа... Формоса мертва, вот как? Э... прекрасная работа, <SIRMAAM>...~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)Dead("Formosa")~ THEN BEGIN 11 // from:
  SAY ~Я не хочу кончить, как Формоса. Нет уж, <SIRMAAM>, только не я.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)!Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 12 // from:
  SAY ~Поверить не могу, что она что-то замышляет против волшебника! Добьется только того, что всех нас убьют!~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 13 // from:
  SAY ~Мелданен мертв! Вы слышали? Невероятно!~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)Dead("Formosa")~ THEN BEGIN 14 // from:
  SAY ~Формоса мертва! Какой ужас!!~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)!Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 15 // from:
  SAY ~Примите добрый совет: не обращайте внимания на Формосу и ее бредни. Она только принесет нам всем большие неприятности, вот это точно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)Dead("Meldanen")!Dead("Formosa")~ THEN BEGIN 16 // from:
  SAY ~О, боже... это все навлечет на нас чуму, правда же?~
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 17 // from:
  SAY ~Воющая Смерть унесла столько жизней. Какой ужас.~
  IF ~~ THEN EXIT
END

