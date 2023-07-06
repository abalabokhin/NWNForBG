// Центр Невервинтера Ярмарка Мечей   Солдат  Человек   Это один из многих солдат, которые еще сражаются, чтобы спасти Невервинтер.

BEGIN ~SOLDIER7~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ты здесь, чтобы помочь нам? Нам понадобится любая помощь. У войск Лускана численное преимущество по крайней мере десять к одному. Но я всего лишь простой солдат. Тебе нужно поговорить с Транкаром, командиром батальона.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Если бы не катапульты, сминающие наши ряды, мы бы смогли противостоять этим лусканским отбросам! Но как можно сражаться, когда тебе на голову сыплются валуны и льется кипящая смола? Именно поэтому Транкар и велел нам отступать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Этих боевых големов невозможно остановить, поверь мне! Даже Транкар не стал сражаться с этими чудовищами! Поэтому он велел отступать и привел батальон сюда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Теперь, когда големы убиты, а катапульты сломаны, у нас появился шанс победить этих лусканских собак! Надеюсь, Транкар скоро пошлет меня на задание! Враги даже не успеют понять, что случилось!~
  IF ~~ THEN EXIT
END

