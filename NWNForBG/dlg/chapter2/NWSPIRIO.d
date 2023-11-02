// Лес Невервинтер Мир Духа; Дух леса - выглядит как олень, но имеет неплохой арсенал заклинаний. Когда он будет сильно ранен, то он перестанет атаковать..

BEGIN ~NWSPIRIO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialog","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)ForceSpellRES("NWSPIRIO",Myself)~ UNSOLVED_JOURNAL @98274 EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("Dialog","LOCALS",1)PartyHasItem("NWANTIDE")Global("NWSpiritSaved","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 6
  IF ~~ THEN REPLY @20 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @21
  IF ~~ THEN DO ~DestroyItem("Minhp1")Enemy()Attack(LastTalkedToBy(Myself))EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)~ UNSOLVED_JOURNAL @98276 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~  Dead("NWRELMAR")~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @26
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @27
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY @31
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @34
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWSPIRIO","GLOBAL",0)SetGlobal("NWSpiritSaved","GLOBAL",1)TakePartyItem("NWANTIDE")EraseJournalEntry(@98271)
EraseJournalEntry(@98272)
EraseJournalEntry(@98273)
EraseJournalEntry(@98274)~ UNSOLVED_JOURNAL @98275 EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("Dialog","LOCALS",1)!PartyHasItem("NWANTIDE")Global("NWSpiritSaved","GLOBAL",0)~ THEN BEGIN 18 // from:
  SAY @37
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Global("Dialog","LOCALS",1)GlobalGT("NWSpiritSaved","GLOBAL",0)~ THEN BEGIN 19 // from:
  SAY @38
  IF ~~ THEN EXIT
END
