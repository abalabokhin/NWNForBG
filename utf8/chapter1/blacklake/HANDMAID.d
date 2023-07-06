// Чернозерье Голая Доска Служанка   Человек Обычная служанка в таверне. Она выглядит очень уставшей от того, что приходится все время обслуживаться клиентов, хотя снаружи, похоже, близится конец света.

BEGIN ~HANDMAID~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~Молодец, босс, покажите этому сброду, что и их можно победить. Не очень хорошо для бизнеса, но все равно приятно посмотреть, как им утерли нос.~
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(4)Global("NWArena","GLOBAL",1)Global("NWArena","GLOBAL",2)Global("NWArena","GLOBAL",3)PartyHasItem("Nwkey05")~ THEN BEGIN 1 // from:
  SAY ~Если хотите принять участие, обратитесь к бармену. Он вам все скажет. А я умолкаю.~
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWArena","GLOBAL",0)!PartyHasItem("Nwkey05")~ THEN BEGIN 2 // from:
  SAY ~Бармен примет ваш заказ. А я занята.~
  IF ~~ THEN EXIT
END

