// Холодный Лес Подземелье волшебника Элементаль воды

// Кто зовет меня, и для какой цели я призван в этот план?

BEGIN ~NWWATER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~А, еще один дух воды призван в этот план. Скажи мне, <RACE>, что ты от меня хочешь?~
  IF ~~ THEN REPLY ~Кто вы? Что вы такое?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Я хочу освободить чародея Накса.~ GOTO 2
  IF ~~ THEN REPLY ~Расскажите мне об этом подземелье.~ GOTO 3
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете отправляться в свой родной план.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я, безусловно, дух стихии воды. Вы провели ритуал и призвали меня. Теперь я обязан выполнить ваш приказ. Вы можете приказать мне выполнить какое-нибудь задание, или попросить что-то подарить вам. Просто приказывайте.~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Я хочу освободить чародея Накса.~ GOTO 2
  IF ~~ THEN REPLY ~Расскажите мне об этом подземелье.~ GOTO 3
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете отправляться в свой родной план.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Очень хорошо. Если вы этого хотите, такое деяние будет совершено, после чего я освобожусь от вашего контроля.~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Да. Ступайте, освободите Накса.~ GOTO 10
  IF ~~ THEN REPLY ~Расскажите мне об этом подземелье.~ GOTO 3
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете отправляться в свой родной план.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Некогда в этом месте жил маг Сирил Лирикус, величайший из всех вызывателей. Здесь он занимался магией и создал себе множество слуг. Я величайший из его слуг... хотя я чувствую, что моего повелителя больше нет. Но все равно, даже после смерти Сирила моя сила связана с этим прудом призывания.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Если хотите, я могу дать вам кое-что, что прибыло со мной из моего плана. Вы хотите этого? Я не могу вам сказать, что это будет за предмет, но он будет достаточно могущественным.~
  IF ~~ THEN REPLY ~Да, дайте мне что-нибудь магическое.~ GOTO 7
  IF ~~ THEN REPLY ~Нет. Мне не нужен магический предмет.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Я все еще нахожусь под вашим контролем, но предупреждаю, если вы потеряете контроль надо мной, я смогу не возвращаться.~
  IF ~~ THEN REPLY ~Да. Я хочу, чтобы вы ушли.~ GOTO 9
  IF ~~ THEN REPLY ~Кто вы? Что вы такое?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Я хочу освободить чародея Накса.~ GOTO 2
  IF ~~ THEN REPLY ~Расскажите мне об этом подземелье.~ GOTO 3
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Вы призвали меня, <RACE> и благодаря магии Сирила Лирикуса я должен выполнить ваш приказ. Чего вы хотите от меня?~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Я хочу освободить чародея Накса.~ GOTO 2
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете отправляться в свой родной план.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~Отлично, тогда забирайте этот предмет, а я ухожу от вас.~
  IF ~~ THEN DO ~GiveItemCreate("WAND12",LastTalkedToBy,18,0,0)PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~Отлично. Тогда просто скажите мне, чего вы хотите, и я выполню вашу просьбу.~
  IF ~~ THEN REPLY ~Кто вы? Что вы такое?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~Я хочу освободить чародея Накса.~ GOTO 2
  IF ~~ THEN REPLY ~Расскажите мне об этом подземелье.~ GOTO 3
  IF ~~ THEN REPLY ~Я хочу, чтобы вы дали мне магический предмет.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY ~Очень хорошо. Я вернусь туда, откуда пришел.~
  IF ~~ THEN DO ~PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY ~Очень хорошо. Я сделаю, как вы желаете.~
  IF ~~ THEN DO ~SetGlobal("ToNax","MYAREA",1)~ EXIT
END

