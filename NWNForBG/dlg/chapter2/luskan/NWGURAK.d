// Ћускан - Ѕашн€ хоз€ина - 1 этаж - √урак Ёнтрейлшпиллер ќрк  ќрки - агрессивна€ человекоподобна€ раса, они нападают, граб€т и воюют с другими создани€ми. »х ненависть к эльфам и гномам насчитывает уже многие поколени€.

BEGIN ~NWGURAK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatGT(LastTalkedToBy(Myself),14,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @14 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @14 GOTO 11
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @15 GOTO 12
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 13
  IF ~  Race(LastTalkedToBy(Myself),ORC)CheckStatGT(LastTalkedToBy(Myself),16,STR)~ THEN REPLY @16 GOTO 14
  IF ~  OR(2)!Race(LastTalkedToBy(Myself),ORC)CheckStatLT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @19
  IF ~~ THEN DO ~Enemy()~ EXIT
END


IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @21
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @28
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @29
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @15 GOTO 12
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @15 GOTO 13
  IF ~  Race(LastTalkedToBy(Myself),ORC)CheckStatGT(LastTalkedToBy(Myself),16,STR)~ THEN REPLY @16 GOTO 14
  IF ~  OR(2)!Race(LastTalkedToBy(Myself),ORC)CheckStatLT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY @30
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 4.5
  SAY @31
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @14 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @14 GOTO 11
  IF ~  Race(LastTalkedToBy(Myself),ORC)CheckStatGT(LastTalkedToBy(Myself),16,STR)~ THEN REPLY @16 GOTO 14
  IF ~  OR(2)!Race(LastTalkedToBy(Myself),ORC)CheckStatLT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 4.6
  SAY @32
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.8
  SAY @33
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @34 GOTO 3
  IF ~~ THEN REPLY @35 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 4.7
  SAY @36
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @40 GOTO 23
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY @46
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 9.5
  SAY @47
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @48
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 23 // from: 17.3
  SAY @50
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 17.4
  SAY @51
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 31
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 18.2
  SAY @54
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 18.3
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 32
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @58
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 29 // from: 22.1
  SAY @59
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY @60
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 25.1
  SAY @61
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 27.1
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 34
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @65 GOTO 36
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 27.2
  SAY @66
  IF ~~ THEN REPLY @56 GOTO 32
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @67
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @65 GOTO 36
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY @68
  IF ~~ THEN REPLY @65 GOTO 36
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 36 // from: 32.3
  SAY @69

  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatGT(LastTalkedToBy(Myself),8,CHR)CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN BEGIN 37 // from:
  SAY @70
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN BEGIN 38 // from:
  SAY @71
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

