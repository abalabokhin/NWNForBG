// Северная дорога, шахты Порт-Лласта, Езгар полуорк Бандит похитивший дочь мэра Шалдриссу Этот полуорк ведет себя более цивилизованно и разумно, чем его родственники в этих землях. Он явно управляет ими.

BEGIN ~YESGAR~

IF ~  Global("Attack","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY ~Езгар рад, что твоя пощадить его.~ [YESGA059]
  IF ~~ THEN REPLY ~Почему бы мне не убить тебя?~ GOTO 1
  IF ~~ THEN REPLY ~Я не собираюсь щадить тебя! Умри, сволочь!~ GOTO 2
  IF ~~ THEN REPLY ~Ответь на вопросы, я оставлю тебя в живых... Может быть.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Езгар расскажет тебе секрет о юный дева Шалдрисса. Тогда твоя отпустить Езгар?~
  IF ~~ THEN REPLY ~Шалдрисса? А что у нее за секреты?~ DO ~SetGlobal("ShaldrissLiar","MYAREA",1)~ GOTO 3
  IF ~~ THEN REPLY ~Да мне наплевать на любые секреты. Мне нужны деньги!~ GOTO 4
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Езгар еще не умер, ты, жалкий коротышка <RACE>!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Шалдрисса не такой чистосердечный. Езгар не похищай ее, она сама сбежать с Езгаром! Ее идея!~
  IF ~~ THEN REPLY ~Не пытайся лгать мне! Шалдрисса невинная девушка!~ GOTO 7
  IF ~~ THEN REPLY ~И правда. Расскажи мне больше.~ GOTO 7
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Езгар не может дать никакой деньги. Езгар вне закон.~
  IF ~~ THEN REPLY ~Если у тебя нет денег, ты для меня бесполезен. Готовься к смерти!~ GOTO 8
  IF ~~ THEN REPLY ~Ты что-то утаил от меня! Выкладывай все, или я перережу тебе глотку!~ GOTO 8
  IF ~~ THEN REPLY ~Тогда что мне с тебя толку?~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Ты есть добрый и милосердный <MALEFEMALE>! Жизнь лучше, чем ухо. Погоди... (режет) А-А! Это больно.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5
  SAY ~Возьми ухо, Езгар больше не докучай тебе. А это ключ от клетки, где заперта Шалдрисса, делай с ней что хочешь.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADYESGAR","GLOBAL",1)GiveItem("EarBand",LastTalkedToBy(Myself))GiveItem("YesgarK",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 3.2
  SAY ~Езгар встретить Шалдрисса, когда прятайся в гостинице в Порт-Лласт. Она ударить по мужской достоинство Езгара. Она заставить Езгар похитить ее.~
  IF ~~ THEN REPLY ~Да ладно, ты же не думаешь, что я поверю во всю эту кучу дерьма.~ GOTO 9
  IF ~~ THEN REPLY ~Прекрасно. Мне нужны все деньги, что у тебя есть. Прямо сейчас!~ GOTO 4
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY ~Не убивай Езгара! Езгар лгать. За спина Езгара есть сундук. В вот ключ. Там у Езгара есть сокровище. Может Езгар теперь идти?~
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 10
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~Езгар говори правда! Шалдрисса хотеть, чтобы я убежать с ней! Это она виноват, не Езгар! Она хотей деньги!~
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),13,INT)CheckStatGT(LastTalkedToBy(Myself),13,WIS)~ THEN REPLY ~Скажи мне правду немедленно, ты, лживая собака!~ GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)CheckStatLT(LastTalkedToBy(Myself),14,WIS)~ THEN REPLY ~Скажи мне правду немедленно, ты, лживая собака!~ GOTO 15
  IF ~~ THEN REPLY ~Ладно. Я тебе верю.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~Ты есть добрый и милосердный <MALEFEMALE>! Жизнь лучше, чем ухо. Погоди... (режет) А-А! Это больно.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~Езгар еще не умер, ты, жалкий коротышка <RACE>!~
  IF ~~ THEN DO ~GiveItem("YesgarK",LastTalkedToBy)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY ~Ладно, не бей Езгара! Моя напоить Шалдрисса. Она такой пьяный, согласный на все, что Езгар хотей. Хе. Она очень храбрый девушка.~
  IF ~~ THEN REPLY ~Прекрасно. Мне нужны все деньги, что у тебя есть. Прямо сейчас!~ GOTO 4
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY ~Хорошо. Езгар всегда говорить правда. Может Езгар теперь идти?~
  IF ~~ THEN REPLY ~Прекрасно. Мне нужны все деньги, что у тебя есть. Прямо сейчас!~ GOTO 4
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10
  SAY ~Возьми ухо, Езгар больше не докучай тебе. А это ключ от клетки, где заперта Шалдрисса, делай с ней что хочешь.~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADYESGAR","GLOBAL",1)GiveItem("YesgarK",LastTalkedToBy)GiveItem("EarBand",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY ~Я говорить правда! Теперь отпусти Езгара!~
  IF ~~ THEN REPLY ~Прекрасно. Мне нужны все деньги, что у тебя есть. Прямо сейчас!~ GOTO 4
  IF ~~ THEN REPLY ~Ты можешь идти, но мне нужно твое ухо, чтобы получить награду.~ GOTO 5
  IF ~~ THEN REPLY ~Думаю, я все же убью тебя.~ GOTO 2
END
