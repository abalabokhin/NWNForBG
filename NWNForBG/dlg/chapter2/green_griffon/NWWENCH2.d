// Северная дорога, таверна Зеленый грифон, уровень 1 Официантка Эта служанка совсем забегалась, обслуживая большую толпу, которая собралась тут.

BEGIN ~NWWENCH2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)!Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY @6 GOTO 5
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 6
  IF ~  !Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~  OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)!Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY @6 GOTO 5
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 6
  IF ~  !Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~  OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)!Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY @6 GOTO 5
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 6
  IF ~  !Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~  OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @15
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY @17
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 1.7
  SAY @18
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)!Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY @6 GOTO 5
  IF ~  !Dead("NWZOR")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 6
  IF ~  !Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY @6 GOTO 7
  IF ~  OR(2)Dead("NWZOR")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("NWZAMITA")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @22
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @24
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 2
END
