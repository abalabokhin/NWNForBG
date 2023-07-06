// Центр Невервинтера  Зал ритуала   Арибет Леди Арибет - само воплощение красоты и сосредоточенности, хотя она, конечно, сильно озабочена судьбой тех, кто страдает из-за чумы. Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~ARIBETH3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Мои поздравления, <CHARNAME>. Приготовления к ритуалу идут полным ходом. Если ничего не случится, уже через несколько минут у нас будет лекарство.~ [ARIBE170]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~Нужно сказать, что вы полностью оправдали все возложенные на вас надежды, с самого начала было ясно, что <MALEFEMALE>, вроде вас, будет действовать быстро и оправдает доверие.~ [ARIBE171]
  IF ~~ THEN REPLY ~Мне нужно что-то сделать? Что теперь будет?~ GOTO 2
  IF ~~ THEN REPLY ~Хорошо, что вся эта суета закончилась. Когда я получу награду?~ GOTO 3
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~Вам не нужно ни о чем беспокоиться. Благодаря вам мы очень далеко продвинулись, теперь дело только за ритуалом. После этого я займусь вашей наградой.~ [ARIBE172]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Такое нетерпение вам не идет. Вы увидите плоды своих трудов, когда ритуал завершится.~ [ARIBE213]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Пока что вы можете предоставить все нам. Вы имеете полное право поприсутствовать, я думаю, остальные тоже не будут возражать.~ [ARIBE173]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Я знаю. Наши стражники здесь очень наблюдательны. Меры будут приняты, но не теперь. Сейчас нам нужно заняться более важными делами.~ [ARIBE174]
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~Я попробую объяснить. Вы хотели бы знать что-то конкретное?~ [ARIBE177]
  IF ~~ THEN REPLY ~Что включает в себя ритуал?~ GOTO 12
  IF ~~ THEN REPLY ~Как будет выглядеть лекарство?~ GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~Как только лекарство окажется у нас в руках, мы найдем наилучший способ как можно быстрее раздать его всем людям.~ [ARIBE186]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY ~Несомненно, они и сами могли бы все рассказать, но я отвечу на все вопросы, какие смогу.~ [ARIBE194]
  IF ~~ THEN REPLY ~Как поживает лорд Нашер?~ GOTO 15
  IF ~~ THEN REPLY ~Ваше мнение о Дестере как-нибудь изменилось?~ GOTO 16
  IF ~~ THEN REPLY ~Ваши отношения с Фентиком теперь наладятся?~ GOTO 17
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY ~Да, думаю, время для разговоров прошло. Вы со всеми поговорили, и все мы готовы. Ритуал начнется немедленно.~ [ARIBE203]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY ~Да, до встречи. Мне нужно очень многое подготовить и все как следует рассчитать для заклинания. Это сложный ритуал.~ [ARIBE204]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Мы глаз не спустим с Дестера, но он нужен нам для заклинания, и лучше уж не испытывать его темперамент и не подвергать риску наше лекарство.~ [ARIBE175]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Ну, несколько из наших тирранских жрецов уже начали приготовления. Их медитация поможет как следует скомбинировать различные компоненты.~ [ARIBE178]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Итак, мы подготовили небольшую емкость. Сама по себе микстура получится ничем не примечательной, разве что своей важностью.~  [ARIBE183]
  IF ~~ THEN REPLY ~Что включает в себя ритуал?~ GOTO 12
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~На это потребуется некоторое время, так что в первую очередь мы займемся наиболее тяжелыми случаями чумы, независимо от положения. Надеюсь, что... ну... ладно, об остальном мы подумаем потом.~ [ARIBE187]
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY ~Что вас беспокоит, Арибет? Скажите мне.~ GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY ~Что вас беспокоит, Арибет? Скажите мне.~ GOTO 23
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY ~Я эльф, как и вы. Расскажите мне, что вас беспокоит.~ GOTO 24
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 15// from: 8.1
  SAY ~Вам действительно нужно спросить об этом у него самого. Он ненавидит, когда его считают слабым, и предпочел бы участвовать в любом разговоре касательно его здоровья.~ [ARIBE195]
  IF ~~ THEN REPLY ~Ваше мнение о Дестере как-нибудь изменилось?~ GOTO 16
  IF ~~ THEN REPLY ~Ваши отношения с Фентиком теперь наладятся?~ GOTO 17
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 16// from: 8.2
  SAY ~Мне интересно, не изменилось ли ваше мнение о нем. Мы прошли такой путь благодаря вашим усилиям. Его требования основаны на ваших результатах.~ [ARIBE196]
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 17// from: 8.3
  SAY ~Времена были... трудные, а наши разногласия сделали их еще труднее. Кроме чумы, нам с Фентиком почти не о чем разговаривать.~ [ARIBE199]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 18// from: 8.4
  SAY ~Как пожелаете. Что бы вы хотели услышать от меня?~ [ARIBE184]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY ~Вам нужно поговорить с остальными. Думаю, у каждого из них будет, что сказать о том, как изменилась ситуация.~ [ARIBE211]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY ~Фентик рискует, и очень глупо, но я не позволю этому навредить нам. Чума не разделит живых.~ [ARIBE176]
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 12.1
  SAY ~Дестер, Фентик и я все вместе начнем читать основные заклинания, как только подготовимся. Если все пройдет гладко, уже через несколько минут у нас будет лекарство.~ [ARIBE179]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 14.1
  SAY ~Мы очень близки к цели, но... Я не могу не беспокоиться о последствиях чумы. Она нанесла ужасную рану всему Невервинтеру.~ [ARIBE188]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 23 // from: 14.2
  SAY ~Сейчас не совсем подходящее время говорить о таких вещах. Это неважно. Будем решать проблемы по мере их поступления.~ [ARIBE191]
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 14.3
  SAY ~Интересно, сможете ли вы понять? На сердце Невервинтера появился глубокий рубец. Может, вы тоже его видите?~ [ARIBE193]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 25// from: 16.1
  SAY ~Пока вы искали, его хельмиты благословляли. Пока вы сражались, его хельмиты благословляли. Утешение, которое он принес, несравнимо с настоящим лекарством, которое вы нашли.~ [ARIBE197]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 26// from: 17.1
  SAY ~Я понимаю, почему он возлагает такие надежды на Дестера, но не могу поступить так же. Я знаю, как сильна вера, но ведь ее нужно подкреплять и делом.~ [ARIBE200]
  IF ~~ THEN REPLY ~Как поживает лорд Нашер?~ GOTO 15
  IF ~~ THEN REPLY ~Ваше мнение о Дестере как-нибудь изменилось?~ GOTO 16
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 
  SAY ~Да, думаю, время для разговоров прошло. Вы со всеми поговорили, и все мы готовы. Ритуал начнется немедленно.~ [ARIBE203]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY ~Да, до встречи. Мне нужно очень многое подготовить и все как следует рассчитать для заклинания. Это сложный ритуал.~ [ARIBE204]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 21.1
  SAY ~Как нельзя вовремя для лорда Нашера, эта чума ужасно ослабила его. Думаю, в этом он видит оскорбление лично для себя.~ [ARIBE180]
  IF ~~ THEN REPLY ~Думаю, он больше привык сражаться открыто.~ GOTO 34
  IF ~~ THEN REPLY ~Как будет выглядеть лекарство?~ GOTO 13
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY ~Я уже вижу недоверие. Настроение в городе изменилось. Когда все закончится, народ захочет найти виноватого, а я сомневаюсь, что нам удастся кого-то найти.~ [ARIBE189]
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY ~Итак, что-нибудь еще? Если вы еще не поговорили с остальными, то сейчас самое время. Они тоже вас поздравят.~ [ARIBE192]
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY ~Конечно, он понадобится нам для финального ритуала, так что я не могу окончательно прогнать его. Фентик также выступает его защитником, так что он заслуживает хоть какого-то уважения.~ [ARIBE198]
  IF ~~ THEN REPLY ~Как поживает лорд Нашер?~ GOTO 15
  IF ~~ THEN REPLY ~Ваши отношения с Фентиком теперь наладятся?~ GOTO 17
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY ~Вам нужно поговорить с остальными. Думаю, у каждого из них будет, что сказать о том, как изменилась ситуация.~ [ARIBE211]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.1
  SAY ~Да, с этим можно согласиться. Он... крайне важен. Мы почти уверены, что кто-то специально наслал чуму, но он не может и представить, что за злодей мог дойти до такой низости.~ [ARIBE181]
  IF ~~ THEN REPLY ~Как будет выглядеть лекарство?~ GOTO 13
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 18
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY ~(кхм) Не следует мне так разглагольствовать, когда лекарство почти готово. Это счастливый день, и мы дожили до него благодаря вам.~ [ARIBE190]
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 36 // from:
  SAY ~Здравствуйте еще раз, <CHARNEME. У меня найдется минутка для разговора, но как только вы переговорите со всеми, мы немедленно начнем церемонию.~ [ARIBE216]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 5
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 6
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 8
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 10
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 27
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 28
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)~ THEN BEGIN 37 // from:
  SAY ~Скорее, входите в портал, пока я еще могу держать его открытым! Найдите лекарство! Поймайте Дестера и... и Фентика тоже. Может, его заколдовали или... Я не знаю.~ [ARIBE217]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY ~Представляете? Мне легче пожелать Фентику плохого, чем представить то, что... что он мог знать обо всем этом.~ [ARIBE218]
  IF ~~ THEN REPLY ~Люди подумают, что это он. Он всегда поддерживал Дестера.~ GOTO 39
  IF ~~ THEN REPLY ~Фентик проследовал за Дестером? Будем надеяться, что он собирается остановить его.~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~Не смейте говорить так! Быть того не может! Он ошибся! Его обманули! Он... Он... Будь он проклят...~ [ARIBE219]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY ~О чем он думал? Если и он причастен к этому... Теперь это не имеет значения... Похоже, он сбежал вместе с Дестером. Люди не простят ему этого!~ [ARIBE232]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY ~Люди этого так не оставят. Они не смогли получить лекарство, и они захотят отомстить и предателю, и всем тем, кто помогал ему... Я... Я не смогу его защитить... Не смогу...~ [ARIBE220]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY ~Возможно... Возможно, если поймать Дестера, все будет не так плохо. Если сможете, возьмите его в плен. Найдите и Фентика, и пусть он... Я не знаю... Я не знаю, чем теперь можно помочь.~ [ARIBE221]
  IF ~~ THEN REPLY ~Что же произойдет с Фентиком?~ GOTO 43
  IF ~~ THEN REPLY ~Что вы собираетесь делать?~ GOTO 44
  IF ~~ THEN REPLY ~Куда ведет этот портал?~ GOTO 45
  IF ~~ THEN REPLY ~Если Дестер и его хельмиты фальшивые, то где же настоящие?~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY ~Я... Я не знаю. Люди подумают, что он заодно с величайшим врагом, которого мы когда-либо встречали... Я не знаю...~ [ARIBE222]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY ~Я буду... Я буду держать портал открытым, сколько смогу, но мы сможем послать туда стражников лишь через некоторое время. Вам придется действовать в одиночку.~ [ARIBE225]
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 42.3
  SAY ~Я не знаю... Так сразу и не скажешь. Я не могу видеть сквозь магию Дестера. Может, он ведет в то место, откуда пришел он сам и все его лже-хельмиты.~ [ARIBE227]
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 46 // from: 42.4
  SAY ~Я не знаю. Может, Дестер убил их. Это кажется невозможным. Он пришел из Замка Хельма... если же и эта твердыня пала... это еще более тяжкое горе.~ [ARIBE230]
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY ~Он допустил ошибку... Он защищал предателя. Люди не поймут, какой он наивный... Какой доверчивый. Разве можно винить их за то, что они нашли козла отпущения?~ [ARIBE223]
  IF ~~ THEN REPLY ~Что вы собираетесь делать?~ GOTO 44
  IF ~~ THEN REPLY ~Куда ведет этот портал?~ GOTO 45
  IF ~~ THEN REPLY ~Если Дестер и его хельмиты фальшивые, то где же настоящие?~ GOTO 46
  IF ~~ THEN REPLY ~Я побегу со всех ног. Может, мне удастся догнать.~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.4
  SAY ~Городские стражники потребуются в другом месте, так что это придется выполнять вам. Идите, пока портал не закрылся!~ [ARIBE224]
  IF ~~ THEN DO ~SetGlobal("ToHelmTempleNWN","GLOBAL",1)SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1
  SAY ~Еще я постараюсь как-то все сгладить... Я не смогу скрыть то, как Фентик слепо доверял Дестеру... Но я смогу объяснить это... Наверное...~ [ARIBE226]
  IF ~~ THEN REPLY ~Что же произойдет с Фентиком?~ GOTO 43
  IF ~~ THEN REPLY ~Куда ведет этот портал?~ GOTO 45
  IF ~~ THEN REPLY ~Если Дестер и его хельмиты фальшивые, то где же настоящие?~ GOTO 46
  IF ~~ THEN REPLY ~Я побегу со всех ног. Может, мне удастся догнать.~ GOTO 48
