// creator  : weidu (version 23700)
// argument : NWWOMAN1.DLG
// game     : .
// source   : ./override/NWWOMAN1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWWOMAN1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY ~Хм, привет. Боюсь, вы... эээ... "ошиблись". Приняли незапертую дверь за приглашение войти. Простите, если это ввело вас в заблуждение; в мои планы не входило позволять войти в дом любому незнакомцу с улицы. Пожалуйста, примите мои... извинения, но я буду очень вам признательна, если вы уйдете. Мой муж - один из стражников, и я думаю, он будет обеспокоен, если по возвращении обнаружит, что по его дому расхаживают какие-то люди.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY ~Мне бы не хотелось показаться грубой, но вы вошли в мой дом без разрешения. Мне не кажется, что незапертая дверь может расцениваться как приглашение. Уходите, или мой муж сам вас выведет, когда вернется с дежурства в страже.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY ~Вы, похоже, весьма глупы, раз решились войти в этот дом без приглашения. Вам лучше уйти, ведь если я вызову стражу, вполне вероятно, что в числе прибывших окажется мой муж. А уж он-то, не сомневайтесь, выдворит вас из своего дома с особой... энергичностью.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(1)
~ THEN BEGIN 3 // from:
  SAY ~Мой муж скоро должен быть здесь; думаю, вам лучше уйти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
HasItem("RING16",Myself)
Global("A6Charmed","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY ~Хотела бы я сбежать с тобой, дорогой, но мой муж бывает таким ревнивцем. Не стоит нам его злить. Возьми это кольцо, оно не даст тебе забыть меня.~
  IF ~~ THEN DO ~GiveItem("RING16",LastTalkedToBy)
SetGlobal("A6Charmed","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY ~Отойди от меня!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  NumberOfTimesTalkedTo(2)
~ THEN BEGIN 6 // from:
  SAY ~А я говорила, что мой муж скоро придет!~
  IF ~~ THEN DO ~CreateCreature("NWHUSB",[490.458],0)
~ EXIT
END
