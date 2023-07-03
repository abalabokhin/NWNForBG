// Порт-Лласт Дом Эйзенфельдта 2й этаж   Урт - оборотень 

BEGIN ~URTH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Что тебе здесь надо? Мои родители велели тебе уйти, разве нет? Они разве не сказали тебе, как все ужасно? Не можешь ты просто оставить меня в покое?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Я здесь, чтобы убить тебя. Это единственный способ.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Меня зовут Урт, и я заразился ликантропией. Поэтому я тут и прячусь, чтобы никто не видел... этого.~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряный амулет. Не желаешь одеть?~ GOTO 3
  IF ~~ THEN REPLY ~Как ты вообще стал оборотнем?~ GOTO 4
  IF ~~ THEN REPLY ~Меня послали покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я пойду узнаю, чем тебе можно помочь. Просто будь здесь.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Смерть не может быть хуже, чем жизнь, которой я живу. Убей меня, если надо, но не удивляйся, если я буду сопротивляться!~
IF ~~ THEN DO ~DestroyItem("MINHP1")ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Почему бы просто не убить меня? Зачем просить, чтобы я сделал это сам?~
  IF ~~ THEN REPLY ~Это целебный предмет. Он тебе поможет.~ GOTO 7
  IF ~~ THEN REPLY ~Я тут для того, чтобы тебя вылечить или убить. Выбирай.~ GOTO 8
  IF ~~ THEN REPLY ~Тогда готовься к смерти.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Сэр Каратис взял с собой меня, Гета, Брана и Эндера, чтобы мы помогли ему охотиться на оборотня. Я был в восторге от приключения и присоединился с великой радостью. Сэр Каратис проиграл сражение с волком-оборотнем и, став оборотнем, сам охотился на нас. Он ничего не мог с этим поделать. Я его не виню.~
  IF ~~ THEN REPLY ~Что случилось с Браном?~ GOTO 9
  IF ~~ THEN REPLY ~Выжил ли Эндер? Где он сейчас?~ GOTO 10
  IF ~~ THEN REPLY ~А с Гетом все в порядке? Ты не знаешь, где мне найти его?~ GOTO 11
  IF ~~ THEN REPLY ~Где сейчас сэр Каратис?~ GOTO 12
  IF ~~ THEN REPLY ~Давай поговорим о другом.~ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Ты всем скажешь, что я умер? Может, тогда люди оставят меня в покое, перестанут искать меня и насмехаться надо мной. Мои родители смогут жить нормально.~
  IF ~~ THEN REPLY ~Просто отдай мне свое кольцо.~ GOTO 14
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряный амулет. Не желаешь одеть?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я пойду узнаю, чем тебе можно помочь. Просто будь здесь.~ GOTO 6
  IF ~~ THEN REPLY ~Я здесь, чтобы убить тебя. Это единственный способ.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Что я еще могу сделать? Удивительно даже то, что родители меня назад пустили...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~Лечение? Честно говоря, лучше умирать с надеждой, чем без нее. Давай сюда свой амулет.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY ~Хоть я и мечтал всегда погибнуть сражаясь, но я слишком устал от сражений. Ладно, давай сюда свой амулет, и я умру с надеждой.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~Я не знаю... Я знаю, что он был отравлен, как и я, и стал оборотнем. Но что было дальше?..~
  IF ~~ THEN REPLY ~Выжил ли Эндер? Где он сейчас?~ GOTO 10
  IF ~~ THEN REPLY ~А с Гетом все в порядке? Ты не знаешь, где мне найти его?~ GOTO 11
  IF ~~ THEN REPLY ~Где сейчас сэр Каратис?~ GOTO 12
  IF ~~ THEN REPLY ~Давай поговорим о другом.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY ~Эндер - может, и убежал, а может, и нет. Я его больше никогда не видел.~
  IF ~~ THEN REPLY ~Что случилось с Браном?~ GOTO 9
  IF ~~ THEN REPLY ~А с Гетом все в порядке? Ты не знаешь, где мне найти его?~ GOTO 11
  IF ~~ THEN REPLY ~Где сейчас сэр Каратис?~ GOTO 12
  IF ~~ THEN REPLY ~Давай поговорим о другом.~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY ~Гет? Я не видел, куда он убежал, но если подумать, то мы часто играли у самого Лускана, рядом с таверной 'Зеленый Грифон'.~
  IF ~~ THEN REPLY ~Что случилось с Браном?~ GOTO 9
  IF ~~ THEN REPLY ~Выжил ли Эндер? Где он сейчас?~ GOTO 10
  IF ~~ THEN REPLY ~Где сейчас сэр Каратис?~ GOTO 12
  IF ~~ THEN REPLY ~Давай поговорим о другом.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY ~На Каратиса мне вообще наплевать. Хоть я его и не виню, в то же время. Но меня эти дела больше не интересуют. У меня просто от них какое-то... оцепенение.~
  IF ~~ THEN REPLY ~Что случилось с Браном?~ GOTO 9
  IF ~~ THEN REPLY ~Выжил ли Эндер? Где он сейчас?~ GOTO 10
  IF ~~ THEN REPLY ~А с Гетом все в порядке? Ты не знаешь, где мне найти его?~ GOTO 11
  IF ~~ THEN REPLY ~Давай поговорим о другом.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 4.5
  SAY ~О чем еще вы хотите поговорить?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряный амулет. Не желаешь одеть?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я пойду узнаю, чем тебе можно помочь. Просто будь здесь.~ GOTO 6
  IF ~~ THEN REPLY ~Я здесь, чтобы убить тебя. Это единственный способ.~ GOTO 2
  IF ~~ THEN REPLY ~Меня послали покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY ~Хорошо, вот оно. Наверное, тебе нужно отдать его Ньюрику. Скажи ему, что я умер. Может, тогда хоть от меня отвяжутся.~
  IF ~~ THEN DO ~SetGlobal("UrthFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("UrtRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",1)StartCutSceneMode()
StartCutScene("WerPause")~ EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("UrthFraud","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~Он - он сработал, я это чувствую. Спасибо тебе огромное. Вот, возьми мое кольцо и отнеси его Ньюрику, чтобы он знал, что я в порядке! Теперь, когда это испытание окончено, я думаю, мне нужно отдохнуть. Хорошенько отдохнуть. Прощай и спасибо тебе!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)GiveItem("UrtRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("UrthFraud","GLOBAL",1)~ THEN BEGIN 19 // from:
  SAY ~Он - он сработал, я это чувствую. Спасибо тебе огромное. Теперь, когда это испытание окончено, я думаю, мне нужно отдохнуть. Хорошенько отдохнуть. Прощай и спасибо тебе!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)DestroyItem("UrtRing")IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~~ THEN REPLY ~Я здесь, чтобы убить тебя. Это единственный способ.~ GOTO 2
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряный амулет. Не желаешь одеть?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я пойду узнаю, чем тебе можно помочь. Просто будь здесь.~ GOTO 6
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 17 // from:
  SAY ~Не бей меня больше! Волчий дух ушел!~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 18 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~~ THEN EXIT
END
