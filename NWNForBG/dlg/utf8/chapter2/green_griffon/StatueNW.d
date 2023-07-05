// Северная дорога, Зеленый_Грифон Статуя

BEGIN ~STATUENW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("StatueRiddle","MYAREA",0)Global("Egg","MYAREA",0)!Global("Skull","MYAREA",1)!Global("Frog","MYAREA",1)!Global("Insect","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~Вас ждет последнее испытание. Когда вы шли по подземелью, вы должны были собирать безделушки. Положите одну в сундук позади меня, но только одну.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Если вы дадите мне ту, которую я хочу, вы найдете способ выйти из подземелья. Другие... Что ж, если вы положите другую, вам придется преодолеть новые препятствия.~
  IF ~~ THEN REPLY ~Что именно вам нужно?~ GOTO 2
  IF ~~ THEN REPLY ~Ну хорошо... Я это сделаю.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Мне нужна та безделушка, которая является ответом на следующую загадку:~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~В крепь-городе бел-град, а в бел-городе воску брат.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Egg","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 5 // from:
  SAY ~Яйцо выпустит вас из подземелья. Вы выиграли состязание. Готовьтесь к возвращению на поверхность.~
 IF ~~ THEN DO ~SetGlobal("Egg","MYAREA",2)SetGlobal("StatueRiddle","MYAREA",1)ClearAllActions()StartCutSceneMode()StartCutScene("ToTavern")~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Skull","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 6 // from:
  SAY ~Череп не даст вам выйти из подземелья. Готовьтесь.~
 IF ~~ THEN DO ~SetGlobal("Skull","MYAREA",2)CreateCreature("IWDMIST7",[3035.344],8)
CreateCreature("IWDMIST6",[2832.378],12)
CreateCreature("HOOK5",[2816.247],14)
CreateCreature("GODMIVA1",[2726.308],0)
CreateCreature("HOOK1",[2952.249],0)~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Frog","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 7 // from:
  SAY ~Лягушка не даст вам выйти из подземелья. Готовьтесь.~
 IF ~~ THEN DO ~SetGlobal("Frog","MYAREA",2)CreateCreature("IWDMIST7",[3035.344],8)
CreateCreature("IWDMIST6",[2832.378],12)
CreateCreature("HOOK5",[2816.247],14)
CreateCreature("GODMIVA1",[2726.308],0)
CreateCreature("HOOK1",[2952.249],0)~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Insect","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY ~Насекомое не даст вам выйти из подземелья. Готовьтесь.~
 IF ~~ THEN DO ~SetGlobal("Insect","MYAREA",2)CreateCreature("IWDMIST7",[3035.344],8)
CreateCreature("IWDMIST6",[2832.378],12)
CreateCreature("HOOK5",[2816.247],14)
CreateCreature("GODMIVA1",[2726.308],0)
CreateCreature("HOOK1",[2952.249],0)~ EXIT
END
