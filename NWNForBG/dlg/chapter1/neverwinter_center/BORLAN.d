// Центр Невервинтера  Борлан - просит очистить Гнездо нищих. Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~BORLAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Могу я вам помочь? Да нет, о чем это я... Я и себе-то помочь не могу. Я не могу даже спрятаться в своем собственном доме... Мне нельзя пойти домой в Гнездо нищих из-за зомби, нельзя выбраться из города из-за карантина... И что, по-вашему, я должен делать? Наверное, стоять и задыхаться от дыма горящих тел...~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Простите, я не хочу грубить вам, но я сейчас не могу думать ни о чем кроме своей беды.~
  IF ~~ THEN REPLY ~Может быть, я могу тебе помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я не знаю, как это можно сделать. Я не знаю никого, кто смог бы в одиночку разгромить армию зомби. В Гнезде они так и кишат... Их полно даже в моем доме.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Тогда прощайте. Я останусь здесь... Мне больше некуда идти.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~У меня и в мыслях не было, что когда-нибудь Гнездо нищих станет для меня таким желанным.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Все кончилось? То есть, чума все еще продолжается, но по крайней мере я могу пойти домой. Зомби в Гнезде нищих были для меня настоящим кошмаром. Большое вам спасибо.~
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

