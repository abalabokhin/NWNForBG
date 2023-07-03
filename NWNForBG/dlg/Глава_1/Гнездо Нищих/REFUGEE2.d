// Гнездо нищих Таверна Сияющий Змей Беженец Человек Женщина Заданий нет Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.
BEGIN ~REFUGEE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Огромное тебе спасибо. Надо же... удивительно, что кто-то вообще захотел нам помочь... спасибо.~
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,1)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Я... я на дне. Хуже уже быть не может. Кто мог подумать, что все так закончится?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Неужели стражники ничего не могут сделать? Может, сжечь Великое Кладбище? Ну, хоть что-нибудь? Что угодно...~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,3)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Что тебе надо? У меня ничего для тебя нет... Мне пришлось все бросить, чтобы спастись от зомби... У меня ничего не осталось...~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,4)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Ненавижу это место. Идиоты, пытаются себя вести так, как будто все нормально. Ну, так вот - ничего не нормально... мы обречены.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Ты знаешь, что такое ничего не иметь? Оставить все или умереть? Как вообще это возможно понять...~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,6)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Так вот где я умру... отлично. Вечно сдерживать зомби не получится...~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,7)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Чему еще можно верить, если даже нельзя поверить в то, что мертвые могут обрести покой? Как после такого хоть что-нибудь может быть нормальным?~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,8)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~Наверное, можно было бы попробовать добраться до святилища Хельма... но там лечат больных чумой. А я не хочу заразиться...~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,9)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~От зомби, по крайней мере, можно хоть на какое-то время сбежать, а вот чума... Понятия не имею, как можно избежать чумы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,10)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Куда нам теперь идти... некуда. Наверное, лучше просто подождать, пока зомби не найдут нас здесь...~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,11)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Говорят, некоторые пытались пробраться в Сердце города, но стражники не пропустили их через ворота. Они не хотят, чтобы чума распространялась ...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,12)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Медленная смерть от чумы или быстрая смерть от руки зомби... Может быть, нежить - меньшее из зол.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,13)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Не осталось... ничего. Живые боятся чумы... мертвые не могут обрести покой. Зачем жить дальше?~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,14)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Это конец света... Я точно говорю. Чума, нежить... еще только не хватает какого-нибудь нашествия паразитов, и тогда точно конец.~
  IF ~~ THEN EXIT
END

