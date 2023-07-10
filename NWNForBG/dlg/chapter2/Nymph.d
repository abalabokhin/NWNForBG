// Лес Невервинтер, дом нимфы - Нимфа в начале разговора пытается очаровать. Запустить диалог, потом катсцену, потом продолжить диалог. 

BEGIN ~NYMPH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Sharm","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Sharm","LOCALS",1)ClearAllActions()StartCutSceneMode()StartCutScene("Sharm")~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Sharm","LOCALS",1)Global("KnowNymph","LOCALS",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Sharm","LOCALS",2)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Sharm","LOCALS",2)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Sharm","LOCALS",2)~ GOTO 4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("Sharm","LOCALS",2)~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 7
  IF ~~ THEN REPLY @18 GOTO 7
  IF ~~ THEN REPLY @19 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3
  SAY @20
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @21
  IF ~  GlobalGT("AavillQuest","GLOBAL",0)~ THEN REPLY @22 GOTO 9
  IF ~~ THEN REPLY @23 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @24
  IF ~~ THEN DO ~Enemy()ClearAllActions()StartCutSceneMode()StartCutScene("NymphSum")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4
  SAY @25
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 12
  IF ~~ THEN REPLY @29 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @33
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @36
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 16
  IF ~~ THEN REPLY @39 GOTO 17
  IF ~~ THEN REPLY @40 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @41
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @42
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 19
  IF ~~ THEN REPLY @45 GOTO 19
  IF ~~ THEN REPLY @46 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.1 18.1 18.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~  GlobalGT("AavillQuest","GLOBAL",0)~ THEN REPLY @49 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 18.3
  SAY @50
  IF ~~ THEN DO ~SetGlobal("KnowNymph","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 22
  IF ~~ THEN REPLY @53 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 19
  SAY @54
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 24
  IF ~~ THEN REPLY @57 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 25
  IF ~~ THEN REPLY @60 GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @61
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @62
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 25
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 28
  IF ~~ THEN REPLY @65 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27
  SAY @66
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28
  SAY @67
  IF ~~ THEN REPLY @68 DO ~EraseJournalEntry(%Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в его лес, в надежде, что мы поможем ему выяснить, что же произошло.%)
EraseJournalEntry(%Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в лес, в надежде, что мы поможем ему выяснить, что же произошло. Другие друиды в глубине леса говорят, что можно увидеть Духа сначала зайдя, а потом выйдя из лесного пруда, и совершив какой-то ритуал. Однако они не имеют ни малейшего представления о том, что это мог бы быть за ритуал.%)~ UNSOLVED_JOURNAL @69 GOTO 30
  IF ~~ THEN REPLY @70 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 32
  IF ~~ THEN REPLY @73 GOTO 33
  IF ~~ THEN REPLY @74 GOTO 34
  IF ~~ THEN REPLY @75 GOTO 35
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @76
  IF ~~ THEN REPLY @68 DO ~EraseJournalEntry(%Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в его лес, в надежде, что мы поможем ему выяснить, что же произошло.%)
EraseJournalEntry(%Лес Невервинтер: Дух Леса

Дух Леса Невервинтер с недавних пор находится в плачевном состоянии, и архидруид Аавилл, который возглавляет конклав, очень обеспокоен этим. С большой неохотой он позволил нам войти в лес, в надежде, что мы поможем ему выяснить, что же произошло. Другие друиды в глубине леса говорят, что можно увидеть Духа сначала зайдя, а потом выйдя из лесного пруда, и совершив какой-то ритуал. Однако они не имеют ни малейшего представления о том, что это мог бы быть за ритуал.%)~ UNSOLVED_JOURNAL @69 GOTO 30
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @77
  IF ~  GlobalGT("Druid3Saved","GLOBAL",0)~ THEN REPLY @78 GOTO 36
  IF ~  GlobalGT("KnowSetara","GLOBAL",0)~ THEN REPLY @79 GOTO 37
  IF ~  Global("SetaraQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 38
  IF ~~ THEN REPLY @81 GOTO 39
  IF ~~ THEN REPLY @82 GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY @83
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 30.3
  SAY @84
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 30.4
  SAY @85
  IF ~~ THEN DO ~SetGlobal("KnowNymph","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY @86
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 36.1
  SAY @77
  IF ~  GlobalGT("KnowSetara","GLOBAL",0)~ THEN REPLY @79 GOTO 37
  IF ~  Global("SetaraQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 38
  IF ~~ THEN REPLY @81 GOTO 39
  IF ~~ THEN REPLY @82 GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 32.2
  SAY @87
  IF ~  GlobalGT("Druid3Saved","GLOBAL",0)~ THEN REPLY @78 GOTO 36
  IF ~  Global("SetaraQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 38
  IF ~~ THEN REPLY @81 GOTO 39
  IF ~~ THEN REPLY @82 GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 32.3
  SAY @88
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 38.1
  SAY @89
  IF ~  GlobalGT("Druid3Saved","GLOBAL",0)~ THEN REPLY @78 GOTO 36
  IF ~  GlobalGT("KnowSetara","GLOBAL",0)~ THEN REPLY @79 GOTO 37
  IF ~~ THEN REPLY @81 GOTO 39
  IF ~~ THEN REPLY @82 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 32.4
  SAY @90
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 39
  SAY @91
  IF ~  GlobalGT("Druid3Saved","GLOBAL",0)~ THEN REPLY @78 GOTO 36
  IF ~  GlobalGT("KnowSetara","GLOBAL",0)~ THEN REPLY @79 GOTO 37
  IF ~  Global("SetaraQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 38
  IF ~~ THEN REPLY @82 GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 32.5
  SAY @92
  IF ~~ THEN DO ~SetGlobal("KnowNymph","LOCALS",1)~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowNymph","LOCALS",1)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 43 // from:
  SAY @93
  IF ~  GlobalGT("Druid3Saved","GLOBAL",0)~ THEN REPLY @78 GOTO 36
  IF ~  GlobalGT("KnowSetara","GLOBAL",0)~ THEN REPLY @79 GOTO 37
  IF ~  Global("SetaraQuest","GLOBAL",1)~ THEN REPLY @80 GOTO 38
  IF ~~ THEN REPLY @81 GOTO 39
  IF ~~ THEN REPLY @82 GOTO 40
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowNymph","LOCALS",1)GlobalGT("SpiritSaved","GLOBAL",0)~ THEN BEGIN 44 // from:
  SAY @94
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowNymph","LOCALS",1)Dead("SpiritFo")~ THEN BEGIN 45 // from:
  SAY @95
  IF ~~ THEN DO ~SetGlobal("KnowNymph","LOCALS",2)~ EXIT
END
