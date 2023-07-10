// Северная дорога, таверна Зеленый грифон, уровень 1 Мутамин трактирщик 

BEGIN ~MUTAMIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 2
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @20
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @21
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @22
  IF ~~ THEN DO ~GiveItemCreate("MutKey",LastTalkedToBy,1,0,0)SetGlobal("KnowsAboutMatch","GLOBAL",2)~ UNSOLVED_JOURNAL @23 EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @25
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY @29
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY @30
  IF ~~ THEN DO ~StartStore("Mutamin",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @31
  IF ~~ THEN REPLY @17 GOTO 2
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @32
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @33 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 11.2
  SAY @36
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("KnowsAboutMatch","GLOBAL",6)Global("KnowsAboutMatch","GLOBAL",8)~ THEN BEGIN 18 // from:
  SAY @0
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 28
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: ZAMITRA1 3
  SAY @37
  IF ~~ THEN EXTERN ~ZAMITRA1~ 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",4)~ THEN BEGIN 20 // from:
  SAY @38
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 22
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @41 GOTO 23
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @41 GOTO 24
  IF ~  CheckStatGT(LastTalkedToBy(Myself),16,STR)~ THEN REPLY @42 GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @42 GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @43
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(5000)AddexperienceParty(100000)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @44 EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @45
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(6000)AddexperienceParty(100000)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @44 EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY @46
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(5000)AddexperienceParty(100000)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @44 EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.4
  SAY @47
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",5)GiveGoldForce(6000)AddexperienceParty(100000)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @44 EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",5)~ THEN BEGIN 26 // from:
  SAY @48
  IF ~~ THEN REPLY @18 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ GOTO 13
  IF ~~ THEN REPLY @4 GOTO 27
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)~ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 18.2
  SAY @49
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",6)StartStore("InnMut",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.2
  SAY @49
  IF ~~ THEN DO ~StartStore("InnMut",LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowsAboutMatch","GLOBAL",7)~ THEN BEGIN 29 // from:
  SAY @50
  IF ~~ THEN REPLY @18 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",8)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @51 GOTO 13
  IF ~~ THEN REPLY @4 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",8)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @51 GOTO 30
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",8)EraseJournalEntry(~Северная дорога: Испытание Мутамина

Содержатель таверны Мутамин проводит незаконные состязания в подземелье под таверной "Зеленый Грифон", что стоит на дороге в Лускан.Распорядитель состязания Джару объяснил все правила и подал сигнал к началу гонки. Команды соперников должны пробежать по подземелью, в которых полно монстров, ловушек и сокровищ и найти четыре хрустальных предмета. В конце подземелья им придется разгадать загадку. Команда, первой давшая ответ на свою загадку, объявляется победившей.~) SOLVED_JOURNAL @51 GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY @49
  IF ~~ THEN DO ~StartStore("InnMut",LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("KnowsAboutMatch","GLOBAL",2)Global("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 18 // from:
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @5 GOTO 5
END
