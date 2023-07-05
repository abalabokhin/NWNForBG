// Доки Таверна Сиди Ависта  человек  Эта женщина вежливо улыбается, но в то же время похлопывают по рукояти меча.

BEGIN ~AVISTA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ведите себя прилично внутри. Нам совсем незачем тащить внутрь хаос с улиц.~ [AVISTA52]
  IF ~~ THEN REPLY ~Много ли нынче клиентов?~ GOTO 1
  IF ~~ THEN REPLY ~Вы не слышали ничего странного?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ой, не говори, страсть как много! Я с ног сбиваюсь! Всем почему-то приспичило попасть внутрь.~
  IF ~~ THEN REPLY ~Вы не слышали ничего странного?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Пока ничего, и они всегда предупреждают того, кто охраняет дверь. Нынче ночью будет аукцион. Что-то хорошее должны были выставить на продажу, раз народ так ломится.~
  IF ~~ THEN REPLY ~Много ли нынче клиентов?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ведите себя тут тихо, хмм? Нам проблемы не нужны.~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Мне здесь неприятности не нужны. Мы вас отсюда вышибем, и не задержимся с этим.~ [AVISTA53]
  IF ~~ THEN REPLY ~Много ли нынче клиентов?~ GOTO 1
  IF ~~ THEN REPLY ~Вы не слышали ничего странного?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Да ничего особенного тут не происходит. Аукцион отменили, и сейчас народ повалит домой.~ [AVISTA54]
  IF ~~ THEN EXIT
END

