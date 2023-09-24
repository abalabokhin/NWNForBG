// Снежная сфера  Ходд     Дварф     Этот дварф вооружен и готов к битве.     Строки:
// Я те черепушку-то проломлю! [NWHOD050]  
// Дварфы за дварфов! [NWHOD051]     
// Смерть листолюбкам! [NWHOD052]      
// Эти древожительницы совсем с ума посходили! Они никаких доводов не слушают! [NWHOD053]  

BEGIN ~NWHODD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Race(LastTalkedToBy,DWARF)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  OR(3)PartyHasItem("NWDRACA1")PartyHasItem("NWDRACA2")PartyHasItem("NWDRACA3")~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~  PartyHasItem("NWDRACA1")~ THEN GOTO 8
  IF ~  PartyHasItem("NWDRACA2")~ THEN GOTO 9
  IF ~  PartyHasItem("NWDRACA3")~ THEN GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  OR(3)PartyHasItem("NWDRACA1")PartyHasItem("NWDRACA2")PartyHasItem("NWDRACA3")~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @12
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY @25
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~  OR(3)PartyHasItem("NWDRACA1")PartyHasItem("NWDRACA2")PartyHasItem("NWDRACA3")~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @26
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY @27
  IF ~~ THEN REPLY @19 DO ~TakePartyItem("NWDRACA1")DestroyItem("NWDRACA2")GiveItemCreate("NWDRACA2",LastTalkedToBy,0,0,0)~GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @28
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @29
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY @30
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY @31
  IF ~  OR(3)PartyHasItem("NWDRACA1")PartyHasItem("NWDRACA2")PartyHasItem("NWDRACA3")~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @34
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

// -----------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Race(LastTalkedToBy,DWARF)~ THEN BEGIN 21 // from:
  SAY @35
  IF ~~ THEN GOTO 1
END

// -----------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 22 // from:
  SAY @36
  IF ~  !Dead("NWDraco1")~ THEN GOTO 1
  IF ~  Dead("NWDraco1")~ THEN EXIT
END

