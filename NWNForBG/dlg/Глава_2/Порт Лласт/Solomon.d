// Порт-Лласт Таверна Герб союза Соломон полурослик дает кольцо (член культа)   Исправить триггеры AreaCheck

BEGIN ~SOLOMON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 0 // from:
  SAY ~Мне говорили, что у вас довольно стандартная внешность, но вы герой Невервинтера, сомнений нет.~ [SOLOM052]
  IF ~~ THEN REPLY ~Это кого ты назвал простецом?~ GOTO 1
  IF ~~ THEN REPLY ~Кто говорил вам обо мне?~ GOTO 2
  IF ~~ THEN REPLY ~Так чего именно вы хотите?~ GOTO 3
  IF ~~ THEN REPLY ~Я совсем не герой...~ GOTO 4
  IF ~~ THEN REPLY ~Не тратьте мое время.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ох... простите мою грубость, <SIRMAAM>. Я совершенно не хотел вас оскорбить, просто мне так скудно вас описывали...~
  IF ~~ THEN REPLY ~Кто говорил вам обо мне?~ GOTO 2
  IF ~~ THEN REPLY ~Зачем тебе мое описание?~ GOTO 3
  IF ~~ THEN REPLY ~Не тратьте мое время.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Что?... А, да народ в таверне, вот что имелось в виду.~
  IF ~~ THEN REPLY ~Так чего именно вы хотите?~ GOTO 3
  IF ~~ THEN REPLY ~Не тратьте мое время.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Эээ... Ну, наверное, мне нужно удостовериться, что вы действительно тот, о ком я думаю. Я не хочу совершить ошибку.~
  IF ~~ THEN REPLY ~Я <CHARNAME>. А чего надо-то?~ GOTO 5
  IF ~~ THEN REPLY ~Есть ли на это причина?~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Я думаю иначе - вы ведь спасли целый город от ужасного и неминуемого опустошения. Разумеется, все должны считать вас героем!~
  IF ~~ THEN REPLY ~Так чего именно вы хотите?~ GOTO 5
  IF ~~ THEN REPLY ~Не тратьте мое время.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Простите, я... Мне нужно было удостовериться, что это и правда вы. Я хочу вас поблагодарить. У меня семья в Невервинтере, а вы спасли им жизнь, когда прекратили чуму. Пожалуйста, примите это кольцо в знак моей благодарности.~
  IF ~~ THEN REPLY ~Очень мило с вашей стороны... Спасибо.~ GOTO 6
  IF ~~ THEN REPLY ~Я возьму кольцо, похоже оно ценное.~ GOTO 7
  IF ~~ THEN REPLY ~Нет, оставьте. Мне это не нужно.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~Не знаю, магическое ли оно, но оно всегда приносило мне удачу. Надеюсь, что и вам принесет. Спасибо еще раз, <CHARNAME>... Прощайте!~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY ~О, нет, нет! Не продавай его, <CHARNAME>! Не знаю, волшебное ли оно, но мне оно всегда приносило удачу. Я надеюсь, что оно принесет удачу и тебе... Я поэтому хотел его тебе отдать. В любом случае... вот, используй его во благо, <CHARNAME>.~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY ~Но, э... Это очень красивое кольцо! Пожалуйста, возьмите! В конце концов, именно для этого мне и нужно было найти вас - подарить его вам за все то, что вы сделали!~
  IF ~~ THEN REPLY ~Очень хорошо. Спасибо.~ GOTO 6
  IF ~~ THEN REPLY ~Если твоя благодарность так велика, то почему бы тебе не дать мне что-нибудь посущественнее?~ GOTO 9
  IF ~~ THEN REPLY ~Нет, я не возьму твое кольцо.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~Я... понимаю. Вот бери все золото, которое у меня есть. Это немного, но я рад отдать его тебе вместе с кольцом. Не знаю, магическое ли оно, но оно всегда приносило мне удачу. Надеюсь, что и вам принесет. Спасибо еще раз, <CHARNAME>... Прощайте!~
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)GivePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.3
  SAY ~Как грубо! Очень хорошо, похоже, вы не такой герой, как мне казалось!~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 11 // from:
  SAY ~Мы еще увидимся.~ [SOLOM050]
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2300")GlobalLT("SolomonRing","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY ~Послушай, думаю, тебе не стоит вмешиваться в дела культа...~ [SOLOM056]
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 14
  IF ~~ THEN REPLY ~Приведите мне хотя бы одну причину, по которой не стоит исследовать культ...~ GOTO 15
  IF ~~ THEN REPLY ~Кто сказал, что я расследую что-то про культ, а?~ GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~У тебя совсем нет мозгов! Помнишь то кольцо? При помощи него культ все это время следил за тобой! Считай, что тебя предупредили, 'герой'!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~Я знаю то, что вы лезете туда, куда не следует, <CHARNAME>. Вас предупредили, "герой"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY ~Вы спасли Невервинтер, вы большой герой, и все вас любят. Зачем отказываться от всего этого? Здесь шансы не в вашу пользу.~
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 14
  IF ~~ THEN REPLY ~Кто сказал, что я расследую что-то про культ, а?~ GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 12.4
  SAY ~Не говорите глупостей! Вы тут вынюхиваете, задаете вопросы! Теперь уже весь север знает, что вы затеяли.~
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Вы состоите в культе? Что вам о них известно?!~ GOTO 14
  IF ~~ THEN REPLY ~Приведите мне хотя бы одну причину, по которой не стоит исследовать культ...~ GOTO 15
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Спасибо за совет. Я над ним поразмыслю...~ GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY ~Думаю, вам лучше заняться своими делами...~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY ~Именно так. Если не последуете моему совету, то очень сильно пожалеете. Считайте, что вас честно предупредили, "герой"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.6
  SAY ~Это как раз мое дело, поверьте. Мы больше не потерпим вашего вмешательства. Считайте, что вас честно предупредили, "герой"!~
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SolomonRing","GLOBAL",3)AreaCheck("NW2400")~ THEN BEGIN 19 // from:
  SAY ~Я вас предупредил, но вы не послушались.~ [SOLOM054]
  IF ~~ THEN DO ~SetGlobal("CultHostile","MYAREA",1)Shout(HELP101)Shout(HELP79)Shout(HELP83)Shout(HELP_ME_GROUP151)Enemy()~ EXIT
END
