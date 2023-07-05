// Елгар - полуорк-друид стоит в лагере

BEGIN ~ELGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 0 // from:
  SAY ~Ну и че ты пялишься? Че, первый раз друида-полуорка видишь?~
  IF ~~ THEN REPLY ~Э, прости. Я это не нарочно.~ GOTO 1
  IF ~~ THEN REPLY ~А ты чувствительный для такого хряка.~ GOTO 2
  IF ~~ THEN REPLY ~Придержи язык, а то я тебе покажу, насколько мне это безразлично.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~М-м. Ну, шоб больше этого мне не было тут. Так че, еще дело есть, или ты просто так - зевака?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 4
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ты лучше следи-ка за своим острым язычком, а то я тя вкопаю тут в землю и погляжу, может, дерево вырастет. Хар! Ну, так че те надо от меня?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 4
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Хар! У нас тут <MALEFEMALE> с характером! Вот уж редкая птица. Не знаю, то ли с тобой подружиться, то ли снести твою уродскую тыкву. Хар. Так че те надо, помощь или че?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 4
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Меня звать Елгар, и я защитник первого круга испытаний. Чего еще ты хочешь знать?~
  IF ~~ THEN REPLY ~О чем ты говоришь? Что это за круги ты защищаешь?~ GOTO 8
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Это роща друидов Леса Невервинтер. Тут мы встречаемся, чтобы изучать и защищать природу. А еще мы тут испытываем свою физическую силу в поединках. Вот это мой любимый момент.~
  IF ~~ THEN REPLY ~Что ты имеешь в виду - защищать природу?~ GOTO 9
  IF ~~ THEN REPLY ~И что это за испытания?~ GOTO 8
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Аавилл - архидруид. Ежели хочешь помочь роще с чем-то, ну хоть с проблемами, шо у нас тут завелись, так дуй к нему. Джаэр у нас типа заместитель, отвечает за испытания кругов.~
  IF ~~ THEN REPLY ~И что это за проблема?~ GOTO 9
  IF ~~ THEN REPLY ~И что это за испытания?~ GOTO 8
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~Слушай. Давай вали отсюда со своими занудными вопросами. Иди вон, найди себе большого красного дракона и трепись с ним. Хар!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2 6.2
  SAY ~А кого-нить другого спросить нельзя было? Ненавижу все объяснять. Ну ладно. Ежели ты друид, те надо проявить себя в бою. Тут четыре круга друидов, в этой роще. Извини, но это доступно только местным друидам. Чужаков мы не принимаем.~
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Ну тогда прощай.~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 5.1 6.1
  SAY ~Да в последнее время звери в лесах обозлились чего-то. Как с ума посходили. Можно бы их поубивать, да это, понимаешь ли, не по-друидски. Так что Аавилл собирается спасать Духа Леса. Ежели те надо подробно, так иди с ним побазарь.~
  IF ~~ THEN REPLY ~Ну тогда прощай.~ GOTO 7
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Ну, опять ты тут ходишь. Че на этот-то раз надо?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 4
  IF ~~ THEN REPLY ~Что это за место?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 11 // from:
  SAY ~Я слыхал, ты договорился с Аавиллом о помощи лесу. Ну так иди, разберись там, что к чему.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY ~Так тебе просто так удалось решить все проблемы? Мои поздравления!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 13 // from:
  SAY ~Ты убил духа леса! Проваливай, я не желаю с тобой говорить. Хар!~
  IF ~~ THEN EXIT
END
