// Глава_1 Крепость Хельма Черный Фолиант

BEGIN ~NWBOOK47~

IF ~  Global("KaohionQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Вы не знаете как и для чего можно использовать эту книгу.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
!See("KAOHINON")
!Range("KAOHINON",20)
~ THEN BEGIN 1 // from:
  SAY ~Вы должны подойти к демону поближе.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
!AreaCheck("NW1040")
~ THEN BEGIN 2 // from:
  SAY ~Вы не можете использовать книгу в этом месте.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("KaohionQuest","GLOBAL",0)
GlobalLT("KaohionQuest","GLOBAL",3)
AreaCheck("NW1040")
See("KAOHINON")
Range("KAOHINON",20)
~ THEN BEGIN 3 // from:
  SAY ~Как вы хотите использовать эту книгу?~
  IF ~~ THEN REPLY ~Завершить ритуал.~ DO ~SetGlobal("KaohionQuest","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY ~Изгнать демона.~ DO ~SetGlobal("KaohionQuest","GLOBAL",5)EraseJournalEntry(%Сделка с дьяволом

Он стоит там, вечный, гордо выставляющий напоказ саму сущность зла. Это Каохинон из Бездны. Видимо, ложные хельмиты призвали его, чтобы сокрушить духа-стража, который хранил Замок Хельма. Демон сделал это, но его не освободили. Теперь он хочет, чтобы кто-то нашел Черный Фолиант и завершил ритуал, чтобы выпустить его в мир. Он обещает достойную награду, но они ведь всегда много обещают, не так ли?%)PlaySound("EFF_M63")~ SOLVED_JOURNAL ~Сделка с дьяволом

Каохинон из Бездны был изгнан обратно в темный ад, который его породил. На его месте вырос дух-страж Замка Хельма. Демон думал, что дух уничтожен, но он был просто подавлен присутствующим злом. Теперь он может помочь в борьбе с Дестером и его сообщниками, которые разорили Замок Хельма.~ EXIT
  IF ~~ THEN REPLY ~Закрыть книгу.~ EXIT
END
