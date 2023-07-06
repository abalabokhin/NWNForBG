// Ћускан ѕодмигни и ущипни, 2-й уровень  уртизанка Ћицо этой молодой прекрасной куртизанки усталое, но как только она замечает, что кто-то смотрит на нее, она тут же становитс€ веселой и внимательной.

BEGIN ~NWCOURT1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 17
  IF ~~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @22
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @23
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @24
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END


IF ~~ THEN BEGIN 9 // from: 1.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 1.2
  SAY @27
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 1.2
  SAY @28
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY @29
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY @30
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY @31
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 17
  IF ~~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY @32
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 15
  IF ~~ THEN REPLY @14 GOTO 17
  IF ~~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 0.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 20
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 0.1
  SAY @35
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 17
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 0.1
  SAY @36
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 0.1
  SAY @37
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @13 GOTO 16
  IF ~~ THEN REPLY @15 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 19
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @38
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  RandomNum(2,1)~ THEN REPLY @2 GOTO 2
  IF ~  RandomNum(2,2)~ THEN REPLY @2 GOTO 3
END

