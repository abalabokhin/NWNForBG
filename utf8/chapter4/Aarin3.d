// Невервинтер   Замок Невер       Аарин Генд

BEGIN ~AARIN3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~Прошу меня извинить, но где же <CHARNAME>? Я буду разговаривать только с ним.~ ~Прошу меня извинить, но где же <CHARNAME>? Я буду разговаривать только с ней.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: NASHER2.2
  SAY ~Не стоит терять надежду, милорд. В конце концов, у нас все еще есть Слова Власти.~ [AARIN471]
  IF ~~ THEN EXTERN ~NASCHER2~ 3
END

IF ~~ THEN BEGIN 2 // from: NASHER2.3
  SAY ~Возможно, Хэдралин откроет нам их тайну, если ты выпустишь ее из подземелья.~ [AARIN472]
  IF ~~ THEN EXTERN ~NASCHER2~ 4
END

IF ~~ THEN BEGIN 3 // from: NASHER2.4
  SAY ~Хэдралин рассказала нам о тайной двери в подземелье замка Невер. Если бы не она, нам ни за что бы не отыскать Камень-Источник.~ [AARIN473]
  IF ~~ THEN EXTERN ~NASCHER2~ 5
END

IF ~~ THEN BEGIN 4 // from: NASHER2.5
  SAY ~Возможно, <CHARNAME> сможет разговорить Хэдралин.Они раньше уже общались.~ [AARIN474]
  IF ~~ THEN EXTERN ~NASCHER2~ 6
END

IF ~~ THEN BEGIN 5 // from: NASHER2.24
  SAY ~Ее действия небезосновательны, лорд Нашер. Невервинтер отвернулся от нее, когда казнили ее возлюбленного Фентика.~ [AARIN475]
  IF ~~ THEN EXTERN ~NASCHER2~ 34
END

IF ~~ THEN BEGIN 6 // from: NASHER2.34
  SAY ~Когда я поступал к вам на службу, лорд Нашер, вы спросили меня, буду ли я верно служить вам. Вы помните, что я вам ответил?~ [AARIN476]
  IF ~~ THEN EXTERN ~NASCHER2~ 42
END

IF ~~ THEN BEGIN 7 // from: NASHER2.42
  SAY ~Я все еще на вашей стороне, лорд Нашер. Но Фентик и Арибет любили друг друга. В ее глазах вы отдали Фентика в жертву разбушевавшейся толпе.~ [AARIN477]
  IF ~~ THEN EXTERN ~NASCHER2~ 48
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",0)Global("Aarin3Talk","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY ~Сначала вам придется поговорить с лордом Нашером, <CHARNAME>.~ [AARIN570]
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY ~Когда поговорите с ним, возвращайтесь и поговорите со мной.~ [AARIN571]
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)Global("Aarin3Talk","MYAREA",0)!Dead("Morag")~ THEN BEGIN 10 // from:
  SAY ~Настали темные времена, <CHARNAME> - хотя, может быть, и не такие темные, как кажется лорду Нашеру. Жители Невервинтера сделаны из более крепкого материала, чем кто-либо из нас может вообразить.~ [AARIN516]
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~Но если Невервинтер еще способен выжить, мы все должны сыграть в этом свою роль. Мое место здесь, рядом с лордом Нашером. Я доложен обдумать все аспекты обороны города.~ [AARIN517]
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~А свою роль вы прекрасно знаете. Вам необходимо еще раз спасти Невервинтер. Хотя я даже не подозреваю, как это можно сделать. Возможно, этому существу, Хэдралин,  что-нибудь известно.~ [AARIN518]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~У меня есть четвертое Слово Власти.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~Маугрим погиб.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~Хэдралин сообщила мне информацию, о которой, думаю, вам нужно узнать.~ GOTO 18
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~Мне нужно было узнать, как вы держитесь, Аарин.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Мои шпионы сообщили мне, что вам удалось найти четвертое Слово Власти, <CHARNAME>. Меня это не удивляет, учитывая все ваши предыдущие достижения.~ [AARIN490]
  IF ~~ THEN EXTERN ~NASCHER2~ 68
