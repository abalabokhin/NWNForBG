// Центр Невервинтера  Зал ритуала   Судья Олефф  Его преподобие Судья Олефф Ускар выглядит очень суровым человеком. Впрочем, страшные последние события сделали его, как и многих других чиновников в Невервинтере усталым и неуверенным.

BEGIN ~OLEFF2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Приветствую, вас! Вы оказали неоценимую услугу всему Невервинтеру в эти тяжелые времена.~ [OLEFF055]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1  // 0.1
  SAY ~В знак благодарности лорд Нашер подумал, что вы захотите поприсутствовать при ритуале создания лекарства после того, как вся ваша работа будет закончена.~ [OLEFF056]
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~Однако перед тем как мы начнем ритуал, остальные четверо собравшихся здесь, несомненно, захотят переговорить с вами и принести вам свою персональную благодарность за все, чего вы достигли.~ [OLEFF057]
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY ~Ну, давайте, поговорите с ними - мне еще нужно принести городскому глашатаю радостные вести.~ [OLEFF058]
  IF ~  Global("Blanc","LOCALS",0)~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
  IF ~  Global("Blanc","LOCALS",1)~ THEN EXIT
END

//------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Олефф удивленно смотрит на вас, явно не понимая, почему вы тратите время на разговоры, когда ритуал ждет. С бесконечным терпением он повторяет, что от вас требуется.~
  IF ~~ THEN GOTO 1
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Олефф слишком потрясен, чтобы говорить, вместо этого он указывает вам на портал, чтобы вы вошли в него и вернули украденное лекарство.~
  IF ~~ THEN EXIT
END