END

IF ~~ THEN BEGIN 50 // from: 45.1
  SAY ~Дестер утверждал, что он прибыл из Замка Хельма на востоке, но не знаю, как это может быть правдой. Они бы не стали участвовать в таком заговоре.~ [ARIBE228]
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 46.1
  SAY ~Это огромная ответственность... Похоже, Дестер сделал все это, чтобы распространить чуму... Но зачем?! Столько людей умерло... А теперь еще и Замок?~ [ARIBE231]
  IF ~~ THEN REPLY ~Что же произойдет с Фентиком?~ GOTO 43
  IF ~~ THEN REPLY ~Что вы собираетесь делать?~ GOTO 44
  IF ~~ THEN REPLY ~Куда ведет этот портал?~ GOTO 45
  IF ~~ THEN REPLY ~Я побегу со всех ног. Может, мне удастся догнать.~ GOTO 48
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY ~Куда бы ни вел этот портал, это место будет опасным. Он знает, что мы пошлем кого-нибудь за ним. Будьте осторожны.~ [ARIBE229]
  IF ~~ THEN REPLY ~Что же произойдет с Фентиком?~ GOTO 43
  IF ~~ THEN REPLY ~Что вы собираетесь делать?~ GOTO 44
  IF ~~ THEN REPLY ~Если Дестер и его хельмиты фальшивые, то где же настоящие?~ GOTO 46
  IF ~~ THEN REPLY ~Я побегу со всех ног. Может, мне удастся догнать.~ GOTO 48
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)~ THEN BEGIN 53 // from:
  SAY ~Нету времени! Вы должны найти Дестера! Я пока могу удерживать портал открытым, но вам нужно торопиться! Может, вам удастся найти их быстро...~ [ARIBE233]
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY ~Может, Фентику сойдет с рук все, что он сделал... Может, его простят, прежде чем город потребует... Мести, а не правосудия...~ [ARIBE234]
  IF ~~ THEN REPLY ~Что же произойдет с Фентиком?~ GOTO 43
  IF ~~ THEN REPLY ~Что вы собираетесь делать?~ GOTO 44
  IF ~~ THEN REPLY ~Куда ведет этот портал?~ GOTO 45
  IF ~~ THEN REPLY ~Я побегу со всех ног. Может, мне удастся догнать.~ GOTO 48
END