END

IF ~~ THEN BEGIN 14 // from: NASCHER2.68
  SAY ~Теперь, когда у нас есть все четыре Слова, возможно, нам удастся раскрыть их силу, лорд Нашер.~ [AARIN491]
  IF ~~ THEN EXTERN ~NASCHER2~ 69
END

IF ~~ THEN BEGIN 15 // from: NASCHER2.69
  SAY ~Нет, но мне кажется, Хэдралин известна их тайна. Возможно, <CHARNAME> сможет убедить ее раскрыть секреты.~ [AARIN492]
  IF ~~ THEN EXTERN ~NASCHER2~ 70
END

IF ~~ THEN BEGIN 16 // from: NASCHER2.70
  SAY ~Боюсь, лорд Нашер прав. Тебе нужно поговорить об этом с Хэдралин. Что-нибудь еще, <CHARNAME>?~ [AARIN493]
  IF ~  Dead("Maugrim")~ THEN REPLY ~Маугрим погиб.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~Хэдралин сообщила мне информацию, о которой, думаю, вам нужно узнать.~ GOTO 18
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~Мне нужно было узнать, как вы держитесь, Аарин.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY ~Да, говорят, он получил по заслугам, и его смерть была ужасна. Но дух противника не сломлен. Находятся и другие, кто желает возглавить армию Лускана.~ [AARIN494]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 12.3
  SAY ~Боюсь, Хэдралин не доверяет нам. Что вполне понятно, учитывая прием, который она получила по прибытии сюда. Она желает разговаривать только с вами.~ [AARIN518]
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 12.4
  SAY ~Когда-то я знал все тайны этого города, но сейчас трудные времена, и даже я блуждаю в потемках. Тем не менее, я расскажу вам все, что смогу.~ [AARIN519]
  IF ~~ THEN REPLY ~Что вы можете сказать мне о Хэдралин?~ GOTO 25
  IF ~~ THEN REPLY ~Что вы можете сказать мне о Словах Власти?~ GOTO 26
  IF ~~ THEN REPLY ~Что вы можете сказать мне о Камне-Источнике?~ GOTO 27
  IF ~~ THEN REPLY ~Каковы последние новости с фронта?~ GOTO 28
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~Я хочу спросить вас об Арибет.~ GOTO 29
  IF ~  Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~Я хочу спросить вас об Арибет.~ GOTO 30
  IF ~~ THEN REPLY ~Я хочу побольше узнать о лорде Нашере.~ GOTO 31
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.5
  SAY ~Насколько этого можно ожидать, любовь моя. Сейчас тяжелые времена для всех нас.~ [AARIN512]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY ~Вы должны поговорить с Хэдралин прежде чем уйдете. Может быть она расскажет вам что-нибудь о Камне-Источнике или о Словах Власти.~ [AARIN567]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 22 // from: 12.7
  SAY ~Да, <CHARNAME> - нам еще очень многое нужно сделать, чтобы спасти Невервинтер.~ [AARIN569]
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~Как мы и опасались, за силами, напавшими на нас, стоит еще более темная сила, чем сам Маугрим. Единственное, что нам остается - постараться продержаться как можно дольше и молиться, чтобы помощь подоспела вовремя.~ [AARIN495]
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~Возможно, вам не стоит раскрывать ее тайны. Если она захочет поделиться ими с нами, то пошлет за лордом Нашером или за мной.~ [AARIN498]
  IF ~~ THEN REPLY ~Странные слова для главного шпиона.~ GOTO 35
  IF ~~ THEN REPLY ~Вы правы, Аарин. Все равно вы ничем не можете помочь мне в этом.~ GOTO 36
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY ~Она прибыла сюда вскоре после того, как третье Слово Власти было доставлено в Замок Невер. Лорд Нашер подозревал, что она шпионка, и посадил ее в тюрьму.~ [AARIN520]
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY ~Лорд Нашер отдал их Мастеру Форду, главному археологу Невервинтера. Он считает, что есть какая-то связь между Словами и Камнем-Источником.~ [AARIN519]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 27 // from: 19.3
  SAY ~Хэдралин рассказала нам о Камне-Источнике и о потайной двери под замком Невер. Как главный шпион я вынужден в смущении признать, что никогда раньше не подозревал о существовании потайных комнат под нашими подземельями.~ [AARIN531]
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 28 // from: 19.4
  SAY ~После первой яростной атаки все немного успокоилось. Защитники отошли в Сердце Города, но я не знаю, как долго нам удастся удерживать его.~ [AARIN534]
  IF ~  Dead("Maugrim")~ THEN GOTO 40
  IF ~  !Dead("Maugrim")~ THEN GOTO 41
