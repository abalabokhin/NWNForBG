// Лускан Логово Курта Костер из книг.

BEGIN ~NWBONFIE~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Dead("Burnernw")~ THEN REPLY @1 GOTO 1
  IF ~  !Dead("Burnernw")~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("BonfireDisable","MYAREA",2)AmbientActivate("Fpit1S",FALSE)OpenDoor("NWBONFIE")SoundActivate("Fire1",FALSE)ContainerEnable("Pile",TRUE)TriggerActivation("Book",FALSE)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN EXIT
END

