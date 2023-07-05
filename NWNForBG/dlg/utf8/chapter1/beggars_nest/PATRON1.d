// Гнездо нищих Таверна Сияющий Змей Завсегдатай Человек Мужчина Заданий нет Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.
BEGIN ~PATRON1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Мне удалось сбежать с кухни до того, как там появилась нежить. Проклятые стражники ничем не могли помочь. Они даже не знают, откуда она появилась.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Встретился мне один идиот-маг в красном, который бросился в бой вместо того, чтобы бежать. Был полон решимости. Теперь его внутренности раскиданы по всей улице.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я мог бы отправиться отсюда в это убежище хельмитов, но я предпочитаю разумные разговоры их пустым мечтам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Этот парень, Дрейк, он что-то, да? Охотник за нежитью! Приятно видеть хоть КОГО-ТО, кто с ней справляется!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Эти стражники у ворот не могут даже собственную безопасность обеспечить. Говорят, они потеряли этого парня, Уолтерса.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Харбен и Дрейк поддерживают наших в форме, но проклятую нежить нужно остановить в источнике ее появления.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Этот Дестер и его Хельмиты считают, что их благословение с 'поглаживанием по голове' действительно помогает. Хмм! Только от мора еще никому не помогло!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Конечно, в убежище Хельмитов нет зомби, но приходится постоянно выслушивать их 'благословение туда', 'благословение сюда'...~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~Хельмиты клянутся, что город будет спасен с помощью их благословений. Ха! Дрейк и Харбен больше нам помогают, убивая зомби!~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Нежить собирается около Великого Кладбища, и никто не может туда подойти. Тот район тщательно забаррикадирован.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Клянусь, мертвые встают быстрее, чем мор убивает людей! Здесь есть какая-то связь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Есть еще несколько мест, в которых есть люди. Поговорите с Дрейком, если хотите посмотреть их.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Что-то странное происходит рядом со старым складом на северо-востоке, но Дрейку, возможно, известно больше.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Дрейк и Харбен разрабатывают защиту для людей, на которых нападают зомби. Вы должны помочь им.~
  IF ~~ THEN EXIT
END

