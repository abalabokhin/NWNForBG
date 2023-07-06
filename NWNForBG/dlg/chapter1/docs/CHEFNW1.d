// Доки Таверна Сиди Повар  человек толстый  Этот большой мужчина явно охраняет дверь позади него, но он не похож на хорошо обученного охранника. Захожу в дверь – там стоит шеф-повар. Чтобы пройти надо узнать пароль (а вообще пройти можно всеми возможными способами). Подымаюсь на этаж выше. В конце коридора справа в бане сидит и парится Ульфанг, который говорит пароль к подвалу. 

BEGIN ~CHEFNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",FALSE)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @12
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @16
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @17
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @18
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)PartyGoldGT(49)~ THEN REPLY @20 GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)PartyGoldGT(49)~ THEN REPLY @20 GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)PartyGoldGT(99)~ THEN REPLY @21 GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)PartyGoldGT(99)~ THEN REPLY @21 GOTO 17
  IF ~  PartyGoldGT(199)~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Guards","MYAREA",1)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @27
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @28
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 20
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @17
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @21 GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY @29
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 22
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY @30
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 9.5
  SAY @31
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 24
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 9.6
  SAY @32
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY @6 GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY @26
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY @27
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY @26
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.2
  SAY @27
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY @26
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY @27
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",TRUE)~ THEN BEGIN 26 // from:
  SAY @33
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Password","LOCALS",0)~ THEN BEGIN 27 // from:
  SAY @34
  IF ~~ THEN EXIT
END

