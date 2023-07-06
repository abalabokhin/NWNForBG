// Лускан Подмигни и ущипни, 2-й уровень Куртизанка Лицо этой молодой прекрасной куртизанки усталое, но как только она замечает, что кто-то смотрит на нее, она тут же становится веселой и внимательной.

BEGIN ~NWCOURT1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Привет, красуля. Тебе что-нибудь нужно?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ха! Думаю, никто из парней не будет возражать, если я минутку поболтаю.~
  IF ~~ THEN REPLY ~Расскажете мне об этом месте?~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете рассказать мне о Лускане?~ GOTO 5
  IF ~~ THEN REPLY ~Вы не знаете, где бы мне найти работу?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти Орета?~ GOTO 7
  IF ~~ THEN REPLY ~Где я могу найти Рэйн?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Уходишь так быстро?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~Не заблудись.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY ~Мне нечего сказать. Думаю, тебе стоит спросить у мисс Белы.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Вы девчонка из борделя, да?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Мне бы хотелось вас снять.~ GOTO 16
  IF ~~ THEN REPLY ~Почему публичный дом все еще открыт?~ GOTO 17
  IF ~~ THEN REPLY ~Расскажите мне о мисс Беле.~ GOTO 18
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Ты не из Лускана, так? Что ты хочешь знать?~
  IF ~~ THEN REPLY ~Из-за чего все эти сражения?~ GOTO 9
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 10
  IF ~~ THEN REPLY ~Когда начались сражения?~ GOTO 11
  IF ~~ THEN REPLY ~Мне бы хотелось задать еще вопрос.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY ~Работа? Ха-ха... Наш город практически сидит в осаде, а ты ищешь себе работу? Хотя... всем хочется заработать. Я не знаю. Если хочешь занять себя чем-то, наверное, тебе стоит поговорить с Иветт или Эрбом... Особенно с Иветт... бедняжка. Иветт, разумеется, в своей комнате. Мисс Бела разрешила ей немного отдохнуть. Что же касается Эрба... если ты очень хочешь увидеть его, то он шатается где-то здесь, по салону.~
  IF ~~ THEN REPLY ~Расскажете мне об этом месте?~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете рассказать мне о Лускане?~ GOTO 5
  IF ~~ THEN REPLY ~Где я могу найти Орета?~ GOTO 7
  IF ~~ THEN REPLY ~Где я могу найти Рэйн?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY ~Ищешь Орета? Так... конечно, он у себя в спальне. Орет не развлекает гостей, как большинство из нас. С тех пор, как началась война, его "забронировали" для самих Высших Капитанов... Хоть он и не хотел. Ни он, ни мисс Бела ничего не могут с этим поделать.~
  IF ~~ THEN REPLY ~Расскажете мне об этом месте?~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете рассказать мне о Лускане?~ GOTO 5
  IF ~~ THEN REPLY ~Вы не знаете, где бы мне найти работу?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти Рэйн?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY ~Рэйн у себя в спальне. Но она не развлекает гостей, как большинство из нас, если вы это имели в виду. С тех пор, как началась война, Рэйн "забронировали" для самих Высших Капитанов. Но не по ее выбору... Ни она, ни мисс Бела ничего не могут с этим поделать.~
  IF ~~ THEN REPLY ~Расскажете мне об этом месте?~ GOTO 4
  IF ~~ THEN REPLY ~Вы можете рассказать мне о Лускане?~ GOTO 5
  IF ~~ THEN REPLY ~Вы не знаете, где бы мне найти работу?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти Орета?~ GOTO 7
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END


