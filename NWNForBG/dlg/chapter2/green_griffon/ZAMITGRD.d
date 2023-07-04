// Северная дорога, таверна Зеленый грифон, уровень 1 Охрана Замитры. Эта женщина-воин выглядит так, будто она готова немедленно вступить в бой с толпами орков и гоблинов.

BEGIN ~ZAMITGRD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InMyArea("Zamitra")!Dead("Zamitra")RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Я воин Черной Гвардии Замитры! Можете поговорить с ней, если только она в настроении.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   InMyArea("Zamitra")!Dead("Zamitra")RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Прочь отсюда, мужчина! Может, хозяйка Замитра и стерпит ваши косые взгляды, но уж я точно нет!~ ~Прочь отсюда, женщина! Может, хозяйка Замитра и стерпит ваши косые взгляды, но уж я точно нет!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !InMyArea("Zamitra")Global("SexWithZamitra","GLOBAL",1)Global("PlayerHasZgem","MYAREA",0)~ THEN BEGIN 12 // from:
  SAY ~Думаю, утром хозяйка будет довольна. Она всегда добивается от мужчин того, чего хочет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN BEGIN 3 // from:
  SAY ~Замитра совсем обезумела. Наверняка какой-то мужчина виноват. Я ненавижу мужчин.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 4 // from:
  SAY ~У хозяйки Замитры украли драгоценный камень. Это все из-за меня!~
  IF ~~ THEN EXIT
END
