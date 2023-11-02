// Колодец Беорунна: храм Тира Ролган      

BEGIN ~NWROLGAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWRolganAcquitted","GLOBAL",0)!Global("NWIslandDialogue","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWRolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NWRolgansTalk","GLOBAL",1)~ EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWRolganAcquitted","GLOBAL",1)!Global("NWIslandDialogue","GLOBAL",3)~ THEN BEGIN 9 // from:
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @16
  IF ~~ THEN DO ~SetGlobal("NWRolganAcquitted","GLOBAL",2)AddexperienceParty(60000)EscapeAreaObject("To3000")~ EXIT
END

// --------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWRolganAcquitted","GLOBAL",1)!Global("NWIslandDialogue","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @16
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWIslandDialogue","GLOBAL",3)~ THEN BEGIN 13 // from:
SAY @17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @21 EXTERN ~NWIGLAN3~ 1
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @22
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @21 EXTERN ~NWIGLAN3~ 1
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @21 EXTERN ~NWIGLAN3~ 1
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY @25
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @21 EXTERN ~NWIGLAN3~ 1
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @26
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @21 EXTERN ~NWIGLAN3~ 1
END

IF ~~ THEN BEGIN 18 // from: NWIGLAN3 1
  SAY @27
  IF ~~ THEN EXTERN ~NWIGLAN3~ 2
END

IF ~~ THEN BEGIN 19 // from: NWIGLAN3 2
  SAY @28
  IF ~~ THEN EXTERN ~NWIGLAN3~ 3
END