IF ~~ THEN BEGIN 9 // from: 1.2
  SAY ~Ну... Когда-то было пятеро Высших Капитанов, которые управляли городом. Никто не знает почему, но они вдруг начали войну, чтобы определить, который из них останется в живых... если не сожгут Лускан дотла, конечно.~
  IF ~~ THEN REPLY ~Вы знаете что-нибудь еще об этом?~ GOTO 13
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 10
  IF ~~ THEN REPLY ~Когда начались сражения?~ GOTO 11
  IF ~~ THEN REPLY ~Мне бы хотелось задать еще вопрос.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 1.2
  SAY ~Культы? Нет, мне ничего о таком не говорили. Хотя здесь, в Лускане, могла бы быть дюжина культов, и никто бы ничего не заметил. У тебя есть еще вопросы?~
  IF ~~ THEN REPLY ~Из-за чего все эти сражения?~ GOTO 9
  IF ~~ THEN REPLY ~Когда начались сражения?~ GOTO 11
  IF ~~ THEN REPLY ~Мне бы хотелось задать еще вопрос.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 1.2
  SAY ~Наверное, несколько недель назад. Это произошло внезапно. Трое Высших Капитанов пропали или погибли... Такие ходят слухи.~
  IF ~~ THEN REPLY ~Из-за чего все эти сражения?~ GOTO 9
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 10
  IF ~~ THEN REPLY ~Мне бы хотелось задать еще вопрос.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY ~Что вы хотите знать?~
  IF ~~ THEN REPLY ~Расскажете мне об этом месте?~ GOTO 4
  IF ~~ THEN REPLY ~Вы не знаете, где бы мне найти работу?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти Орета?~ GOTO 7
  IF ~~ THEN REPLY ~Где я могу найти Рэйн?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY ~Ну... Говорят, что за всем этим стоит Братство Таинств. Это кучка волшебников в Башне Хозяина на острове рядом с берегом, но о них люди о них мало знают. И я тоже.~
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 10
  IF ~~ THEN REPLY ~Когда начались сражения?~ GOTO 11
  IF ~~ THEN REPLY ~Мне бы хотелось задать еще вопрос.~ GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY ~Это я. Как ты понимаешь, тут полно народу, так что тебе придется подождать своей очереди. Солдаты обычно проходят без очереди... к сожалению. Так что тебе, наверное, придется ждать дольше. С этим ничего нельзя сделать.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Мне бы хотелось вас снять.~ GOTO 16
  IF ~~ THEN REPLY ~Почему публичный дом все еще открыт?~ GOTO 17
  IF ~~ THEN REPLY ~Расскажите мне о мисс Беле.~ GOTO 18
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY ~Эй, ты что, не понимаешь? Мне хотелось бы тебе помочь, дорогуша, но тут уже и так очередь длиной в милю. В другой раз.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Вы девчонка из борделя, да?~ GOTO 15
  IF ~~ THEN REPLY ~Почему публичный дом все еще открыт?~ GOTO 17
  IF ~~ THEN REPLY ~Расскажите мне о мисс Беле.~ GOTO 18
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 0.1
  SAY ~Потому что Высшие Капитаны хотят, чтобы он был открыт. Они могут присылать сюда своих людей расслабиться и требовать чего угодно от мисс Белы.~
  IF ~~ THEN REPLY ~Чего они хотят?~ GOTO 20
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Вы девчонка из борделя, да?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Мне бы хотелось вас снять.~ GOTO 16
  IF ~~ THEN REPLY ~Расскажите мне о мисс Беле.~ GOTO 18
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 0.1
  SAY ~Ха! Мисс Бела добрая душа, правда. Пока что она хранит нас всех в безопасности. Надеюсь, война скоро закончится... Это ее сильно нервирует.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Вы девчонка из борделя, да?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Мне бы хотелось вас снять.~ GOTO 16
  IF ~~ THEN REPLY ~Почему публичный дом все еще открыт?~ GOTO 17
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 0.1
  SAY ~Хорошо, хорошо, давай.~
  IF ~~ THEN REPLY ~Вы можете рассказать мне о Лускане?~ GOTO 5
  IF ~~ THEN REPLY ~Вы не знаете, где бы мне найти работу?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти Орета?~ GOTO 7
  IF ~~ THEN REPLY ~Где я могу найти Рэйн?~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 0.1
  SAY ~Естественно, золота. А также любых куртизанок, которых пожелают... Для каких угодно целей.~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Вы девчонка из борделя, да?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Мне бы хотелось вас снять.~ GOTO 16
  IF ~~ THEN REPLY ~Расскажите мне о мисс Беле.~ GOTO 18
  IF ~~ THEN REPLY ~Позвольте мне спросить у вас кое-что еще.~ GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~Ты что-нибудь хочешь, а?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY ~До свидания.~ GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY ~До свидания.~ GOTO 3
END

