BEGIN ~DAELANP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~Ты проявил себя совершенно аморальной личностью. Какое счастье, что я ухожу.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("DaelanEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ты точно этого хочешь? Я не верну тебе заплаченные деньги. Ты действительно собираешься уволить меня?~
  IF ~~ THEN REPLY ~Да. Иди.~ GOTO 1
  IF ~~ THEN REPLY ~Нет. Останься.~ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Что ж, наши пути разделились, хотя я подожду тебя на случай, если ты передумаешь и снова захочешь взять меня в команду. Прощай. Где мы можем встретиться, если ты передумаешь?~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~Возвращайся на ярмарку мечей.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Daelan",[806.360])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Я найду тебя в казармах Кендрака.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Daelan",[439.313])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("DaelanOut","GLOBAL",1)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("DaelanEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я ждал тебя - я догадывался, что ты вернешься. Желаешь ли ты, чтобы я опять присоединился к тебе?~ [DAELAN60]
  IF ~~ THEN REPLY ~Да.~ GOTO 3
  IF ~~ THEN REPLY ~Нет.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Мое оружие в твоем распоряжении.~
  IF ~~ THEN DO ~SetGlobal("DaelanOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Если передумаешь, я буду здесь.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY ~<CHARNAME>! Как я рад видеть тебя снова, хотя и не сказать, чтобы я этого не ожидал. Я слышал, что Арибет наняла тебя, чтобы задавить гнусный культ, выпустивший эту чуму.~ [DAELAN53]
  IF ~~ THEN REPLY ~Какая неожиданность видеть тебя здесь, Даэлан.~ GOTO 23
  IF ~~ THEN REPLY ~Опять ты? Ты что, увязался за мной, как какой-нибудь несчастный потерявшийся щеночек?~ GOTO 24
  IF ~~ THEN REPLY ~До свидания.~ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY ~Я знаю, мы шли разными путями, <CHARNAME>, но, похоже, боги сочли нелишним еще раз свести нас вместе. После того, как наши пути разошлись в Невервинтере, я вернулся в 'Продажные клинки', чтобы предлагать свои умения за плату. Там ко мне обратилась леди Арибет по поручению самого лорда Нашера.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY ~Я благодарен за все, что тебе довелось сделать для меня, <CHARNAME>, но здесь наши пути расходятся. Не обольщайся, Даэлан Красный Тигр принадлежит лишь себе.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY ~Прощайте, <SIRMAAM>. Мое оружие всегда к вашим услугам, если вам потребуется помощь искусного и доблестного воина.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY ~Похоже, лорд Нашер намерен искоренить культ, что принес городу так много страданий. Он приказал всем наемникам Невервинтера собраться в гавани Порт-Лласт, чтобы присоединиться к поискам.~
  IF ~~ THEN REPLY ~Так Арибет и тебя призвала на службу?~ GOTO 27
  IF ~~ THEN REPLY ~Сколько будет стоить нанять тебя?~ GOTO 27
  IF ~~ THEN REPLY ~До свидания.~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~Когда Арибет призвала наемников, нам всем заплатили вперед за наши услуги - хорошо заплатили. Лорд Нашер не экономит на мерах по искоренению этих сектантов. Нам велели просто помогать любому, кто этого потребует. Итак, в связи с этим, могу я что-нибудь для тебя сделать?~
  IF ~~ THEN REPLY ~У тебя есть какие-нибудь сведения о культе, который стоит за Воющей смертью?~ GOTO 28
  IF ~~ THEN REPLY ~Мне бы не помешал хороший боец.~ GOTO 29
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~Я ничего не слышал об этом культе, хотя многие подозревают - как и я - что ответы следует искать в городе Лускан.~
  IF ~~ THEN REPLY ~Лускан?~ GOTO 31
  IF ~~ THEN REPLY ~Что это за город?~ GOTO 31
  IF ~~ THEN REPLY ~До свидания.~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY ~Я буду счастлив служить твоему делу своим оружием.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)SetGlobal("DaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY ~Тогда я должен попрощаться с вами. Если вам когда-нибудь понадобится умелый и доблестный воин, поговорите со мной еще раз. ~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY ~Этот город долго был врагом Невервинтера. Проклятие всего Севера, он широко известен как родной дом для убийц и воров - место, где нет чести! Меня бы не удивило, если бы связи с культом обнаружились в этом логове зла. Могу я тебе чем-нибудь помочь, <CHARNAME>?~
  IF ~~ THEN REPLY ~Мне бы не помешал хороший боец.~ GOTO 29
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 30
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 32 // from:
  SAY ~Приветствую еще раз, <SIRMAAM>. Это я, Даэлан Красный Тигр, воин из утгардтского племени Красного Тигра. Помните? Мне не терпится отомстить культу, что выпустил свою чуму на Невервинтер.~ [DAELAN55]
  IF ~~ THEN REPLY ~Так ты работаешь на Арибет?~ GOTO 33
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 28
  IF ~~ THEN REPLY ~Если тебе так нужна месть, чего ты ждешь, стоя здесь?~ GOTO 34
  IF ~~ THEN REPLY ~До свидания.~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~Похоже, лорд Нашер намерен искоренить культ, что принес городу так много страданий. Он приказал всем наемникам Невервинтера собраться в гавани Порт-Лласт, чтобы присоединиться к поискам. Я ответил на зов без промедления. Я потерял много друзей из-за чумы, и мне не терпится отомстить за их смерть. Подлые трусы, что выпустили это проклятье, должны заплатить.~
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 28
  IF ~~ THEN REPLY ~Если тебе так нужна месть, чего ты ждешь, стоя здесь?~ GOTO 34
  IF ~~ THEN REPLY ~До свидания.~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.3
  SAY ~Мало бы я сделал, если бы рванулся туда в одиночку. Мне приказали явиться сюда и помочь любому, кому может понадобиться моя сила. Твоя репутация хорошо известна, <CHARNAME>. Я не такой великий герой, как ты, но я умелый воин из племени Красного Тигра. Мой народ известен своей храбростью, честью и яростью в бою. Я мог бы сильно тебе помочь в поисках этого культа, если пожелаешь.~
  IF ~~ THEN REPLY ~Лишний боец не помешает. Присоединяйся.~ GOTO 35
  IF ~~ THEN REPLY ~До свидания.~ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~Разумеется, я склонюсь перед твоей волей, <CHARNAME>. Для меня честь послужить делу такого великого героя. Я последую за тобой и будут выполнять твои приказы как можно лучше.~
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)SetGlobal("DaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY ~Если тебе понадобится сильный воин, который бы помогал тебе, возвращайся и поговори со мной. Моя секира действительно может помочь тебе в задании.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END



