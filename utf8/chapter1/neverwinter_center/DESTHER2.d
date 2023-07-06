// Центр Невервинтера  Зал ритуала   Дестер  Дестер выглядит странно спокойным, как будто он полностью контролирует положение. Он постоянно внимательно осматривает зал, отмечая мельчайшие детали.

BEGIN ~DESTHER2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Итак, здравствуйте <CHARNAME>. Думаю, вы очень довольны собой? В конце концов, это все ваша заслуга.~ [DESTH120]
  IF ~~ THEN REPLY ~Мне приятно помочь. Каждый из нас искал лекарство - по-своему.~ GOTO 2
  IF ~~ THEN REPLY ~Я просто герой. Герои всегда так делают.~ GOTO 3
  IF ~~ THEN REPLY ~Мною сделано куда больше, чем есть похвастаться вам. Есть результаты.~ GOTO 4
END

IF ~~ THEN BEGIN 1  // from: FENTHIC2 
  SAY ~Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.~
  IF ~~ THEN EXTERN ~FENTHIC2~ 7
END

IF ~~ THEN BEGIN 2 // 0.1
  SAY ~Возможно, хотя к этому, несомненно, привели ваши разбойничьи действия. Вы очень эффективно обошли моих собратьев-хельмитов. Браво. Теперь вам нужно отойти в сторону. Вы не потребуетесь на ритуале. Можете посмотреть, как мы готовим лекарство от чумы, но не вмешивайтесь.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY ~Конечно. По сравнению с вами, мои собратья-хельмиты имеют очень бледный вид. Теперь все сомневаются в важности того, что мы пытались сделать. Теперь вам нужно отойти в сторону. Вы не потребуетесь на ритуале. Можете посмотреть, как мы готовим лекарство от чумы, но не вмешивайтесь.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 4 // 0.3
  SAY ~О, я не сомневаюсь в ваших результатах, но я надеялся в итоге приобрести больший авторитет. Мои собратья-хельмиты и я тоже много сделали. Теперь вам нужно отойти в сторону. Вы не потребуетесь на ритуале. Можете посмотреть, как мы готовим лекарство от чумы, но не вмешивайтесь.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 5 // 2.1
  SAY ~Это мое дело. Я рассказал о своих намерениях Фентику, и он счел их мудрыми. Чтобы ритуал закончился как следует, требуется пойти на определенный риск.~
  IF ~~ THEN REPLY ~Магический риск, или попытка разозлить Арибет?~ GOTO 13
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 6 // 2.2
  SAY ~Тогда я предлагаю вам еще несколько лет поизучать магию. Вы не участвуете в заклинании, так что нет никакого смысла бормотать, изображая участие. Мы будем использовать магию, но призовем и божественную энергию, а после этого у нас будет лекарство от чумы. Это все, что вам нужно знать.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 7 // 2.3
  SAY ~Когда лекарство будет готово, мне будет незачем оставаться в Невервинтере. Я вернусь в Замок Хельма на какое-то время. Дальнейшее же касается только меня.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // 2.4
  SAY ~Мой интерес к таким людям тает по мере того, как кончается чума. Лучше бы вам поговорить с ними лично.~
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12

END

IF ~~ THEN BEGIN 9 // 2.5
  SAY ~Очень хорошо. Думаю, нам нужно продолжить. Итак, начинаем ритуал!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // 2.6
  SAY ~Очень хорошо. Думаю, нам нужно продолжить. Итак, начинаем ритуал!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // 2.7
  SAY ~Да, позвольте мне сконцентрироваться на предстоящем ритуале. До свидания. Вы должны гордиться тем, что сделали. Перед тем, как мы начнем ритуал, вы должны поговорить со всеми остальными. Наверное, они захотят вас поздравить. Это очень важно.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // 2.8
  SAY ~Да, позвольте мне сконцентрироваться на предстоящем ритуале. До свидания. Вы должны гордиться тем, что сделали. Перед тем, как мы начнем ритуал, вы должны поговорить со всеми остальными. Наверное, они захотят вас поздравить. Это очень важно.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // 5.1
  SAY ~Конечно, это тоже имеет значение. Арибет не любит меня, поэтому с ней так трудно иметь дело. Не знаю уж, что Фентик в ней нашел, правда. Сомневаюсь, что она может как следует обосновать свое недоверие. Фентик гораздо лучше все понимает. Он знает, что вера - очень важное средство.~
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~Здравствуйте еще раз. Я могу уделить вам пару минут, но мы должны начать сразу же, как вы переговорите со всеми. С моей помощью Дестер... ну... Неважно.~ [DESTH144]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Почему вы заставили Фентика раскрыть секрет защитных заклинаний Замка Невер?~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Что вы будете делать, когда излечите чуму?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 11
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 12
END

