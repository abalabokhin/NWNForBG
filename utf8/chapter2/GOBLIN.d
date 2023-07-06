// Северная дорога, пещеры гоблинов и орков - Гоблин

BEGIN ~GOBLIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NeutralGoblins","MYAREA",0)Global("GoblinQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Мы сдаемся! Не надо больно. Мы не хотим нас убивать много-много!~
  IF ~~ THEN REPLY ~Сначала ответь на мои вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Я приму капитуляцию, если другие гоблины перестанут сражаться со мной.~ GOTO 2
  IF ~~ THEN REPLY ~Я слушаю предложение. Что я получу, если оставлю тебя в живых?~ GOTO 3
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, живи пока.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Что вы спрашивает нас, гоблинов? Мы не знает столько, сколько вы, <RACE>. Э... какой вопрос, ась?~
  IF ~~ THEN REPLY ~Расскажи мне об этих пещерах.~ GOTO 6
  IF ~~ THEN REPLY ~Где ваш вождь? Я хочу с ним поговорить.~ GOTO 7
  IF ~~ THEN REPLY ~Я приму капитуляцию, если другие гоблины перестанут сражаться со мной.~ GOTO 2
  IF ~~ THEN REPLY ~Я слушаю предложение. Что я получу, если оставлю тебя в живых?~ GOTO 3
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, живи пока.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Вы хочет все гоблины были мирные с ваша? Хорошо, мы этот можем. Да, мы говорит, говорит всем весть. Ваша отпустит нас?~
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
  IF ~~ THEN REPLY ~Договорились.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Что этот значит? Ваша хочет сокровище, да? Меня имеет золото. Меня дает ваша золото, а вы перестает сражается с нами?~
  IF ~~ THEN REPLY ~Другие гоблины перестанут сражаться, если я соглашусь.?~ GOTO 9
  IF ~~ THEN REPLY ~Договорились.~ GOTO 10
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Арррррррр! Мы сражается всегда с теми, кто <RACE>. Убить!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Наша живет дальше! Наша дышит! Мы убегает бегом!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Наша воюет с орками и багбирами. Мы долго-долго живет тут одни, потом другие живет тут с нами, и все из-за хозяин.~
  IF ~~ THEN REPLY ~Где ваш вождь? Я хочу с ним поговорить.~ GOTO 7
  IF ~~ THEN REPLY ~Я приму капитуляцию, если другие гоблины перестанут сражаться со мной.~ GOTO 2
  IF ~~ THEN REPLY ~Я слушаю предложение. Что я получу, если оставлю тебя в живых?~ GOTO 3
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно, живи пока.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Вы хочет говорить с наш вождь, да? Ладно, мы говорит ваша, где ваша ищет. Он тут, рядом. Говори с наш вождь, другой гоблин больше не будет нападать.~
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~Мы живет дальше! Наша дышит! Наша убегает бегом! И мы говорит другой гоблин не сражается с ваша, нет! Мы хорошие. Ваша увидит!~
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~Вы хочет все гоблины были мирные с ваша? Хорошо, мы этот можем. Да, мы говорит, говорит всем весть. Ваша отпустит нас?~
  IF ~~ THEN REPLY ~Собственно, я обожаю убивать гоблинов. Так что сделки не выйдет.~ GOTO 4
  IF ~~ THEN REPLY ~Договорились.~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~Наша живет дальше! Наша дышит! Мы убегает бегом!~
  IF ~~ THEN DO ~GiveGoldForce(70)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~Мы живет дальше! Наша дышит! Наша убегает бегом! И мы говорит другой гоблин не сражается с ваша, нет! Мы хорошие. Ваша увидит!~
  IF ~~ THEN DO ~GiveGoldForce(70)SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,1)~ THEN BEGIN 12 // from:
  SAY ~Мы говорим, мы не сражаемся с тобой. Так что мой не говорит, нет. Ты говори с вождем.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,2)~ THEN BEGIN 13 // from:
  SAY ~Наша не убивать твоя, друг <RACE>. Говорить с вождь.~
  IF ~~ THEN EXIT
END
