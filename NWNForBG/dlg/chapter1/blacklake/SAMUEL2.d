// Чернозерье Поместье Мелданена Самуэль   Стражник-полурослик совершенно не рад тому, что его заперли в этом гадком месте.

// DisplayStringHead(Myself,000000) Помогите мне! Выпустите меня отсюда!

BEGIN ~SAMUEL2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 17
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @22 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY @23
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @24 GOTO 13
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @24 GOTO 14
  IF ~  Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @25 GOTO 15
  IF ~  !Global("ThurinQuest","GLOBAL",1)~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY @26
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @27 GOTO 7
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @31
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 6.4
  SAY @26
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @32
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",3)EraseJournalEntry(@89667)EscapeArea()~ UNSOLVED_JOURNAL @89700 EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY @32
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",2)EraseJournalEntry(@89667)EscapeArea()~ UNSOLVED_JOURNAL @89700 EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY @34
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",3)EraseJournalEntry(@89667)EscapeArea()~ UNSOLVED_JOURNAL @89700 EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5
  SAY @34
  IF ~~ THEN DO ~SetGlobal("ThurinQuest","GLOBAL",2)EraseJournalEntry(@89667)EscapeArea()~ UNSOLVED_JOURNAL @89700 EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.1
  SAY @35
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY @36
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 12
END