END

IF ~~ THEN BEGIN 29 // from: 19.5
  SAY ~Я понимаю ваше беспокойство о ней, <CHARNAME>, но, честно говоря, не знаю, что вам сказать. Ее судьба еще не решена.~ [AARIN555]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 30 // from: 19.6
  SAY ~Мне больно говорить о ней. Было время, когда мне казалось, что она герой Невервинтера, я звал ее другом....~ [AARIN558]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 31 // from: 19.7
  SAY ~Знаете, когда-то он был великим искателем приключений. Хотел бы я, чтобы вы познакомились с ним тогда - истинный герой в зените своей славы.~ [AARIN563]
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 32 // from: 20.1
  SAY ~Как хорошо, что ты разделяешь мое мнение, <CHARNAME>. Но если мы хотим спасти Невервинтер, нельзя позволить нашим чувствам отвлекать нас от нашей цели. Мы должны сконцентрироваться на первостепенных задачах.~ [AARIN509]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~У меня есть четвертое Слово Власти.~ GOTO 13
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY ~Мои инстинкты говорят мне, что она - ключ к спасению Невервинтера, а я привык доверять своим инстинктам.~ [AARIN568]
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ UNSOLVED_JOURNAL ~Финальная битва

Силам Лускана под предводительством Арибет и Маугрима почти удалось захватить Невервинтер. В настоящий момент даже убийство лидеров не может изменить исхода этой битвы. Аарин Генд думает, что Хэдралин, таинственное ящероподобное существо, которое сейчас томится в подземелье замка Невер, может знать, как спасти город. Только она может раскрыть секреты Слов Власти, и недавно она нашла Камень-Источник. К тому же есть надежда, что мастер Форд, который сейчас изучает Камень-Источник в пещерах под подземельем замка Невер, может поделиться кое-какой информацией.~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1
  SAY ~Тебе нужно еще что-нибудь, <CHARNAME>? Если нет, я займусь дальше своими отчетами.~ [AARIN496]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~У меня есть четвертое Слово Власти.~ GOTO 13
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~Хэдралин сообщила мне информацию, о которой, думаю, вам нужно узнать.~ GOTO 18
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~Мне нужно было узнать, как вы держитесь, Аарин.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 35 // from: 24.1
  SAY ~Теперь я больше, чем просто глава разведки, <CHARNAME>. Я отвечаю за координацию всей системы обороны Невервинтера. Я не стану рисковать таким ценным потенциальным союзником, как Хэдралин.~ [AARIN499]
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 24.2
  SAY ~Если бы мы располагали достаточным количеством людей, с вами отправили бы целый отряд. Но нам понадобится помощь каждого живого солдата на поле боя, чтобы помешать силам Лускана проникнуть в Сердце города.~ [AARIN501]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 37 // from: 25.1
  SAY ~После предательства Арибет он стал чрезмерно осторожен, и я боюсь, что теперь Хэдралин больше не доверяет нам. Она рассказала о Камне-Источнике под замком, но ничего больше.~ [AARIN521]
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 38 // from: 26.1
  SAY ~Но, к несчастью, Мастеру Форду больше ничего не удалось узнать ни о Словах Власти, ни о Камне Источнике.~ [AARIN528]
  IF ~~ THEN REPLY ~Где я могу найти Мастера Форда?~ GOTO 49
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 39 // from: 27.3
  SAY ~Когда мы нашли Камень, лорд Нашер приказал Мастеру Форду, ведущему археологу Невервинтера, тщательно изучить его.~ [AARIN532]
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 40 // from: 28.1
  SAY ~Враги превосходят нас числом, а Арибет знает наизусть каждую пядь земли в этом городе. И сейчас все ее знания используются против нас.~ [AARIN535]
  IF ~   !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~А что если я смогу убить Арибет и Маугрима?~ GOTO 51
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 28.2
  SAY ~Смерть Маугрима почти никак не повлияла на боеспособность наших врагов. Похоже, вовсе не он был истинным их вдохновителем.~ [AARIN541]
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 52
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 42 // from: 29.1
  SAY ~Пока эта война продолжается, лорд Нашер позаботится о том, чтобы она жила, чтобы она могла и дальше снабжать нас информацией о силах Лускана.~ [AARIN556]
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 43 // from: 30.1
  SAY ~Ее предательство ошеломило нас всех, и особенно лорда Нашера. Он никогда в этом не признается, но мне кажется, что дело усугубляется еще и его чувством вины за казнь Фентика.~ [AARIN559]
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN GOTO 54
  IF ~  !Global("AarinFriend","GLOBAL",5)~ THEN GOTO 55
