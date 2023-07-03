// Руины рас создателей, Воздушный мефит

BEGIN ~NWMEPAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Гонги! Я знаю секрет... вам я скажу и свободен я буду!~
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("GongDemo")~ EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~Разве я не понятно продемонстрировал очередность ударов по гонгам?~
  IF ~~ THEN REPLY ~Нет мне все понятно.~ EXIT
  IF ~~ THEN REPLY ~Покажи еще раз.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Смотри, слушай и запоминай~
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("GongDemo")~ EXIT
END

