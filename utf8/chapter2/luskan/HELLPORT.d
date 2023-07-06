// Лускан -  Башня хозяина - 3 этаж - Портал Бездны  Перед вами мягко светится портал. Интересно, куда он ведет....

BEGIN ~HELLPORT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("HellPortalClosed","MYAREA",0)~ THEN BEGIN 10 // from:
  SAY ~Жаровня остыла, и пламя погасло.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   Global("HellPortalClosed","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~Огонь на жаровне выглядит холодным, он излучает странную ауру, которая трепещет, когда вы подходите ближе. Этот предмет излучает почти осязаемую магию.~
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)CheckStatGT(LastTalkedToBy(Myself),16,WIS)~ THEN REPLY ~Рассмотреть жаровню поближе.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY ~Рассмотреть жаровню поближе.~ GOTO 3
  IF ~~ THEN REPLY ~Положить в огонь камешек~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 8
  IF ~~ THEN REPLY ~Оставить жаровню в покое.~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~Вам кажется, что языки пламени образуют маленький, постоянный портал во внешние планы... Скорее всего, в Хаос или Баатор. Несомненно, это тот самый портал, через который были вызваны все бесы и квазиты. Портал, скорее всего, двухсторонний, хотя с этой стороны в него может проникнуть только что-то очень маленькое. Вашему телу никоим образом через него не пройти.~
  IF ~~ THEN REPLY ~Положить в огонь камешек~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 8
  IF ~~ THEN REPLY ~Оставить жаровню в покое.~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~Через пламя едва виднеется какое-то странное место. Это все, что вы получили в результате вашего осмотра.~
  IF ~~ THEN REPLY ~Положить в огонь камешек~ GOTO 4
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 8
  IF ~~ THEN REPLY ~Оставить жаровню в покое.~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY ~Вы подбираете маленький камешек и кладете его в огонь. Вспыхнув, камень исчезает, оставив после себя запах серы. Какой-то миг вы все еще видите след камня в пламени, но он тут же исчезает. Не стоит класть туда то, что вам еще может пригодиться.~
  IF ~  OR(3)CheckStatGT(LastTalkedToBy(Myself),30,LORE)CheckStatGT(LastTalkedToBy(Myself),16,INT)CheckStatGT(LastTalkedToBy(Myself),16,WIS)~ THEN REPLY ~Рассмотреть жаровню поближе.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),30,LORE)CheckStatLT(LastTalkedToBy(Myself),17,INT)CheckStatLT(LastTalkedToBy(Myself),17,WIS)~ THEN REPLY ~Рассмотреть жаровню поближе.~ GOTO 3
  IF ~  Global("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 5
  IF ~  GlobalGT("QuasitEyeUsed","MYAREA",0)PartyHasItem("QUASGORE")~ THEN REPLY ~Положить в огонь глаз квазита.~ GOTO 6
  IF ~  Global("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 7
  IF ~  GlobalGT("ImpEyeUsed","MYAREA",0)PartyHasItem("IMPGORE")~ THEN REPLY ~Положить в огонь глаз беса.~ GOTO 8
  IF ~~ THEN REPLY ~Оставить жаровню в покое.~ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~Пламя поглощает глаз квазита с яркой вспышкой. Мгновение спустя жаровня начинает сильно трястись...~
  IF ~~ THEN DO ~SetGlobal("QuasitEyeUsed","MYAREA",1)SetGlobal("HellPortalClosed","MYAREA",1)TakePartyItem("QUASGORE")DestroyItem("QUASGORE")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~Огонь никак не воздействует на глаз квазита. Он не исчезает, и совершенно не подгорает.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY ~Пламя поглощает глаз беса с яркой вспышкой. Мгновение спустя жаровня начинает сильно трястись...~
  IF ~~ THEN DO ~SetGlobal("ImpEyeUsed","MYAREA",1)SetGlobal("HellPortalClosed","MYAREA",1)TakePartyItem("IMPGORE")DestroyItem("IMPGORE")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.8
  SAY ~Огонь никак не воздействует на глаз беса. Он не исчезает, и совершенно не подгорает.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.9
  SAY ~Вы отступаете от жаровни, а с каждым вашим шагом отступает и холод.~
  IF ~~ THEN EXIT
END

