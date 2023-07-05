// Центр Невервинтера  Солтер человек  - просит очистить полуостров.  Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~SAULTER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Пожалуйста, <SIRMAAM>, вы можете помочь? Чума унесла нашу семью, а потом мы бежали от заключенных с полуострова, не успев даже оплакать умерших!~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Чем я могу помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я... Я не знаю, что и сказать вам. Знаю лишь, что никому из нас нельзя попасть домой. Стражники ничего не делают... Когда вокруг чума, полуостров никого не волнует.~
  IF ~~ THEN REPLY ~Чем я могу помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~Ха! Мне нет до тебя дела.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я... я не знаю, сможешь ты или нет. Я не знаю, что там не так. Я только знаю, что если мы попробуем вернуться в свои дома, нас убьют. Если ты чем-то можешь помочь... пожалуйста, я умоляю... помоги нам.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Наверное, пора прощаться. Пожалуйста, по возможности, помогите нам с полуостровом? Нам больше некого попросить.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Пожалуйста... у нас уже не осталось никого, к кому можно обратиться. Стражники не помогут... не уходите. Полуостров... наши дома... это все, что у нас осталось.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Ненавижу. Должен же кто-то поддерживать порядок.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Хорошо, что у кого-то есть желание отправить этих ворюг туда, где им должно быть. Благодарю вас. А теперь, с вашего позволения, я вернусь к работе.~
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

