// Колодец Беорунна: Анклав Гильдии Звездного Плаща   Эльтура Сарптил  Человек   Представительница гильдии Звездного Плаща делает все возможное, чтобы сохранить мужественный вид перед лицом нависающего над ее любимым городом рока.

BEGIN ~ELTURA3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать, <CHARNAME>, в это временное отделение гильдии звездного плаща. Не сомневайся, даже здесь твой плащ члена гильдии даст тебе все привилегии, которые обычно предоставляет наша гильдия.~ [ELTUR056]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ты ищешь какой-нибудь определенный предмет или какие-то особенные заклинания? Или, быть может, воспользуешься маленькой лабораторией, которую я тут устроила?~ [ELTUR058]
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Откуда ты знаешь мое имя?~ GOTO 3
  IF ~~ THEN REPLY ~Почему тут находится отделение Гильдии Звездного Плаща?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 13
  IF ~~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Странно. Мне казалось, даже существо с таким ограниченным интеллектом должно было слышать обо мне. Я Эльтура Сарптил, маг гильдии звездного плаща в Невервинтере.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Откуда ты знаешь мое имя?~ GOTO 3
  IF ~~ THEN REPLY ~Почему тут находится отделение Гильдии Звездного Плаща?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 13
  IF ~~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Да ладно, <CHARNAME>, Я же владычица таинств. С моими способностями подобная информация добывается очень просто. Итак, чем я могу тебе помочь?~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~~ THEN REPLY ~Почему тут находится отделение Гильдии Звездного Плаща?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 13
  IF ~~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Не позволяй привычному представлению о нелюдимых волшебниках в башнях повлиять на твои суждения обо всех, кто занимается магией, чтобы заработать на жизнь. Невервинтер в беде и наша гильдия предложила свою помощь. Аарин Генд попросил нас приехать сюда, чтобы мы могли помочь в ведении войны, а также обеспечить всем необходимым искателей приключений, которые ищут таинственные Слова Власти. Гильдия с удовольствием поможет тем, кто пытается спасти наш город.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Откуда ты знаешь мое имя?~ GOTO 3
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические вещи.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести заклинания.~ GOTO 13
  IF ~~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Разумеется, <CHARNAME>. Здесь ты найдешь все, что может пригодиться магу.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4
  SAY ~Разумеется, <CHARNAME>. Здесь ты найдешь все, что может пригодиться магу.~
  IF ~~ THEN DO ~  StartStore("ELTURA4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~Разумеется, <CHARNAME>, хотя мне кажется, большая часть этих вещей пригодится лишь тем, кто практикует магию.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5
  SAY ~Разумеется, <CHARNAME>, хотя мне кажется, эти свитки пригодится лишь тем, кто практикует магию.~
  IF ~~ THEN DO ~  StartStore("ELTURA4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY ~Вы имеете неограниченный доступ ко всему, что есть в распоряжении гильдии, <CHARNAME>, однако, если у тебя нет книги создания предметов, я сомневаюсь, что у тебя что-нибудь получится. Для смешивания ингридиентов используйте чашу в центре зала~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.9
  SAY ~Как пожелаешь. Прощай, <CHARNAME>. Может статься, наши пути еще пересекутся.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY ~Добро пожаловать, <CHARNAME>, в это временное отделение гильдии звездного плаща. Как правило, тайное знание нашей гильдии передается только ее членам, но Аарин Генд попросил меня отказаться от этих формальностей, учитывая обстоятельства, в которых мы все находимся.~ [ELTUR057]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(Player1,MAGE_ALL)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~Приветствую, <CHARNAME>. Обычно я не веду дела с теми, у кого нет магического опыта, но Аарин Генд попросил меня предоставить все, что у меня есть любому, лишь бы это помогло прекратить войну.~ [ELTUR059]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY ~Приветствую, рада вас видеть. Но где же <CHARNAME>. Я бы предпочла разговаривать с ним~
  IF ~~ THEN EXIT
END

