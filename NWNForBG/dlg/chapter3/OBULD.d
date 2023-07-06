// Лунный Лес Логово Орков, Обольд Многострельный Орк Этот бандит-орк огромный и свирепый, какими они обычно и бывают.
// Сейчас ты умрешь, пес!
// Пощадите! Сдаюсь!

BEGIN ~OBULD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  Global("RolkidQuest","GLOBAL",3)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~  Global("RolkidQuest","GLOBAL",3)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @17
  IF ~  Global("RolkidQuest","GLOBAL",3)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @18
  IF ~~ THEN DO ~GiveItemCreate("ObolHea2",LastTalkedToBy,1,0,0)GiveItem("Misc42",LastTalkedToBy)GivePartyGold(1700)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @18
  IF ~~ THEN DO ~GiveItemCreate("ObolHea2",LastTalkedToBy,1,0,0)GiveItem("Misc42",LastTalkedToBy)GivePartyGold(1700)EscapeAreaDestroy(60)~ EXIT
END

