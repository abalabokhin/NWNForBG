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
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Странно. Мне казалось, даже существо с таким ограниченным интеллектом должно было слышать обо мне. Я Эльтура Сарптил, маг гильдии звездного плаща в Невервинтере.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Откуда ты знаешь мое имя?~ GOTO 3
  IF ~~ THEN REPLY ~Почему тут находится отделение Гильдии Звездного Плаща?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Да ладно, <CHARNAME>, Я же владычица таинств. С моими способностями подобная информация добывается очень просто. Итак, чем я могу тебе помочь?~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~~ THEN REPLY ~Почему тут находится отделение Гильдии Звездного Плаща?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Не позволяй привычному представлению о нелюдимых волшебниках в башнях повлиять на твои суждения обо всех, кто занимается магией, чтобы заработать на жизнь. Невервинтер в беде и наша гильдия предложила свою помощь. Аарин Генд попросил нас приехать сюда, чтобы мы могли помочь в ведении войны, а также обеспечить всем необходимым искателей приключений, которые ищут таинственные Слова Власти. Гильдия с удовольствием поможет тем, кто пытается спасти наш город.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Кто ты?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~Откуда ты знаешь мое имя?~ GOTO 3
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу приобрести магические припасы.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~Я хочу воспользоваться вашей лабораторией.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Разумеется, <CHARNAME>. Здесь ты найдешь все, что может пригодиться магу.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~Разумеется, <CHARNAME>, хотя мне кажется, большая часть этих вещей пригодится лишь тем, кто практикует магию.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY ~Плащ члена гильдии дает тебе неограниченный доступ ко всему, что есть в распоряжении гильдии, <CHARNAME>, однако, если у тебя нет книги создания предметов, я сомневаюсь, что тебе имеет смысл входить в лабораторию.~
  IF ~~ THEN REPLY ~Неважно, я вернусь позже.~ GOTO 10
  IF ~~ THEN REPLY ~Мне бы хотелось войти в лабораторию.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 1.7
  SAY ~Чтобы воспользоваться лабораторией, нужно заплатить взнос. В конце концов, гильдия должна каким-то образом компенсировать стоимость товаров и магических компонентов. Чтобы войти, нужно заплатить 2000 золотых. Если честно, мне, пожалуй, стоит предупредить тебя о том, что тебе будет несколько затруднительно воспользоваться лабораторией, если у тебя с собой нет книги, в которой описывается процесс создания магических предметов. Ужасно было бы, если бы твои деньги были потрачены впустую.~
  IF ~~ THEN REPLY ~Неважно, я вернусь позже.~ GOTO 10
  IF ~  PartyGoldGT(1999)~ THEN REPLY ~Я заплачу взнос - 2000 золотых.~ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 1.8
  SAY ~Как я уже объяснила, лаборатория предназначается только для тех, кто практикует магию. Только маги и чародеи могут войти туда. А теперь ступай и докучай кому-нибудь еще.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY ~Как пожелаешь. Прощай, <CHARNAME>. Может статься, наши пути еще пересекутся.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Конечно! Ты член гильдии, и это твое право. Дверь защищена сильным заклинанием, но ты можешь войти в лабораторию, воспользовавшись белым порталом.~
  IF ~~ THEN DO ~SetGlobal("ToLab","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY ~Как хочешь. Дверь запечатана с помощью особой защитной магии. Чтобы попасть в лабораторию, тебе надо войти в белый портал.~
  IF ~~ THEN DO ~SetGlobal("ToLab","MYAREA",1)TakePartyGold(2000)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY ~Добро пожаловать, <CHARNAME>, в это временное отделение гильдии звездного плаща. Как правило, тайное знание нашей гильдии передается только ее членам, но Аарин Генд попросил меня отказаться от этих формальностей, учитывая обстоятельства, в которых мы все находимся.~ [ELTUR057]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(Player1,MAGE_ALL)IsGabber(Player1)~ THEN BEGIN 14 // from:
  SAY ~Приветствую, <CHARNAME>. Обычно я не веду дела с теми, у кого нет магического опыта, но Аарин Генд попросил меня предоставить все, что у меня есть любому, лишь бы это помогло прекратить войну.~ [ELTUR059]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 15 // from:
  SAY ~Приветствую, рада вас видеть. Но где же <CHARNAME>. Я бы предпочла разговаривать с ним~
  IF ~~ THEN EXIT
END

