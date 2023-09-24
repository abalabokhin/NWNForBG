// Северная дорога, Зеленый_Грифон Статуя

BEGIN ~NWSTATUE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("StatueRiddle","MYAREA",0)Global("Egg","MYAREA",0)!Global("Skull","MYAREA",1)!Global("Frog","MYAREA",1)!Global("Insect","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @6
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Egg","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 5 // from:
  SAY @7
 IF ~~ THEN DO ~SetGlobal("Egg","MYAREA",2)SetGlobal("StatueRiddle","MYAREA",1)ClearAllActions()StartCutSceneMode()StartCutScene("NWTOTAVN")~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Skull","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 6 // from:
  SAY @8
 IF ~~ THEN DO ~SetGlobal("Skull","MYAREA",2)CreateCreature("NWIWDMI7",[3035.344],8)
CreateCreature("NWIWDMI6",[2832.378],12)
CreateCreature("NWHOOK5",[2816.247],14)
CreateCreature("NWGODMI1",[2726.308],0)
CreateCreature("NWHOOK1",[2952.249],0)~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Frog","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 7 // from:
  SAY @9
 IF ~~ THEN DO ~SetGlobal("Frog","MYAREA",2)CreateCreature("NWIWDMI7",[3035.344],8)
CreateCreature("NWIWDMI6",[2832.378],12)
CreateCreature("NWHOOK5",[2816.247],14)
CreateCreature("NWGODMI1",[2726.308],0)
CreateCreature("NWHOOK1",[2952.249],0)~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Insect","MYAREA",1)Global("StatueRiddle","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY @10
 IF ~~ THEN DO ~SetGlobal("Insect","MYAREA",2)CreateCreature("NWIWDMI7",[3035.344],8)
CreateCreature("NWIWDMI6",[2832.378],12)
CreateCreature("NWHOOK5",[2816.247],14)
CreateCreature("NWGODMI1",[2726.308],0)
CreateCreature("NWHOOK1",[2952.249],0)~ EXIT
END
