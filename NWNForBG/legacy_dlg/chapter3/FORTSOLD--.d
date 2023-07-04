// Форт Илкард, Рыцарь. Этот мужчина - один из защитников форта Илкард.

BEGIN ~FORTSOLD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("KillElks","GLOBAL",2)GlobalGT("NW_Medicine","GLOBAL",1)GlobalGT("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Отлично, Утгардты ушли. Теперь армии Лускана могут просто прийти и убить нас.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~    Global("GuardsKnowPlayer","MYAREA",1)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Может, тебе стоит поговорить с командиром Дамасом? Он в здании на юго-западе форта.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY ~Мне надо было сбежать из Форта Илкард, когда был шанс! А теперь я погибну в этой осаде!~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",0)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Назовите себя, или мы атакуем!~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Я <CHARNAME>. Меня послал Аарин Генд от имени Союза Лордов!~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Нас послал Аарин Генд от имени Союза Лордов!~ GOTO 4
  IF ~~ THEN REPLY ~Я не буду отвечать.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Самое время прислать нам подмогу! Не знаю, сколько мы еще сможем выдерживать осаду! Тебе стоит повидать Командира Дамаса. Он в здании на северо-востоке Форта.~
  IF ~~ THEN DO ~SetGlobal("GuardsKnowPlayer","MYAREA",1)~ EXIT

END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~Не говори, что тебя не предупреждали! Оружие к бою!~
  IF ~~ THEN DO ~Shout(HELPME)Enemy()~ EXIT

