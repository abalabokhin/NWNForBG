// Центр Невервинтера  Дом   Простолюдин человек   Эта женщина принадлежит к бедной части среднего класса жителей Невервинтера. Она одета просто, но опрятно. Она выглядит очень подавленной всем, что происходит вокруг.

BEGIN ~FEMACOM3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Что это вы забыли у меня дома? Пожалуйста, уходите.~
  IF ~~ THEN REPLY ~Я городской стражник на службе у Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Это еще не значит, что можно вламываться в мой дом... или нет? Я отвечу на ваши вопросы, но потом вы немедленно уберетесь.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Нельзя вот так вваливаться к людям в дом и приставать с вопросами! Кто дал вам на это право?~
  IF ~~ THEN REPLY ~Я городской стражник на службе у Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Вы полагаете, мне придется с этим смириться? Что вам от меня нужно? Зачем вы нарушаете покой моего скромного дома?~
  IF ~~ THEN REPLY ~Я городской стражник на службе у Арибет.~ GOTO 1
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Спасибо. В лучшие времена я была бы рада... посетителям, но не сейчас.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Я не понимаю, о чем вы спрашиваете. Город-то большой.~
  IF ~~ THEN REPLY ~Что в этом городе за районы?~ GOTO 11
  IF ~~ THEN REPLY ~Что вы знаете о правителях Невервинтера?~ GOTO 12
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Прошу вас, не упоминайте об этом в моем доме. Мне повезло, что меня это обошло стороной, и я не хочу искушать судьбу.~
  IF ~~ THEN REPLY ~Что слышно об экспериментах с исцелением?~ GOTO 14
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Вообще-то, нет. Я слышу лишь о чуме и смерти. И этого вполне хватает. Я не хочу знать о том, что еще происходит.~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Прощайте. Пожалуйста, покиньте мой дом так же, как пришли.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Со мной этот номер не пройдет. Меня уже ограбили. У меня ничего не осталось, так что говори, что тебе надо, и проваливай!~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY ~И это все из-за золота? В воздухе носится чума, люди умирают на улицах, а ты хочешь золота? Какое же ты ничтожество!~
  IF ~~ THEN REPLY ~Заткнись! Отдавай свое золото, а не то я тебя прикончу!~ GOTO 17
  IF ~~ THEN REPLY ~Приношу извинения. Я состою в страже и служу леди Арибет.~ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Ну, я живу в Сердце города и почти не выбираюсь оттуда. Есть четыре других района, но мне незачем ходить туда. Это Гнездо Нищих, район порта, полуостров и Черное озеро. О них я могу немного рассказать.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~О, я об этом почти ничего не знаю. Лорд Нашер следит за порядком в городе, а больше мне и не надо. Он хороший человек.~
  IF ~~ THEN REPLY ~Как Лорд Нашер справляется с чумой?~ GOTO 15
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY ~Хорошо, я поговорю с вами. Надеюсь, это не займет много времени?~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY ~Хельмиты говорят, что их благословления могут исцелить. Не знаю. Каждый день моих соседей становится все меньше и меньше.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY ~Ну, его сейчас почти не видно. Замок Невер заперт, чтобы туда не проникла чума. Уверен, он делает все, что в его силах. Наверное, за него теперь леди Арибет. Хорошая женщина. Держит народ под контролем.~
  IF ~~ THEN REPLY ~Как леди Арибет справляется с чумой?~ GOTO 16
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY ~О, она не знает усталости. Она все организует и... заботится об умерших. Должно быть, эта работа ужасно ее угнетает. Стражников не хватает, знаете ли. Хельмиты подменяют их, наверное, но я не знаю точно, чем они занимаются.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Не надо! Пожалуйста! Я только хочу пережить чуму... Я жить хочу... забирай мои деньги... все забирай... и уходи отсюда.~
  IF ~~ THEN DO ~GiveGoldForce(100)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY ~А что? Вы сейчас здесь и находитесь. Что, просто погулять нельзя? Надо было вломиться в мой дом чтобы это узнать?~
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY ~О, это самый бедный квартал. Чума там бесчинствует сильнее всего, и мне даже говорили, что у них там зомби поднялись из могил. Ты себе представляешь?~
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY ~Я слышала, это очень оживленное, но довольно неприятное место. На кораблях приплывает много чужеземцев. И пиратов.~
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY ~Хотела бы я рассказать вам о Черном озере, да не могу. Люди, что живут там, не скажут тебе даже, который час. Надутые аристократы.~
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 11.5
  SAY ~Я ничего не знаю о районе полуострова. Нормальные люди держатся от него подальше. Там находится тюрьма.~
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN GOTO 32
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 20.1
  SAY ~Это самый бедный район. Я стараюсь не думать о нем, правда. Нагоняет тоску, особенно с этой Воющей чумой...~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY ~Похоже, кто-то из новобранцев городской стражи уже разобрался с ними, но все же... зомби! Представить себе не могу...~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~Похоже, там теперь повсюду воры, и еще начался какой-то бунт среди Кровавых Моряков.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY ~Вообще-то я про порт ничего не знаю. Но сейчас все только и говорят про то, как кто-то из новобранцев городского ополчения сошелся лицом к лицу с самим стариком Венгаулом Кровавым Парусом!~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY ~Я даже и не смотрю в сторону Черного Озера. Говорят, кто-то из этих жадных богатеев копит запасы продовольствия и скрывает их от нас, от тех, кто в них нуждается!~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY ~Я даже и не смотрю в сторону Черного Озера. Говорят, кто-то из этих жадных богатеев копит запасы продовольствия и скрывает их от нас, от тех, кто в них нуждается! Думается мне, кто-то положил этому конец, но это их не извиняет. Ненавижу этих надутых сквалыг!~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажи мне о районе Полуострова.~ GOTO 23
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY ~Поговаривают, странные вещи творились на полуострове и в тамошней тюрьме. Говорят даже, городская стража ее вычистила, потому что главный надзиратель с ума сошел!~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 23.2
  SAY ~Поговаривают, странные вещи творились на полуострове и в тамошней тюрьме. Говорят даже, городская стража ее вычистила, потому что главный надзиратель с ума сошел! Думаю, там сейчас стало поспокойнее, но я даже и знать не хочу, в чем дело у них было. У меня своих забот полон рот.~
  IF ~~ THEN REPLY ~Расскажите мне о Сердце города.~ GOTO 19
  IF ~~ THEN REPLY ~Расскажите мне о Гнезде Нищих.~ GOTO 20
  IF ~~ THEN REPLY ~Расскажите мне о портовом районе.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажите мне о районе Черного озера.~ GOTO 22
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 13
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 34 // from:
  SAY ~Да? Вам еще что-нибудь нужно? Я понадеялась, что мои ответы вас удовлетворили, и вы уйдете...~
  IF ~~ THEN REPLY ~Мне нужна информация о Невервинтере.~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY ~В домах есть люди, а у людей - золото!~ DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY ~Это как же называется? Мне угрожают в моем же доме! Вор! Бандит! Вон отсюда!~
  IF ~~ THEN EXIT
END

