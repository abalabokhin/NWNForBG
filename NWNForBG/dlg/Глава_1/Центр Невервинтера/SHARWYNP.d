BEGIN ~SHARWYNP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~Мне... мне кажется, ты вовсе не стремишься делать добрые дела, и я сомневаюсь, что снова пойду с тобой, если ты попросишь. Я... не думаю, что мы снова увидимся.~ [Sharbye]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ты так думаешь? Гм. Я не стану помогать там, где во мне не нуждаются, если это действительно то, что тебе нужно.~ [Sharbye]
  IF ~~ THEN REPLY ~Да. Иди.~ GOTO 1
  IF ~~ THEN REPLY ~Нет. Останься.~ GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Что же, тогда прощай. Где мы можем встретиться, если ты передумаешь?~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~Возвращайся на ярмарку мечей.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Sharwyn",[1141.652])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Я найду тебя в казармах Кендрака.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Sharwyn",[945.348])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("SharwynOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY ~Это честно.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я подозревала, что ты скоро здесь появишься. И рада, что оказалась права. Ну что же... Вновь воссоединимся?~ [SHARWY60]
  IF ~~ THEN REPLY ~Да.~ GOTO 3
  IF ~~ THEN REPLY ~Нет.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Хорошо. Пойдем.~
  IF ~~ THEN DO ~SetGlobal("SharwynOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Если передумаешь, я буду здесь.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~Итак, мы снова встретились, <CHARNAME>. Мне сказали, что Арибет наняла вас, чтобы найти последователей культа... Не могу сказать, что удивлена. За вами уже закрепилась порядочная репутация, не так ли?~ [SHARWY53]
  IF ~~ THEN REPLY ~Большой сюрприз тебя здесь видеть, Шервин.~ GOTO 30
  IF ~~ THEN REPLY ~Опять ты? Ты что, следишь за мной?~ GOTO 31
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY ~И это почему же? Лишь потому, что мы не сошлись во взглядах в Невервинтере, я должна исчезнуть с карты Фейруна? Если вы еще не заметили, у нас тут наблюдается нехватка в бравых искателях приключений. Леди Арибет подошла ко мне на Ярмарке Мечей, чтобы нанять меня от лица Лорда Нашера... так же как и тебя, я полагаю.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY ~Будто мне делать больше нечего. Нет уж, у меня свои умения, благодарю вас... и у меня есть свои причины на то, чтобы быть здесь.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY ~Если я вам понадоблюсь, вы знаете, где меня искать.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30 31
  SAY ~Мне кажется, что Лорд Нашер идет на все, чтобы найти этот культ. Поиск в Невервинтере идет полным ходом, и нас, наемников, послали в Порт-Ласт, чтобы мы присоединились к вам и силам Арибет. Повезло же нам.~
  IF ~~ THEN REPLY ~Так Арибет и тебя призвала на службу?~ GOTO 34
  IF ~~ THEN REPLY ~Сколько будет стоить нанять тебя?~ GOTO 34
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.1 33.2
  SAY ~Вообще-то мне заплатили кругленькую сумму за мои услуги Лорду Нашеру. Это еще одна возможность приобрести славу, по-моему... несмотря на то, что мне было приказано просто предложить помощь тебе и Арибет. Итак... тебе нужна моя помощь?~
  IF ~~ THEN REPLY ~У тебя есть какие-нибудь сведения о культе, который стоит за Воющей смертью?~ GOTO 35
  IF ~~ THEN REPLY ~Мне бы пригодился напарник.~ GOTO 36
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~Культ может быть практически где угодно. Может, вам стоит посмотреть среди холмов на перекрестке дорог, сразу при выходе из города. Я не раз слышала о монстрах, совершающих набеги на дороги в округе.~
  IF ~~ THEN REPLY ~Монстры?~ GOTO 37
  IF ~~ THEN REPLY ~Мне бы пригодился напарник.~ GOTO 36
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY ~Своевременный вопрос. Я в вашем распоряжении, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY ~В основном багбиры и орки. Однако говорят, ими управляют люди, что очень странно. В любом случае, с тех пор как Лускан с головой ушел в свои дела, окружающие провинции стали объектом постоянных набегов... но эти монстры действуют более организованно, чем обычно.~
  IF ~~ THEN REPLY ~Мне бы пригодился напарник.~ GOTO 36
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY ~Еще раз здравствуйте, <CHARNAME>. Полагаю, вы помните меня? бард, Шервин? Было довольно скучно стоять и ждать, пока Арибет не возьмется за дело... Лучше бы я сама пока искала этот культ, зарабатывая славу.~ [SHARWY55]
  IF ~~ THEN REPLY ~Так ты работаешь на Арибет?~ GOTO 39
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 35
  IF ~~ THEN REPLY ~Если тебе так нужна слава, то чего тогда ты тут стоишь?~ GOTO 40
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~Разумеется. Лорд Нашер потратился на целую армию, чтобы найти культ. Поиски в Невервинтере это огромная операция. Меня и остальных наемников отправили в эти края на поиски, что меня полностью устраивает. В маленькой команде больше шансов получить славу.~
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 35
  IF ~~ THEN REPLY ~Если тебе так нужна слава, то чего тогда ты тут стоишь?~ GOTO 40
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 40 // from: 38.3
  SAY ~Ну, может, я просто люблю скуку... а может быть, мне приказали помогать вам и Арибет, а других инструкций пока не было... Ну, как? Сделаете здравый шаг, возьмете меня с собой, <CHARNAME>? Это куда интереснее, чем просто околачиваться тут.~
  IF ~~ THEN REPLY ~Лишняя пара рук мне не помешает. Ты принята.~ GOTO 41
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY ~Отлично. Тогда я в вашем распоряжении. Я последую за вами, пока вы будете нуждаться во мне, <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

