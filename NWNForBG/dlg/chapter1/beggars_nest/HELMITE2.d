// Гнездо нищих Храм Хельма Жрец Хельма   Человек Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается.

BEGIN ~HELMITE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Приветствую, и добро пожаловать в этот небольшой дом Хельма. Вы желаете получить благословение в эти беспокойные времена?~
  IF ~~ THEN REPLY ~Я приму это предложение, спасибо.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Благословляйте, но я сомневаюсь, что от этого будет толк.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Простите меня, но я откажусь. Спасибо.~ GOTO 2
  IF ~~ THEN REPLY ~Меня не интересуют ваши пустые благословения.~ GOTO 2
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Это бальзам для души. Вы почувствуете благость его, как и любое жаждущее сердце, уверяю вас. А теперь скажите, что в действительности привело вас сюда? Я чувствую, на вашей душе лежит тяжкий груз.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 7
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Нет, я вижу, что вы преследуете другую цель. Чем могу помочь?~
  IF ~~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 5
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 6
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY ~Храм предлагает услуги, если вам интересно.~
  IF ~~ THEN DO ~StartStore("Helmite",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Насколько я понимаю, это одно из созданий Уотердипа... йань-ти. Такие ужасные существа. Я не могу сказать, почему оно так поступило. В конечном счете это не имеет значения. Она мертва, и зомби больше никому не угрожают. Конечно, люди все еще будут сюда приходить. Эпидемия чумы еще не закончилась.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 7
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Зомби? Я знаю немного помимо того, что их отвратительные атаки на город уничтожают надежду всех жителей Невервинтера. Однако если вы найдете виновного, скажите ему, что он помог городу, даже если хотел уничтожить его.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 7
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Что ж, насколько я понимаю, Гнезду нищих нежить уже не угрожает, так что можно спокойно выйти наружу. Конечно, я все еще приветствую каждого, кто жаждет познать слово Хельма. Чума все еще угрожает нам. Мы еще далеко не в безопасности.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 5
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~Абсолютно. Это убежище от нежити. Они не могут сюда войти благодаря благой силе моих благословений. Я лично слежу за безопасностью всех, кто приходит сюда, и служу каждому, без различий. Мы заботимся обо всех одинаково.~
  IF ~~ THEN REPLY ~Это единственное убежище? Люди могли укрыться где-нибудь в другом месте.~ GOTO 10
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 5
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY ~Пока нет, но надежда сильна. Каждое благословение облегчает душу, даже если не может предотвратить разрушение тела. Великое Кладбище теперь буквально везде, но мы не сдаемся. Надежда спасет этот город. Вы еще увидите.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Люди будут в безопасности, если я приведу их сюда?~ GOTO 7
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY ~Как пожелаете, но эти двери всегда будут для вас открыты. Здесь благословение может получить любой желающий.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~О! Я предлагаю надежду. Некоторые предпочитают толпиться в мерзкой таверне "Серебряный Змей", но я не могу назвать то место безопасным прибежищем. Только здесь люди могут получить необходимые благословения. Только здесь мы понимаем, что есть чума.~
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY ~Вы знаете, кто создает зомби?~ GOTO 5
  IF ~~ THEN REPLY ~Ваши благословения повлияли на развитие мора?~ GOTO 8
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 9
END

// -------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 11 // from:
  SAY ~Вижу, вы пришли в поисках убежища. Вы желаете получить мое благословение?~
  IF ~~ THEN REPLY ~Я приму это предложение, спасибо.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Благословляйте, но я сомневаюсь, что от этого будет толк.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Простите меня, но я откажусь. Спасибо.~ GOTO 2
  IF ~~ THEN REPLY ~Меня не интересуют ваши пустые благословения.~ GOTO 2
  IF ~~ THEN REPLY ~Вы оказываете основные услуги храма?~ GOTO 3
END

