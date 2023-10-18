// creator  : weidu (version 23700)
// argument : DMOUTH.DLG
// game     : .
// source   : ./DATA/TOTL-MSC.BIF
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWMOUTH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Вы не можете пройти.~
  IF ~~ THEN REPLY ~Почему?~ GOTO 1
  IF ~~ THEN REPLY ~Мы не за тем прошли такой путь, чтобы нас остановила какая-то говорящая дверь.~ GOTO 1
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.2 0.1 0.0
  SAY ~Лишь те, у кого есть четыре хрустальные безделушки, могут пройти через эту дверь.~
  IF ~~ THEN REPLY ~Что?  Это нелепо.~ GOTO 2
  IF ~~ THEN REPLY ~Мне надоели эти загадки. Откройся, или превратишься в груду говорящих обломков.~ GOTO 2
  IF ~~ THEN REPLY ~Ладно. Прощай.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY ~Вы не можете пройти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY ~Вы не можете пройти.~
  IF ~~ THEN REPLY ~Скажи нам еще раз, кого ты пропустишь?~ GOTO 1
  IF ~~ THEN REPLY ~Я просто заглянул. До встречи.~ EXIT
END

IF WEIGHT #0 ~  PartyHasItem("Mwmisc08")
PartyHasItem("Nwmisc09")
PartyHasItem("Nwmisc10")
PartyHasItem("Nwmisc11")
~ THEN BEGIN 4 // from:
  SAY ~Вы можете пройти.~
  IF ~~ THEN DO ~AddexperienceParty(20000)
StartCutSceneMode()
StartCutScene("duMMBye")
~ EXIT
END
