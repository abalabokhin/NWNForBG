// Порт-Лласт Казармы Кендрака Баракс Заданий нет

BEGIN ~BARAX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkNum","LOCALS",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~Приветствую вас, <CHARNAME>, герой Невервинтера! Я Баракс, бывший солдат Невервинтера, а ныне я намерен охотиться на тех ублюдков, что сделали это с нами!~
  IF ~~ THEN REPLY ~Откуда ты знаешь мое имя?~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY ~Охотиться на кого?~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~Я не могу говорить сейчас.~ DO ~SetGlobal("TalkNum","LOCALS",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Каждый в Невервинтере знает ваше имя. Ты из тех людей, что спасли нас от чумы, и я подозреваю, вы окажете такую же помощь и в поисках тех ублюдков, что навлекли ее на нас.~
  IF ~~ THEN REPLY ~Кого мы ищем?~ GOTO 2
  IF ~~ THEN REPLY ~Я не могу говорить сейчас.~ GOTO 3

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Культ, конечно! Эту таинственную организацию, что напустила на Невервинтер чуму, убившую столько невинных. Герой вроде вас  - как раз то, что нам нужно, чтобы найти их.~
  IF ~~ THEN REPLY ~Я cделаю все, что могу.~ GOTO 4
  IF ~~ THEN REPLY ~Поиски этого культа меня не интересуют.~ GOTO 5
  IF ~~ THEN REPLY ~Я не могу говорить сейчас.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Не буду отнимать у вас время. Я уверен, вы хотите поговорить с Арибет. Мы должны сообщать ей обо всех своих находках, в конце концов. Удачи в поисках!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Уверен, этого будет более чем достаточно. Много невинных людей было убито, и этот культ несет долг, что может быть выплачен лишь кровью. Устройте им ад за всех нас, <CHARNAME>!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~Что?! Да эти ублюдки напустили на наш город чуму, что убила бесчисленное множество невинных! У нас есть шанс найти их, а вы говорите, вам все равно?!~
  IF ~~ THEN REPLY ~Это не твое дело, солдат. До свидания.~ GOTO 6
  IF ~~ THEN REPLY ~Ты прав. Мы должны выследить их. Я сделаю все, что в моих силах.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY ~Мне больше нечего вам сказать. Я-то думал, что вы - герой.~
  IF ~~ THEN DO ~SetGlobal("PlayerBad","LOCALS",1)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PlayerBad","LOCALS",1)Global("CultInLuskan","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Простите меня, <MALEFEMALE>. Я не желаю разговаривать с теми, кому безразличны страдания невинных, сраженных чумой.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 8 // from:
  SAY ~Приветствую, <CHARNAME>. Надеюсь, вы скоро найдете этот культ. Они должны быть наказаны!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY ~Я слышал, вам удалось выследить культ в Лускане. Устройте им ад за всех нас, <CHARNAME>!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~Приветствую. Надеюсь, вы скоро найдете этот культ. Они должны быть наказаны!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("CultInLuskan","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY ~Я слышал, вам удалось выследить культ в Лускане. Устройте им ад за всех нас!~
  IF ~~ THEN EXIT
END