END

IF ~~ THEN BEGIN 44 // from: 31.1
  SAY ~Теперь это другой человек. Все еще очень хороший человек, но груз постоянной ответственности тяжек ему. Он становился все более мрачным и серьезным.~ [AARIN564]
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 35.1
  SAY ~Я доверяю вам, <CHARNAME>, и мне кажется, что какой бы информацией Хэдралин с вами не поделилась, я вам ничем помочь не смогу.~ [AARIN500]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 47 // from: 36.1
  SAY ~Боюсь, вам придется в одиночку проверять информацию Хэдралин. Могу ли я чем-нибудь еще помочь, <CHARNAME>?~ [AARIN502]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~У меня есть четвертое Слово Власти.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~Маугрим погиб.~ GOTO 17
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 48 // from: 37.1
  SAY ~Может быть вы попробуете поговорить с ней. Она доверяет вам. А я чувствую, что есть что-то очень важное, что она не говорит нам о Словах Власти и Камне-Источнике.~ [AARIN522]
  IF ~~ THEN REPLY ~Где я могу найти Хэдралин?~ GOTO 57
  IF ~~ THEN REPLY ~Вы можете выпустить Хэдралин из подземелья?~ GOTO 58
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 49 // from: 38.1
  SAY ~С тех пор, как мы откопали Камень под замком, Мастер Форд проводит все свое время, изучая его.~ [AARIN529]
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 50 // from: 39.1
  SAY ~Но до сих пор Камень-Источник не открыл ни одного из своих секретов. Если вы хотите что-нибудь еще узнать об этом, поговорите с Мастером Фордом.~ [AARIN533]
  IF ~~ THEN REPLY ~Где я могу найти Мастера Форда?~ GOTO 49
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 51 // from: 40.1
  SAY ~Я сомневаюсь, что это нам чем-то поможет. Арибет уже наверняка поделилась этими знаниями со своими полководцами.~ [AARIN536]
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 41.1
  SAY ~Вы ведь наверняка это чувствуете, <CHARNAME>. Над Невервинтером нависла тень, проклятие, которое снижает наш боевой дух и вдохновляет наших врагов.~ [AARIN542]
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 42.1
  SAY ~А после этого... что ж, в законе сказано довольно четко. Но закон требовал и смерти Фентика, а что получилось в результате, ясно нам всем.~ [AARIN557]
  IF ~~ THEN REPLY ~Закон есть закон. Арибет заслуживает смерти.~ GOTO 61
  IF ~~ THEN REPLY ~Ее смерть только продолжит порочный круг мщения и кровопролития.~ GOTO 62
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 54 // from: 43.1
  SAY ~Где-то внутри, любовь моя, я даже понимаю, почему Арибет так поступила. Если бы тебя постигла судьба Фентика, возможно, я сделал бы то же самое.~ [AARIN560]
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 55 // from: 43.2
  SAY ~Я не оправдываю действий Арибет, но вполне вероятно, что она решила отвернуться от города после того, как увидела ликующие толпы на казни своего возлюбленного.~ [AARIN561]
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 56 // from: 44.1
  SAY ~А теперь, в черный для Невервинтера час, боюсь, что он совершенно впал в отчаяние. Предательство Арибет, чувство вины из-за казни Фентика, бойня среди  его народа... сейчас ноша Лорда Нашера слишком велика.~ [AARIN565]
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY ~Она заперта в подземелье замка. Просто идите на юго-запад и спуститесь по лестнице.~ [AARIN523]
  IF ~~ THEN REPLY ~Вы можете выпустить Хэдралин из подземелья?~ GOTO 58
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 58 // from: 48.2
  SAY ~Боюсь, лорд Нашер никогда на это не согласится. По крайней мере, пока нас осаждает вражеская армия.~ [AARIN524]
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 59 // from: 51.1
  SAY ~Если Маугрима убьют, это может сломить дух врага, хотя, честно говоря, и на это непохоже.~ [AARIN537]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 60 // from: 52.1
  SAY ~Возможно, народ Невервинтера в какой-то степени понимает, что он заслужил эти страдания. По крайней мере, лорд Нашер точно чувствует свою вину. За то, что случилось с Фентиком.~ [AARIN543]
  IF ~~ THEN REPLY ~Лорд Нашер поступил по закону! У него не было выбора!~ GOTO 69
  IF ~~ THEN REPLY ~Возможно, он еще может как-то искупить свою вину.~ GOTO 70
