// Лускан Страж моста Башни Хозяина   В поведении этого стражника угадываются паранойя и мрачная решимость.

BEGIN ~TOWERGRD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TowerDoorOpened","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~Вы не можете перейти мост, не имея на то особого разрешения, гражданин. Пожалуйста, отойдите.~
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 1
  IF ~~ THEN REPLY ~Что за разрешение вам требуется?~ GOTO 2
  IF ~~ THEN REPLY ~Я перейду мост, если захочу.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Этот мост - единственный путь на остров, где находится Башня Хозяина, принадлежащая Братству Таинств, <SIRMAAM>.~
  IF ~~ THEN REPLY ~Братство Таинств?~ GOTO 6
  IF ~~ THEN REPLY ~Должен же быть какой-то способ перейти?~ GOTO 7
  IF ~~ THEN REPLY ~Что за разрешение вам требуется?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Вам нужно письменное разрешение самого Братства Таинств, скрепленное их печатью.~
  IF ~~ THEN REPLY ~Братство Таинств?~ GOTO 6
  IF ~~ THEN REPLY ~Как раздобыть такую вещь?~ GOTO 8
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 1
  IF ~~ THEN REPLY ~Я перейду мост, если захочу.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Не советую. Даже если вы пройдете мимо нас... в чем я сомневаюсь... на мосту стоят сильные охранные заклинания. Чтобы они пропустили вас, нужен пропуск. Вы можете, конечно, попытаться... если хотите.~
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 1
  IF ~~ THEN REPLY ~Что за разрешение вам требуется?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Что?! А ну-ка дайте взглянуть...~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Тогда идите дальше, гражданин.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Да, организация волшебников. Говорят, они управляют Лусканом, но если и так, они делают это тайно. Мы редко видим или слышим их.~
  IF ~~ THEN REPLY ~Должен же быть какой-то способ перейти?~ GOTO 7
  IF ~~ THEN REPLY ~Что за разрешение вам требуется?~ GOTO 2
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Едва ли. Волшебники охраняют свое одиночество магией. Туда не приплыть на лодке, не прокопать туннель, нельзя даже прочесть заклинание, чтобы перенестись туда... Прохода нет, и точка. Если только вас не впустят. По крайней мере, так мне сказали.~
  IF ~~ THEN REPLY ~Что за разрешение вам требуется?~ GOTO 2
  IF ~~ THEN REPLY ~Я перейду мост, если захочу.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~(вздыхает) Оно выдается только волшебниками и только Высшим Капитанам, а также приглашенным сановникам.~
  IF ~~ THEN REPLY ~Что такое Братство Таинств?~ GOTO 6
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 1
  IF ~~ THEN REPLY ~Я перейду мост, если захочу.~ GOTO 3
  IF ~  PartyHasItem("PermitTo")~ THEN REPLY ~У меня есть пропуск. Я - посол из Малхоранда.~ GOTO 4
  IF ~~ THEN REPLY ~Хорошо, я ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~Ну что ж... здесь стоит печать. Она магическая, так что подделать ее нельзя. Очень хорошо, <SIRMAAM>, приношу извинения. За последнюю пару недель Братство Таинств посещали очень немногие сановники, и никого не было из такой дали. Но это неважно. Можете пройти.~
  IF ~~ THEN DO ~SetGlobal("TowerDoorOpened","MYAREA",1)Unlock("Door18")OpenDoor("Door18")~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~Вы можете перейти мост, посол.~
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~Вы, должно быть, вместе с послом из Малхоранда, да? Вы можете перейти мост.~
  IF ~~ THEN EXIT
END

