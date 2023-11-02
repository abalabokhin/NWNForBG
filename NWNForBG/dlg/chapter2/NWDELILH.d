// Восточная дорога  Далила Убийца-полурослик.  Яды Далилы помогли вывести из строя многих стражников в тюрьме. Она отравитель, так что следи за ее - ой - клинком Убийцу-полурослика Далилу, которая когда-то жила в Лускане, в последний раз видели на дороге к востоку от Порт-Лласта.

// Реплика - Незваный гость! Умри, тупица! vs_nhalflf1_058.mp3  Хватит! Хватит. Я сдаюсь! Давай... прекратим бой. Я... не могу победить. vs_nhalflf1_059.mp3

BEGIN ~NWDELILH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("Talk","LOCALS",1)Global("Attack","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  GlobalGT("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("Attack","LOCALS",2)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @19
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("Attack","LOCALS",2)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @21
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("SPRITE_IS_DEADNWDELILH","GLOBAL",1)SetGlobal("Attack","LOCALS",2)GiveItem("NWEARBAD",LastTalkedToBy)SetGlobal("DalilahTalk","LOCALS",2)ForceSpellRES("NWDELIL2",Myself)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @22
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("Attack","LOCALS",2)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",2)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.2
  SAY @27
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @28
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN GOTO 14
  IF ~  Gender(LastTalkedToBy(Myself),MALE)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @30
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
END

// ------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Talk","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY @39
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("Talk","LOCALS",1)Global("Attack","LOCALS",2)~ THEN BEGIN 20 // from:
  SAY @40
  IF ~~ THEN EXIT
END