END

IF ~~ THEN BEGIN 61 // from: 53.1
  SAY ~Нельзя позволять эмоциям овладеть вами, <CHARNAME>. Арибет обладает информацией о противнике, которая нам просто необходима.~ [AARIN548]
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 62 // from: 53.2
  SAY ~Я не могу не согласиться с тобой, <CHARNAME>... Но все не так просто. На преступления Арибет не получится просто закрыть глаза. Слава богам, что не мы должны решать ее судьбу.~ [AARIN551]
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 63 // from: 55.1
  SAY ~Но теперь не время обсуждать, насколько оправданы были действия Арибет. Мы должны сконцентрироваться на том, как нам найти способ спасти город.~ [AARIN562]
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 64 // from: 56.1
  SAY ~Как говорится, это тяжкое бремя власти. Мы ничем не можем ему помочь, разве что постараться спасти город. Что-нибудь еще, <CHARNAME>?~ [AARIN566]
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 65 // from: 58.1
  SAY ~В любом случае, я сомневаюсь, что это помогло бы. Она попросту не доверяет нам. Возможно из-за того, что произошло с Арибет, Хэдралин считает, что все в Невервинтере продажные твари.~ [AARIN525]
  IF ~~ THEN REPLY ~Где я могу найти Хэдралин?~ GOTO 57
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 66 // from: 59.1
  SAY ~Обычно армия Лускана составлена из трусов и налетчиков. Они наносят удар и обращаются в бегство. Но на этот раз все совсем по-другому. Какая-то непонятная сила гонит наших врагов вперед.~ [AARIN538]
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY ~И, кажется, какая-то отрава разлита в воздухе, словно черное облако висит над защитниками, вгоняя их в отчаяние.~ [AARIN539]
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 52
  IF ~~ THEN REPLY ~Неужели никто не может прийти нам на помощь?~ GOTO 68
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 68 // from: 67.2
  SAY ~Подкрепление от Союза Лордов уже движется к нам, но я не уверен, что мы сумеем продержаться до их прихода.~ [AARIN540]
  IF ~  !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~А что если я смогу убить Арибет и Маугрима?~ GOTO 51
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 69 // from: 60.1
  SAY ~Одно дело - говорить, что закон всегда прав, <CHARNAME>. Но для всякого правила есть исключения.~ [AARIN544]
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 70 // from: 60.2
  SAY ~Такая надежда есть. Мне кажется, лорд Нашер хорошо подумает, прежде чем решится казнить Арибет. Возможно, он даже оставит ее в живых, если Невервинтеру удастся пережить это вторжение.~ [AARIN547]
  IF ~~ THEN REPLY ~Она заслуживает смерти за то, что сделала!~ GOTO 61
  IF ~~ THEN REPLY ~Ее смерть только продолжит порочный круг мщения и кровопролития.~ GOTO 62
