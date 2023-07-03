// Колодец Беорунна: улица Член племени Утгардтов Женщина Метки на одежде этой женщины говорят о том, что она - варвар из утгардтского племени Черного Льва.

BEGIN ~UTHARD2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Я плюю на тебя, Клятвопреступник! Пусть дух Ролгана всегда преследует тебя за  нарушение данного тобой обещания!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Ролган обязан тебе своей жизнью, <CHARNAME>. Да пребудут с тобой слава и почет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Как мы можем заключать союз с мясниками, которые уничтожают наших воинов, прикрывшись именем справедливости?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 3 // from:
  SAY ~Я не пойду в город. Солдаты смотрят на меня с ненавистью и подозрением. У них нет чести.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 4 // from:
  SAY ~Воины Черного Льва будут защищать священную землю Колодца Беорунна от лусканских разрушителей.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalGT("ZokanJob","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY ~Юсам сказал нам, что копья племени Лося больше никогда не полетят в сторону Союза Лордов. Возможно теперь солдаты из лагеря не будут так сильно ненавидеть нас.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalLT("ZokanJob","GLOBAL",2)~ THEN BEGIN 6 // from:
  SAY ~Мы гордый народ, рожденный Черный Львом! Солдаты называют нас дикарями. Не наша вина, что племя Лосей присоединилось к Лускану!~
  IF ~~ THEN EXIT
END

