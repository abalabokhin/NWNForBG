// Чернозерье Зоопарк Животные

BEGIN ~NWANIMAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~    GlobalGT("NyatarQuest","GLOBAL",0)OR(3)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)HasItemEquiped("NyatAmul",LastTalkedToBy(Myself))
~ THEN BEGIN 0 // from:
  SAY ~Животное медленно поднимает на вас глаза, оно не доверяет вам. Вы чувствуете его страх.~
  IF ~  AreaCheck("NW1400")GlobalGT("Nwnzoo","GLOBAL",0)~ THEN REPLY ~Шагните в портал, и вы будете свободны.~ DO ~SetGlobal("AnimalsToPortal","NW1400",1)~ EXIT
  IF ~  AreaCheck("NW1400")Global("Nwnzoo","GLOBAL",0)~ THEN REPLY ~Подожди, пока я не применю свиток Ниатара на дереве.~ GOTO 2
  IF ~  AreaCheck("NW1405")OR(2)!Dead("Zooboss")NumDeadLT("Zooguard",3)~ THEN REPLY ~Отомстите стражникам! Убейте их!~ GOTO 3
  IF ~  AreaCheck("NW1405")OR(3)!Dead("Zooboss")NumDeadLT("Zooguard",3)InMyArea([0.HUMANOID.0.INNOCENT])~ THEN REPLY ~Отомстите всем! Убейте всех, кто здесь есть!~ GOTO 4
  IF ~  AreaCheck("NW1405")~ THEN REPLY ~Бегите к дереву снаружи. Оно отправит вас на свободу!~ GOTO 5
  IF ~  AreaCheck("NW1405")~ THEN REPLY ~Вы свободны. Подождите, пока я проверю, можно ли идти.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Животное кивает в надежде, что вы скоро вернетесь. Вы чувствуете его беспокойство.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Животное помнит, какую ему причинили боль. Вы чувствуете его ярость.~
  IF ~~ THEN DO ~SetGlobal("FightGuard","LOCALS",1)SetGlobal("FightAll","LOCALS",0)SetGlobal("ToDoor","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Животное охвачено слепой яростью. Вы не знаете, как усмирить его гнев.~
  IF ~~ THEN DO ~SetGlobal("FightAll","LOCALS",1)SetGlobal("FightGuard","LOCALS",0)SetGlobal("ToDoor","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Животное довольно бодрое. Вы чувствуете его ликование.~
  IF ~~ THEN DO ~SetGlobal("ToDoor","LOCALS",1)SetGlobal("FightGuard","LOCALS",0)SetGlobal("FightAll","LOCALS",0)~ EXIT
END

