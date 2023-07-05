// Доки Таверна Сиди Джалек  Полуорк  Веселый полуорк в форме Кровавого Моряка. Он внимательно присматривает за человеком рядом с ним... и героически потребляет эль в жутких объемах.
BEGIN ~JALEK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)RandomNum(2,1)!HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY ~Что ж, опять все суют нос в мои дела. Хочешь испытать удачу? Выпьем вместе? Хочешь завоевать мое уважение?!~ [JALEK51]
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Отлично! Начнем с невервинтерского "Матросского спирта". Его дают кружками, специальное предложение в Таверне Сиди. Вперед!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CON)~ THEN REPLY ~До дна!~ GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CON)~ THEN REPLY ~До дна!~ GOTO 5
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Еще бы. Но большие карманы здесь не вызывают уважения. Мы уважаем силу. Можешь перепить меня, а?!~
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Так я и думал. Один блеф. Возвращайся, когда наберешься храбрости.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~А, неплохо. Не думал, что ты это выдержишь. Как насчет "Портовой сивухи"?  Отличное пойло, это я тебе говорю!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CON)~ THEN REPLY ~Напьемся!~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CON)~ THEN REPLY ~Напьемся!~ GOTO 7
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Ха! Свалиться после первой! Что же ты за <MALEFEMALE>? Смешно. Зря только время на тебя трачу. Я так и думал. Иди, прогуляйся, тупица. Здесь тебе не место - иди пей из фарфоровых чашечек.~
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(Myself),PlayDead(30))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Ух ты! Как надо! Не так плохо! В таком случае раунд третий! "Кровь орка", и нос не зажимать!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CON)~ THEN REPLY ~Это легко. Поехали!~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CON)~ THEN REPLY ~Это легко. Поехали!~ GOTO 7
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~Э, надо было тебе присесть, пока была возможность. Мне кажется, ты сейчас об пол грянешься, насколько я вижу. Я так и думал. Иди, прогуляйся, тупица. Здесь тебе не место - иди пей из фарфоровых чашечек.~
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(Myself),PlayDead(30))~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~Хорошо, теперь давай по-серьезному! Как насчет... "Красноглазого гнома"?! Он падает, как обвал тебе на голову!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CON)~ THEN REPLY ~Будем здоровы!~ GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CON)~ THEN REPLY ~Будем здоровы!~ GOTO 7
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Посмотрите-ка на это! Получилось! Может, ты и ничего. Мне все равно, кто ты, но если ты можешь так пить, ты мне друг. А теперь, как насчет... о... тайского "Огненного сока"? Сожжет тебя изнутри! Хватит в твоей башке безумства, чтобы продолжить?!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),16,CON)~ THEN REPLY ~Правильно! Ты и я, до дна!~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),17,CON)~ THEN REPLY ~Правильно! Ты и я, до дна!~ GOTO 11
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~Это просто нев... Как насчет этого?! Так... ты хочешь продолжить и выпить... сырное вино "Смерть Катоблепаса"?! Или тебе уже хватит?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)~ THEN REPLY ~Со мной все в порядке! Еще глоток!~ GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)~ THEN REPLY ~Со мной все в порядке! Еще глоток!~ GOTO 11
  IF ~~ THEN REPLY ~Ээ, кажется, мне стоит отказаться.~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~Да, тебе нужно было присесть. И все же, тебе удалось доказать мне свою силу. Все, что тебе наливали после «Красноглазого гнома», это было лишь чтобы проверить, сколько в тебе безумия. Эй, тебе надо поговорить с моим другом Кристовом. Покажи ему, как нужно расслабляться. Он слишком серьезный.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.3
  SAY ~Да, думаю, тебе удалось доказать свою силу. То есть, после "Красноглазого гнома" тебе наливали, лишь чтобы проверить, сколько в тебе безумия. Эй, тебе надо поговорить с моим другом Кристовом. Покажи ему, как нужно расслабляться. Он слишком серьезный. И, э, по правде говоря, мне уже не очень хочется пробовать следующий напиток. Э. Эту штуку и в руки-то взять страшно.~
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY ~Что ж... кажется, мы играем... всерьез. Хорошо, тогда прямо из недр земли откровенно ядовитая смесь... текила темных эльфов.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),18,CON)~ THEN REPLY ~Ты же не собираешься останавливаться? Еще!~ GOTO 15
  IF ~  CheckStatLT(LastTalkedToBy(Myself),19,CON)~ THEN REPLY ~Ты же не собираешься останавливаться? Еще!~ GOTO 11
  IF ~~ THEN REPLY ~Спасибо. Может, теперь я ненадолго присяду.~ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY ~И, э, по правде говоря, мне уже не очень хочется пробовать следующий напиток. Э. Эту штуку и в руки-то взять страшно.~
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)ActionOverride(LastTalkedToBy(Myself),PlayDead(12))~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~Хорошо... Не то чтобы я пьян... но вы хотите прекратить... или попробуете... "Крик гарпии"! Вы не представляете... весь ужас...~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),19,CON)~ THEN REPLY ~О! Да они разбавляют! Еще одну!~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY ~О! Да они разбавляют! Еще одну!~ GOTO 11
  IF ~~ THEN REPLY ~Спасибо. Может, теперь я ненадолго присяду.~ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY ~Вот бес... ладно... хочешь поиграть... *ик*... ладно... Наизлейшая... отвратительная... черная желчь земли... Бутылка... "Скуррда".~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY ~Через рот и прямо в горло!~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),21,CON)~ THEN REPLY ~Через рот и прямо в горло!~ GOTO 35
  IF ~~ THEN REPLY ~Что в Скуррде?~ GOTO 18
  IF ~~ THEN REPLY ~Спасибо. Может, теперь я ненадолго присяду.~ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY ~Выродок су...~
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(36000)PlayDead(12)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.2
  SAY ~Хе... я знал, что ты не... э...~
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)ActionOverride(LastTalkedToBy(Myself),PlayDead(12))~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.3
  SAY ~Что такого в "Скуррде"? Действительно, что. "Скуррд"... просто действует на то... чему может принести больший вред. Коварнейшая дрянь. Его нельзя давать нюхать старикам... нельзя давать в руки детям... Это "Скуррд", и горе тому, кто рискнет попробовать его на вкус.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY ~Через рот и прямо в горло!~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),21,CON)~ THEN REPLY ~Через рот и прямо в горло!~ GOTO 11
  IF ~~ THEN REPLY ~Спасибо. Может, теперь я ненадолго присяду.~ GOTO 12
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)RandomNum(2,2)!HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 19 // from:
  SAY ~Ты кто, тупица? Ты не знаешь, что не стоит никогда отвлекать «Кровавого моряка», пока он пьет?~ [JALEK53]
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 20 // from:
  SAY ~Хмм... я тебя знаю? На тебе форма, но я не узнаю тебя в лицо. Ты давно в кровавых моряках, <GIRLBOY>?~ [JALEK52]
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~[Ложь] Недавно. Мне удалось заменить жертву чумы.~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~[Ложь] Недавно. Мне удалось заменить жертву чумы.~ GOTO 22
  IF ~~ THEN REPLY ~Мне просто нужна информация. Вот и все.~ GOTO 23
  IF ~~ THEN REPLY ~Я не "Кровавый моряк". Я здесь, как городской страж.~ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~Что ж, хорошо, полагаю, ты неплохой человек... хватит ли у тебя силенок, вот что интересно. Хочешь сразиться в выпивке? Можешь заслужить мое уважение!~
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY ~Нет, не думаю. Мне кажется, передо мной стоит проходимец, который только хочет к нам присоединиться. Думаешь, ты соответствуешь нашим стандартам?! Хочешь сразиться в выпивке? Можешь заслужить мое уважение!~
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY ~Так это твоя форма или нет? Мне кажется, ты не соответствуешь нашим стандартам. По крайней мере, пока не перепьешь меня! Что, слабо?~
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY ~Вы не туда попали. Мы здесь не любим городских чиновников. Если конечно ты не согласишься выпить с нами! На спор, а! Слабо?~
  IF ~~ THEN REPLY ~А ну давай, кто кого перепьет, нет проблем!~ GOTO 1
  IF ~~ THEN REPLY ~Мне просто нужна информация. Я с радостью вам заплачу.~ GOTO 2
  IF ~~ THEN REPLY ~Я пас. Мне не нужны неприятности.~ GOTO 3
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY ~Вот бесова штука, мне такого еще не приходилось видеть. Со мной и Кристовом у тебя проблем не будет. Это точно.~ [JALEK54]
  IF ~~ THEN REPLY ~У меня есть пара вопросов.~ GOTO 26
  IF ~~ THEN REPLY ~Спасибо за ваше такое важное одобрение.~ GOTO 27
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY ~Меня мало что волнует, дружище, но я отвечу на вопросы, если смогу.~
  IF ~~ THEN REPLY ~Зачем вы здесь? Что вы делаете?~ GOTO 29
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 30
  IF ~~ THEN REPLY ~Кто такой Кристов?~ GOTO 31
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY ~Никто не говорил, что это будет легко.~
  IF ~~ THEN REPLY ~У меня есть пара вопросов.~ GOTO 26
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY ~Удачи.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY ~Я просто кровавый моряк, дружище. Иногда выполняю небольшие поручения, и иногда присматриваю за новичками. Как Кристов.~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 30
  IF ~~ THEN REPLY ~Кто такой Кристов?~ GOTO 31
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY ~Здесь должен проводиться аукцион, но мне об этом мало что известно. Кто знает, что запланировал Венгаул?~
  IF ~~ THEN REPLY ~Венгаул? Где он?~ GOTO 32
  IF ~~ THEN REPLY ~Вернемся к другим вопросам.~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY ~Он новичок. Мне нужно за ним присматривать... может, расспрашивать людей, с которыми он разговаривает. Это несложно. Он практически ни с кем не общается. Может, тебе стоит поговорить с ним. Ему нужно расслабиться. Со мной у тебя проблем не будет. После такой-то проверки на выносливость.~
  IF ~~ THEN REPLY ~Зачем вы здесь? Что вы делаете?~ GOTO 29
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 30
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY ~Не знаю. Он опаздывает, кажется. Каллик отправился поговорить с ним, или что-то в этом роде. Вид у него был недовольный.~
  IF ~~ THEN REPLY ~Кто такой Каллик?~ GOTO 33
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~Каллик - заместитель командира "Кровавых моряков". Он не так дружелюбен, как Венгаул. Да, это точно.~
  IF ~~ THEN REPLY ~До свидания.~ GOTO 28
END

// ----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 34 // from:
  SAY ~Вечеринка почти закончилась. Нечего тут больше делать.~ [JALEK50]
  IF ~~ THEN EXIT
END









