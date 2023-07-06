// Гнездо нищих Дом Джемани Человек  Этот молодой человек выглядит очень взволнованным, и, похоже, он не спал несколько ночей.

BEGIN ~JEMANIE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SectSign","GLOBAL",0)Global("MyRing","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~  PartyHasItem("Nwring1")~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @20
  IF ~  Global("SectSign","GLOBAL",0)~ THEN GOTO 13
  IF ~  Global("SectSign","GLOBAL",1)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @21
  IF ~    Global("SectSign","GLOBAL",0)~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @23
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @24
  IF ~  PartyHasItem("Nwring1")Global("MyRing","LOCALS",0)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @25
  IF ~~ THEN DO ~SetGlobal("MyRing","LOCALS",1)AddexperienceParty(30000)TakePartyItem("Nwring1")EraseJournalEntry(@28)EraseJournalEntry(%Гнездо Нищих: Пропавший брат

Тело брата Джемани, Торина, было обнаружено возле поместья культа в Гнезде Нищих. Вероятно, он исполнил свою задачу и стал больше не нужен культу и его новому предводителю. На теле было найдено кольцо, которое, наверное, захочет получить Джемани.%)~ SOLVED_JOURNAL @26 EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @27
  IF ~~ THEN DO ~SetGlobal("SectSign","GLOBAL",1)GiveItem("NWMISC27",LastTalkedToBy)~ UNSOLVED_JOURNAL @28 EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("SectSign","GLOBAL",1)GiveItem("NWMISC27",LastTalkedToBy)~ UNSOLVED_JOURNAL @28 EXIT
END

// -------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SectSign","GLOBAL",1)Global("MyRing","LOCALS",0)~ THEN BEGIN 16 // from:
  SAY @31
  IF ~  PartyHasItem("Nwring1")Global("MyRing","LOCALS",0)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

// -------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SectSign","GLOBAL",1)Global("MyRing","LOCALS",1)~ THEN BEGIN 17 // from:
  SAY @32
  IF ~~ THEN EXIT
END

