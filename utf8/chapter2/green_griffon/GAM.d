// creator  : weidu (version 23700)
// argument : GAM.DLG
// game     : .
// source   : ./override/GAM.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~GAM~

IF ~  NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY ~Да? Я что-то могу для вас сделать?~
  IF ~~ THEN REPLY ~Просто интересно, кто вы.~ GOTO 1
  IF ~~ THEN REPLY ~На вид вы - типичный искатель приключений.~ GOTO 2
  IF ~~ THEN REPLY ~Я пойду.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~Зовут меня Гэм, и здесь я ради состязания. Этого должно быть достаточно для кого угодно.~
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)
~ THEN REPLY ~Состязание? Что это?~ GOTO 3
  IF ~~ THEN REPLY ~Ах да, состязание. Я не думаю, что буду рисковать.~ GOTO 4
  IF ~~ THEN REPLY ~Вообще-то, я тоже собираюсь принять участие в состязании.~ GOTO 5
  IF ~~ THEN REPLY ~Я пойду.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~Может и так. Зовут меня Гэм и здесь я ради состязания, этого должно быть достаточно.~
  IF ~~ THEN REPLY ~Состязание? Что это?~ GOTO 3
  IF ~~ THEN REPLY ~Ах да, состязание. Я не думаю, что буду рисковать.~ GOTO 4
  IF ~~ THEN REPLY ~Вообще-то, я тоже собираюсь принять участие в состязании.~ GOTO 5
  IF ~~ THEN REPLY ~Я пойду.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.0
  SAY ~Это не то, что я могу обсуждать. Насколько я понимаю, здесь это считается не вполне законным.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY ~Возможно, я тоже приму участие в состязании. Расскажите мне о нем.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY ~Возможно, я тоже приму участие в состязании. Расскажите мне о нем.~ GOTO 8
  IF ~~ THEN REPLY ~А за 100 золотых вы мне о нем расскажете?~ GOTO 9
  IF ~~ THEN REPLY ~А. Что ж, это меня совершенно не интересует.~ GOTO 10
  IF ~~ THEN REPLY ~Я пойду.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.1
  SAY ~Дело ваше. Я-то собираюсь получить награду. Всякий, у кого хватает денег, чтобы делать ставки, заслуживает того, чтобы потерять их.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 1.2
  SAY ~Вот как? Тогда, думаю, мы с вами еще столкнемся там, внизу. Удачи вам.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 9.0 3.0
  SAY ~Хмм. Что ж, так или иначе, вы все равно узнаете. Думаю, в этом не будет никакого вреда. Мутамин, владелец этого заведения, сам в свое время был искателем приключений. И здорово разбогател, по крайней мере, так мне говорили. В любом случае, он достаточно богат, чтобы устроить состязание. Под этим местом есть подземелье, в котором полным-полно ловушек и монстров... первый, кто пройдет это подземелье, получит приз.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY ~Но меня об этом не спрашивайте. Поговорите с Мутамином, если вас это интересует.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 3.1
  SAY ~От меня, дружище, вы ничего не узнаете, сказано же. Попытайте счастья у кого-нибудь другого.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Меня ваши деньги не интересуют. Попробуйте сунуть их кому-нибудь другому, может и найдете поболтливее меня.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY ~Прошу прощения. Просто интересно было бы попробовать.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY ~Прошу прощения. Просто интересно было бы попробовать.~ GOTO 8
  IF ~~ THEN REPLY ~Я пойду.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~Нет? Даже удивительно. Впрочем, меня это совершенно не заботит.~
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY ~Занимаюсь своими делами, дружище.~
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY ~Пусть победит сильнейший.~
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY ~Если... если вы можете исцелить меня, дружище, я расскажу вам все, что знаю о том, что ждет вас впереди. Это... чуть меня не убило.~
  IF ~~ THEN REPLY ~Тебя ранили? Как это случилось?~ GOTO 14
  IF ~~ THEN REPLY ~Ты хочешь исцелиться, чтобы дальше участвовать в состязании?~ GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 18
  IF ~~ THEN REPLY ~Да, я могу исцелить тебя.~ DO ~SetGlobal("Promise","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Я постараюсь что-нибудь придумать. Держись.~ GOTO 19
  IF ~~ THEN REPLY ~А мне что за дело?~ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY~Я с радостью расскажу тебе об этом существе... И как, по моему мнению, его можно победить. Если ты меня исцелишь. Пожалуйста... Иначе мне не выжить.~
  IF ~~ THEN REPLY ~Забудь об этом. Мы с тобой соперники в этом лабиринте.~ GOTO 20
  IF ~~ THEN REPLY ~Ты хочешь исцелиться, чтобы дальше участвовать в состязании?~ GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 18
  IF ~~ THEN REPLY ~Да, я могу исцелить тебя.~ EXIT
  IF ~~ THEN REPLY ~Я постараюсь что-нибудь придумать. Держись.~ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.1 13.1
  SAY ~Теперь мне безразлично это состязание. Я просто хочу выбраться отсюда.  Мутамин может оставить себе свои проклятые деньги.~
  IF ~~ THEN REPLY ~Забудь об этом. Мы с тобой соперники в этом лабиринте.~ GOTO 20
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 18
  IF ~~ THEN REPLY ~Да, я могу исцелить тебя.~ EXIT
  IF ~~ THEN REPLY ~Я постараюсь что-нибудь придумать. Держись.~ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1 14.2 13.2
  SAY ~Спасибо... огромное за твою помощь, друг мой. Мне уже казалось, что я умру здесь в этом подземелье.~
  IF ~~ THEN DO ~TakePartyItem("Potn52")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 20.2 15.2 14.3 13.3
  SAY ~Спасибо... огромное за твою помощь, друг мой. Мне уже казалось, что я умру здесь в этом подземелье.~
  IF ~~ THEN DO ~TakePartyItem("Potn55")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.3 15.3 14.4 13.4
  SAY ~Спасибо... огромное за твою помощь, друг мой. Мне уже казалось, что я умру здесь в этом подземелье.~
  IF ~~ THEN DO ~TakePartyItem("Potn08")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 20.5 15.5 14.6 13.6
  SAY ~П-пожалуйста, поторопись. Я... Не хочу здесь умирать, друг мой.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0 14.0 13.7
  SAY ~Пожалуйста... Не оставляй меня здесь умирать, друг мой! Умоляю тебя!~
  IF ~~ THEN REPLY ~Может, мне стоит положить конец твоим страданиям.~ GOTO 21
  IF ~~ THEN REPLY ~Тебе не повезло. Я могу обойтись и без твоей помощи.~ GOTO 21
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~Вот... возьми исцеляющее зелье.~ GOTO 18
  IF ~~ THEN REPLY ~Да, я могу исцелить тебя.~ EXIT
  IF ~~ THEN REPLY ~Я постараюсь что-нибудь придумать. Держись.~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY ~Какая жестокость, <MALEFEMALE>. Молись, чтобы тебя никогда не постигла такая же судьба.~
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",66)
~ EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",2)
~ THEN BEGIN 22 // from:
  SAY ~Спасибо... огромное за твою помощь, друг мой. Мне уже казалось, что я умру здесь в этом подземелье.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY ~В соседнем зале на меня напали невидимые существа. Они обладают большой силой. Мне казалось, у меня достаточно навыков, чтобы справиться с ними, но это не так. Во время битвы одно из них слишком близко подошло к той световой колонне, и... взорвалось. Моя рана лишила меня возможности воспользоваться этим знанием... Но это можешь сделать ты.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY ~Теперь я намереваюсь выбраться отсюда. Вот, возьми в благодарность книгу, которую я здесь нашел. Благодарю еще раз, друг мой. Желаю тебе удачи.~
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",3)
SetGlobal("GamCure","GLOBAL",1)
GiveItemCreate("Book07",LastTalkedToBy,1,0,0)
EscapeArea()
~ EXIT
END

IF ~  AreaCheck("NW2201")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("GamCure","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY ~Спасибо... огромное за твою помощь, друг мой. Мне казалось, что я умру в этом подземелье.~
  IF ~~ THEN EXIT
END
