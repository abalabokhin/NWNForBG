// -Форт-Илкард усадьбы, Испуганный торговец. Этот человек - обычный торговец

BEGIN ~MOOSEMER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("Rescue","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~Прошу, помоги нам! Утгардты атаковали наш караван!~
  IF ~ ~ THEN REPLY ~Где сейчас Утгардты?~ GOTO 1
  IF ~~ THEN REPLY ~Как тебе удалось выжить при нападении?~ GOTO 1
  IF ~~ THEN REPLY ~Ты ранен? Я могу тебе чем-то помочь?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Мы слышали их боевые кличи и смогли убежать, прежде чем они нас нашли. Но нам пришлось оставить наши повозки, и они растащили наши товары. Нам нужен помощник, чтобы привести в порядок наш караван.... О НЕТ!!! Утгардты возвращаются! Спасайся, кто может!~
  IF ~~ THEN DO ~SetGlobal("UtgartSpawn", "MYAREA",1)~ EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Rescue","MYAREA",0)~ THEN BEGIN 2 // from:
  SAY ~Спасибо, что спасли нас от этих дикарей! Забудем о караване, я убираюсь отсюда!~
  IF ~~ THEN DO ~AddexperienceParty(24000)EscapeArea()~ EXIT
END