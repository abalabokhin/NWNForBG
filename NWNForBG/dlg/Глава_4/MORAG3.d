// Невервинтер Святая святых Камня-Источника Мораг (проекция), Рептилоид  Даже на проекции видно, какая властная и жестокая эта Мораг, королева Древних.

// Убить теплокровных! Уничтожить рабов! [MORAG70]

BEGIN ~MORAG3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Мы владыки, Созидатели, Древние. Мы долго спали, и пока нас не было, слабые расы набрались наглости!~ [MORAG71]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Рабы ведут себя, словно короли. Они строят города и основывают целые нации, забирая себе то, что принадлежит нам!~ [MORAG72]
  IF ~~ THEN EXTERN ~ANCIENTC~ 1
END

IF ~~ THEN BEGIN 2 // from: ANCIENTC.1
  SAY ~Хэдралин и рабы Слов предали нас, оставив нас в нашей ссылке в Камне-Источнике.~ [MORAG73]
  IF ~~ THEN EXTERN ~ANCIENTC~ 2
END

IF ~~ THEN BEGIN 3 // from: ANCIENTC.2
  SAY ~Настало время пробуждения! Созидатели снова восстанут и отомстят миру, который слишком поспешил забыть нас!~ [MORAG74]
  IF ~~ THEN EXTERN ~ANCIENTC~ 3
END

IF ~~ THEN BEGIN 4 // from: ANCIENTC.3
  SAY ~Огненная буря уничтожит бесконечную зиму! Пламя нашего возрождения полностью поглотит город рабов!~ [MORAG75]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Верховные жрецы готовят последние ритуалы, которые откроют Камень-Источник и освободят нас из этой тюрьмы! Скоро...~ [MORAG76]
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~В чем дело? Рабы осмелились войти в наш мир!~ [MORAG77]
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Убить теплокровных! Уничтожить рабов!~ [MORAG70]
  IF ~~ THEN DO ~SetGlobal("LiizardHostile","MYAREA",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

