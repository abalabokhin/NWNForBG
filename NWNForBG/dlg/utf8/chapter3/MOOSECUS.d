// Крепость племени Лося, Женщина племени Лося. Эта женщина - член племени Лосей из Утгардта.

BEGIN ~MOOSECUS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)!Dead("Zokan")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ты великий герой! Из поколения в поколение будет передаваться история о том, как ты спас людей Лося от Воющей Смерти.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("Zokan")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Мы, Лоси, умираем от чумы. Умоляю, вы должны поговорить с Зоканом.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Zokan")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY ~Наш лидер мертв. Неужели тебе этого не достаточно?~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Zokan")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY ~Умоляю, болезнь совсем измотала меня. Пощадите.~
  IF ~~ THEN REPLY ~Вы слишком слабы, чтобы представлять какую-нибудь угрозу. Я пощажу вашу жизнь.~ GOTO 4
  IF ~~ THEN REPLY ~Племя Лося враг Союза Лордов. Всех вас нужно истребить!~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Пожалуйста, мы, Лоси, умираем от чумы. Наше племя обречено. Сжальтесь над нами! Поговорите с нашим вождем Зоканом Громовержцем.~
  IF ~~ THEN REPLY ~Очень хорошо, я поговорю с Зоканом.~ GOTO 6
  IF ~~ THEN REPLY ~Оставьте меня в покое, не то я могу все же решить убить вас!~ GOTO 5
  IF ~~ THEN REPLY ~Племя Лося враг Союза Лордов. Всех вас нужно истребить!~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~Нет, умоляю, пощадите меня!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Вы найдете Зокана в центре. Пожалуйста, скорее отправляйтесь к нему.~
  IF ~~ THEN EXIT
END