END

IF ~~ THEN BEGIN 71 // from: 61.1
  SAY ~Лорда Нашера до сих пор волнует казнь Фентика. Также, как и Арибет. Возможно, получи он второй шанс, он поступил бы по-другому.~ [AARIN552]
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 72 // from: 62.1
  SAY ~Я не могу не согласиться с тобой, <CHARNAME>... Но все не так просто. На преступления Арибет не получится просто закрыть глаза. Слава богам, что не мы должны решать ее судьбу.~ [AARIN551]
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 69.1
  SAY ~Казнь Фентика была оправдана законом, но даже когда лорд Нашер читал приговор, он понимал, что в этом случае справедливости не удалось восторжествовать.~ [AARIN545]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY ~Казнь Фентика породила злобу и желание мстить. Все очень просто, по этим же причинам и Арибет предала нас. Лорд Нашер прекрасно понимает, что мы пожинаем плоды своих же трудов.~ [AARIN546]
  IF ~~ THEN REPLY ~Возможно, он еще может как-то искупить свою вину.~ GOTO 70
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

IF ~~ THEN BEGIN 75 // from: 72.1
  SAY ~Лорда Нашера до сих пор волнует казнь Фентика. Также, как и Арибет. Возможно, получи он второй шанс, он поступил бы по-другому.~ [AARIN552]
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY ~А теперь, после предательства Арибет, ему придется не только признать ее преступление, но и лицом к лицу встретиться с демонами своих же ошибок. Но он хороший человек, и я верю, что он, в конце концов, примет верное и мудрое решение.~ [AARIN553]
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)GlobalLT("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 77 // from:
  SAY ~Мне необходимо полностью сконцентрироваться на организации наших войск, чтобы мы могли отразить следующий штурм со стороны Лускана, <CHARNAME>. Если враг сможет прорваться в Сердце города, все потеряно.~ [AARIN488]
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY ~Боюсь, я смогу уделить вам всего пару минут, хотя постараюсь помочь, чем только смогу.~ [AARIN489]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~У меня есть четвертое Слово Власти.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~Маугрим погиб.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~Хэдралин сообщила мне информацию, о которой, думаю, вам нужно узнать.~ GOTO 18
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~Мне нужно было узнать, как вы держитесь, Аарин.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~Мне пора идти.~ GOTO 22
END

// ------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)Global("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 79 // from:
  SAY ~Ах, любовь моя. Приятно снова видеть тебя. Жаль только, что встречаться приходится при таких обстоятельствах.~ [AARIN487]
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 77.1
  SAY ~Мне необходимо полностью сконцентрироваться на организации наших войск, чтобы мы могли отразить следующий штурм со стороны Лускана, <CHARNAME>. Если враг сможет прорваться в Сердце города, все потеряно.~ [AARIN488]
  IF ~~ THEN GOTO 78
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~ Dead("Morag")~ THEN BEGIN 81 // from:
  SAY ~Это огромная честь,разговаривать с Вами. Отныне Вы герой Невервинтера, Ваше имя навсегда бкдет записано в историю города!~
  IF ~~ THEN EXIT
END

