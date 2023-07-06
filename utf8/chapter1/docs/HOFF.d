// Доки Хофф Полуорк   Это громила весьма неприятной внешности. По всему видно - первый задира и любитель драк.

BEGIN ~HOFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Убирайтесь. Я вас не знаю. Нам не о чем разговаривать.~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",0)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Что вам нужно? Я не разговариваю с незнакомцами. А вдруг вы грабитель или еще какая сволочь?~
  IF ~  PartyHasItem("Nwmisc19")~ THEN REPLY ~Вы знаете женщину из Маски Лунного Камня? Тамору?~ GOTO 2
  IF ~~ THEN REPLY ~Ничего. До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Может быть. Она прекрасная девушка. Любит, когда об нее ноги вытирают. То есть, нет, не так. *Я* люблю об нее ноги вытирать. Ха! А вам-то что? Она прислала вас разобраться? Ха! Что-то не верится.~
  IF ~~ THEN REPLY ~Видишь брошку? Это ее. А теперь умри!~ GOTO 4
  IF ~~ THEN REPLY ~Видите ее брошь? Хорошо. Сейчас я тебя разделаю под орех!~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Идиот.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2
  SAY ~Эй, эй, ЭЙ! Погодите! Может, мы можем договориться? Как думаете? Может, вы хотите золота?~
  IF ~~ THEN REPLY ~Не пойдет. Умри!~ GOTO 5
  IF ~~ THEN REPLY ~Не надо золота. Если еще раз тронешь ее - умрешь!~ GOTO 6
  IF ~~ THEN REPLY ~Слушаю. Что за предложение?~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Ладно, ладно! Она того не стоит! Да!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~Ладно, ладно! Она того не стоит! Да!~
  IF ~~ THEN DO ~SetGlobal("HoffScared","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Так я и думал. Если бы вы были так безупречны, вы бы ее не встретили вовсе. Вот, я даю вам 400 золотых за ее брошку. У меня много денег, а она с ума сойдет, когда узнает, что брошка у меня. Хе-хе!~
  IF ~~ THEN REPLY ~Не пойдет. Умри!~ GOTO 5
  IF ~~ THEN REPLY ~Не надо золота. Если еще раз тронешь ее - умрешь!~ GOTO 6
  IF ~~ THEN REPLY ~Вы очень злы. Мне это нравится. Я приму это.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Ого, а в книжках пишут, что всяких там героев просто так с пути не собьешь! Договорились, приятель. Она жуть как разозлится, эта маленькая шлюшка. Ей это понравится.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",1)TakePartyItem("Nwmisc19")GiveGoldForce(400)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY ~Оставьте мне я в покое! Я больше не подойду к этой женщине! Она того не стоит!~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY ~Хе! Тамора будет в ярости, что ее брошка у меня. В ярости! Замечательно! Какая наколка!~
  IF ~~ THEN EXIT
END

