// Лускан Логово Курта Костер из книг.

BEGIN ~BONFIRE~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~Это горят книги из библиотеки волшебника Бурка. ~
  IF ~  Dead("Burnernw")~ THEN REPLY ~Потушить огонь.~ GOTO 1
  IF ~  !Dead("Burnernw")~ THEN REPLY ~Потушить огонь.~ GOTO 2
  IF ~~ THEN REPLY ~Пусть горят.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~На ваших глазах огонь гаснет. Вы можете попытаться спасти остатки книг.~
  IF ~~ THEN DO ~SetGlobal("BonfireDisable","MYAREA",2)AmbientActivate("Fpit1S",FALSE)OpenDoor("Bonfire")SoundActivate("Fire1",FALSE)ContainerEnable("Pile",TRUE)TriggerActivation("Book",FALSE)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Гоблин поддерживает огонь и не дает костру погаснуть~
  IF ~~ THEN EXIT
END

