// Лускан - Башня хозяина - 4 этаж - Машина производства големов  Саркофаг 

// Камера испускает легкие клубы дыма. Обе палочки в ее углублениях почернели и обгорели. Какая бы магия ни питала эту камеру, похоже, вся она истощилась.

// Подымаюсь на 4 этаж: в комнате нахожу труп Артено Гета и в его дневнике читаю, что чтобы создать голема, необходимо поместить 2 скипетра в саркофаг. Нахожу оба скипетра и дальше по коридору захожу в комнату создания големов. В саркофаг кладу оба жезла. Появляется голем и открывает запертую дверь. 

BEGIN ~2Q6EPOD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalLT("GolemCreated","MYAREA",2)~ THEN BEGIN 0 // from:
  SAY ~Эта камера сделана из мрамора, в ее центре установлены сложные кристаллы, а с краю имеются два углубления. Ее прямо-таки распирает от скопившейся внутри магической энергии.~
  IF ~  Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Рассмотреть углубления.~ GOTO 1
  IF ~  Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Рассмотреть углубления.~ GOTO 2
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 3
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 5
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 6
  IF ~~ THEN REPLY ~Разрушить камеру.~ GOTO 7
  IF ~~ THEN REPLY ~Оставить камеру в покое.~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~Эти два длинных и узких углубления, скорее всего, предназначены для того, чтобы поместить в них что-нибудь.~
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 3
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 5
  IF ~~ THEN REPLY ~Разрушить камеру.~ GOTO 7
  IF ~~ THEN REPLY ~Оставить камеру в покое.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 2.2
  SAY ~В одно из углублений теперь вставлен небольшой жезл. Камера нетерпеливо гудит, словно она ожидает чего-то еще.~
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 6
  IF ~~ THEN REPLY ~Разрушить камеру.~ GOTO 7
  IF ~~ THEN REPLY ~Оставить камеру в покое.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~Жезл легко скользит на место и останавливается с легким щелчком. Она начинает тускло светиться, и камера жужжит... Хотя пока ничего не происходит.~
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",1)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY ~Второй жезл входит на место рядом с первым и останавливается с легким щелчком. Оба жезла начинают вдруг ярко светиться, и камера оживает...~
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",2)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~Жезл легко скользит на место и останавливается с легким щелчком. Она начинает тускло светиться, и камера жужжит... Хотя пока ничего не происходит.~
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",1)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~Второй жезл входит на место рядом с первым и останавливается с легким щелчком. Оба жезла начинают вдруг ярко светиться, и камера оживает...~
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",2)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY ~Вы пытаетесь ударить по камере, но ваш удар отражается от невидимого барьера, окружающего поверхность.~
  IF ~  Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Рассмотреть углубления.~ GOTO 1
  IF ~  Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Рассмотреть углубления.~ GOTO 2
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 3
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Вставить жезл управления големами в углубление.~ GOTO 4
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",0)~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 5
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",1)~ THEN REPLY ~Вставить жезл производства големов в углубление.~ GOTO 6
  IF ~~ THEN REPLY ~Оставить камеру в покое.~ GOTO 8
END


IF ~~ THEN BEGIN 8 // from: 1.8
  SAY ~Вы отворачиваетесь от странной конструкции.~
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("GolemCreated","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY ~Камера испускает легкие клубы дыма. Обе палочки в ее углублениях почернели и обгорели. Какая бы магия ни питала эту камеру, похоже, вся она истощилась.~
  IF ~~ THEN EXIT
END

