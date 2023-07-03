// Полуостров Дом Брошенная женщина полурослик  Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.

BEGIN ~FORLORN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Кто ты? Надеюсь, что ты стражник. Нам нужны люди. В тюрьме проблемы, а никому и дела нет.~
  IF ~~ THEN REPLY ~Не следует ли служащим тюрьмы разобраться с этим?~ GOTO 1
  IF ~~ THEN REPLY ~Несомненно, заключенные надежно заперты.~ GOTO 2
  IF ~~ THEN REPLY ~Тюрьма. Как туда пройти?~ GOTO 3
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Можно представить. Главным надзирателем здесь командир Элейфин. Он всегда был добр к нам... Он был когда-то очень хорошим человеком.~
  IF ~~ THEN REPLY ~Что значит "был когда-то"?~ GOTO 6
  IF ~~ THEN REPLY ~Несомненно, заключенные надежно заперты.~ GOTO 2
  IF ~~ THEN REPLY ~Тюрьма. Как туда пройти?~ GOTO 3
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Если бы так! Они в наглую расхаживают по улицам... А, ладно! Сейчас не знаешь, кому верить...~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Пожалуйста, скажите мне. Я здесь, чтобы помочь.~ GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Пожалуйста, скажите мне. Я здесь, чтобы помочь.~ GOTO 8
  IF ~~ THEN REPLY ~Не следует ли служащим тюрьмы разобраться с этим?~ GOTO 1
  IF ~~ THEN REPLY ~Тюрьма. Как туда пройти?~ GOTO 3
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Отправляйся на самый верх полуострова. Стражники ходят туда дважды в день, хотя теперь этот путь стал гораздо опаснее.~
  IF ~~ THEN REPLY ~Не следует ли служащим тюрьмы разобраться с этим?~ GOTO 1
  IF ~~ THEN REPLY ~Несомненно, заключенные надежно заперты.~ GOTO 2
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хорошо, что и в наше время еще попадаются достойные люди. Удачи вам!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Это не мое дело. Хотя, если вы в силах помочь, вы должны это сделать.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Да ничего. Сейчас не знаешь, кому верить...~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Пожалуйста, скажите мне. Я здесь, чтобы помочь.~ GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Пожалуйста, скажите мне. Я здесь, чтобы помочь.~ GOTO 8
  IF ~~ THEN REPLY ~Тюрьма. Как туда пройти?~ GOTO 3
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.1 6.1
  SAY ~Хорошо. Сбежавшие заключенные говорят, что их выпустил сам Главный Надзиратель.~
  IF ~~ THEN REPLY ~Тюрьма. Как туда пройти?~ GOTO 3
  IF ~~ THEN REPLY ~Не волнуйтесь, мадам. Я займусь этим.~ GOTO 4
  IF ~~ THEN REPLY ~А с чего бы мне об этом беспокоиться?~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~Я должна держать рот на замке. Это может стоить мне жизни. Пожалуйста, оставьте меня в покое.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Что ты делаешь в моем доме? Как будто здесь и без тебя не хватает проблем!~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Кажется, все опять возвращается в обычную колею... Надеюсь, что так. Надеюсь, чума меня не достанет.~
  IF ~~ THEN EXIT
END

