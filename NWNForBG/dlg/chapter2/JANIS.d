// Восточная дорога, Пещера троллей Дженис - мать Ревата - человек маг .  Диалог - m2q2ajanis Находится в сфере Отилука но должна разговаривать

//SPWI413.SPL	Упругая сфера Отилука единственный способ убрать ее - использовать заклинание "Рассеять магию".
//SPWI853.SPL	Упругая сфера Отилука
//SPIN853.SPL	Упругая сфера Отилука
// Убрать из заклинания эффект невидимости, удержания, иммунитет к Kill

// В скрипт пещеры
//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		CreateVisualEffectObject("SPDEATH3","Janis")
//             PlaySound("DELOR04")
//		Wait(1)
//		Kill("Janis")
//END

// В скрипт бараков
//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		SetGlobal("SPRITE_IS_DEADJANIS","GLOBAL",1)
//END

// В скрипт Дженис
//IF
//	Global("JanisHasRing","LOCALS",1)
//THEN
//	RESPONSE #100
//		SetGlobal("JanisHasRing","LOCALS",2)
//             DestroyItem("OtilukeR") // Убрать сферу Отилука
//END

//IF
//	Global("JanisHasRing","LOCALS",2)
//	Delay(3)
//THEN
//	RESPONSE #100
//		SetGlobal("JanisHasRing","LOCALS",3)
//		StartDialogNoSet(LastTalkedToBy(Myself))
//END

//IF
//	Global("RevatQuest","GLOBAL",3)
//THEN
//	RESPONSE #100
//		EscapeArea()
//END

BEGIN ~JANIS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("RevatQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @20
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.1 5.1
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 3.2 5.2
  SAY @22
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @23
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1
  SAY @24
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @31
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @32
IF ~  PartyHasItem("RingReva")~ THEN GOTO 17
IF ~  !PartyHasItem("RingReva")~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 12.2
  SAY @33
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @40 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @41
  IF ~~ THEN REPLY @36 DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY @42
  IF ~~ THEN REPLY @36 DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY @43 GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 18
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 GOTO 27
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY @47 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @48
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY @49
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY @50
  IF ~~ THEN DO ~SetGlobal("DeadJanis","GLOBAL",1)SetGlobalTimer("Janis","GLOBAL",6)~ EXIT
END

//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		CreateVisualEffectObject("SPDEATH3","Janis")
//             PlaySound("DELOR04")
//		Wait(1)
//		Kill("Janis")
//END

//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		SetGlobal("SPRITE_IS_DEADJANIS","GLOBAL",1)
//END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @51
  IF ~~ THEN DO ~SetGlobal("JanisQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @54 GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 23.1 24.1
  SAY @55
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",2)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JanisHasRing","LOCALS",3)~ THEN BEGIN 20 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 23
  IF ~~ THEN REPLY @58 GOTO 24
END

// -----------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("JanisQuest","GLOBAL",1)Global("Pause","LOCALS",1)Global("DeadJanis","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 6
  IF ~  !PartyHasItem("RingReva")~ THEN REPLY @61 GOTO 30
  IF ~  PartyHasItem("RingReva")~ THEN REPLY @61 GOTO 17
  IF ~~ THEN REPLY @62 GOTO 25
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY @63
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 GOTO 27
END

// -----------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",2)~ THEN BEGIN 31 // from:
  SAY @64
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",3)~ THEN BEGIN 32 // from:
  SAY @65
  IF ~~ THEN DO ~ActionOverride("Revat",EscapeArea())EscapeArea()~ EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DeadJanis","GLOBAL",1)PartyHasItem("RingReva")~ THEN BEGIN 33 // from:
  SAY @66
  IF ~~ THEN REPLY @36 DO ~SetGlobal("DeadJanis","GLOBAL",0)SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY @67 EXIT
END
