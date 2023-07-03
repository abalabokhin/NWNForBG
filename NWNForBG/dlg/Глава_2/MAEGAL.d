// Южная дорога - Маегал - дух героя из клана Мириалис

BEGIN ~MAEGAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Претендент прибыл. Мое дело... и мой народ... давным-давно исчезли, но даже у духов есть гордость, и я получу уважение, которого заслуживаю.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ответь на мой вопрос и докажи, что именно тебе назначено стать моим преемником. А если не сможешь, я сожгу тебя за оскорбление, нанесенное мне.~
  IF ~~ THEN REPLY ~Я принимаю твой вызов. Говори.~ GOTO 2
  IF ~~ THEN REPLY ~Прошу прощения за беспокойство. Я ухожу.~ GOTO 3
  IF ~~ THEN REPLY ~Я здесь не для того, чтобы в игрушки играть! Защищайся!~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Да будет так. Покажи же, насколько глубоки твои знания моего происхождения. Мой родной клан, обратившийся ныне в прах, как и я... Как он назывался?~
  IF ~  PartyHasItem("Treatise")~ THEN REPLY ~Клан Мириалис.~ GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~Я попробую. Давным-давно Исчезнувший Клан?~ GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~Я попробую. Давным-давно Исчезнувший Клан?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~Хорошо, клан... э... Клан Большой Утки?~ GOTO 6
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~Хорошо, клан... э... Клан Большой Утки?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~Э... клан? Ну, наверное... Клан... Славных Ребят... в Шляпах?~ GOTO 7
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~Э... клан? Ну, наверное... Клан... Славных Ребят... в Шляпах?~ GOTO 18
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~Я не знаю. Как мне это выяснить?~ GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~Я не знаю. Как мне это выяснить?~ GOTO 18
  IF ~~ THEN REPLY ~Только и всего? Дурацкая загадка?~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Ты по рассуждению своему опускаешь руки?! Отвратительно!~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT // ReallyForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE) CreateVisualEffectObject("SPUNHOLY",Myself)
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Ты напрасно угрожаешь мне. Я лишь тень, и ты не в силах причинить мне вред. Ты ничего не получишь.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Это... правильно. Ответ был дан без колебаний. Откуда тебе известна эта важная информация? Должно быть, слава обо мне простирается далеко.~
  IF ~~ THEN REPLY ~Показать Маэгелю книгу, которую вы нашли на трупе.~ GOTO 10
  IF ~~ THEN REPLY ~Что? А! А, ну конечно. Очень далеко.~ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY ~Ты просто гадаешь! Окажи мне уважение и отправляйся искать то, что мне нужно! Ищи и обрящешь! А если вздумаешь еще раз насмехаться надо мной, я уже не буду так снисходителен!~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY ~Ты нарочно! Не смей потешаться надо моей судьбой! Найди ответ, и я вознагражу тебя! Посмейся надо мной еще раз -- и будешь страдать вечно!~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY ~Это поход за моим наследием, да. Если бы тебе было известно что-то о славе моего утраченного королевства, я отдал бы тебе то, что принадлежит мне. А теперь гори и сожалей о своей ошибке.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)SetGlobal("Warning","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY ~Она... она не дурацкая, это хорошая загадка. Так я буду точно знать, известны ли тебе мои деяния, и можешь ли ты получить то, что принадлежит мне.~
  IF ~  PartyHasItem("Treatise")~ THEN REPLY ~Клан Мириалис.~ GOTO 5
  IF ~  Global("Warning","LOCALS",0)~ THEN REPLY ~Я не знаю. Как мне это выяснить?~ GOTO 8
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY ~Я не знаю. Как мне это выяснить?~ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~Книга на трупе? Это неправильно. Наверное, он долго искал ее. А тебе книга досталась на тарелочке с голубой каемкой, прямо из его рюкзака.~
  IF ~~ THEN REPLY ~Прошу прощения. Может быть, у тебя есть другая загадка?~ GOTO 12
  IF ~~ THEN REPLY ~Мне очень жаль тебя, но это правильный ответ.~ GOTO 13
  IF ~~ THEN REPLY ~Если это тебя утешит, я выполняю важное задание.~ GOTO 14
  IF ~~ THEN REPLY ~Не надо обвинять меня. Я просто охочусь тут на медведей.~ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~У тебя странные манеры, но ответ вполне удовлетворительный. Прими же то, чем я владею, и исполни пророчество, сделанное с моей смертью. Меня не забыли. Наконец-то я смогу отдохнуть.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)GiveItemCreate("Miralis",LastTalkedToBy,1,0,0)AddexperienceParty(20000)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~Что? Нет, ничего подобного. Слушай, я мертв, так что говорю не много. Тупица. "Другую загадку" <HESHE> говорит. Спасибо огромное. Знаешь, сколько времени я уже тут? А? Да у меня на глазах капли воды разрушали камни. Улитку увидеть - и то развлечение было!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY ~Следовало мне идти к свету, как только появился шанс. Но я в это не верю.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY ~Да, но... это не так задумывалось... Надо было выполнить трудное задание, чтобы сбылось пророчество о моем наследии. Знаешь, сколько времени я уже тут? А? Да у меня на глазах капли воды разрушали камни. Улитку увидеть - и то развлечение было!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY ~Ну конечно, ради меня даже отвлеклись от чего-то важного. Нечего меня жалеть. Я был велик некогда. Знаешь, сколько времени я уже тут? А? Да у меня на глазах капли воды разрушали камни. Улитку увидеть - и то развлечение было!~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY ~Охотишься... на медведей? То есть, ты тут гоняешься за зверьми и вдруг натыкаешься на мою древнюю гробницу? Ну-у, я чувствую себя важной персоной. Да уж, <SIRMAAM>. Знаешь, сколько времени я уже тут? А? Да у меня на глазах капли воды разрушали камни. Улитку увидеть - и то развлечение было!~
  IF ~~ THEN GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Warning","LOCALS",1)~ THEN BEGIN 17 // from:
  SAY ~Мое дело... и мой народ... давным-давно исчезли, но даже у духов есть гордость, и я получу уважение, которого заслуживаю.~
  IF ~~ THEN REPLY ~Я принимаю твой вызов. Говори.~ GOTO 2
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4
  SAY ~Ты нарочно! Не смей потешаться надо моей судьбой! Я больше не потерплю насмешек.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY ~Глупец! Я лишь тень, и ты не в силах причинить мне вред. Ты ничего не получишь.~ ~Глупая девчонка! Я лишь тень, и ты не в силах причинить мне вред. Ты ничего не получишь.~
  IF ~~ THEN DO ~CreateVisualEffectObject("ICRMPARI",Myself)ReallyForceSpell(LastTalkedToBy,CLERIC_FLAME_STRIKE)DestroySelf()~ EXIT
END
