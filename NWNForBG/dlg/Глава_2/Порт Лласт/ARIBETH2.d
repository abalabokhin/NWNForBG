// Порт-Лласт Казармы Кендрака Арибет  Арибет выглядит уставшей, сбитой с толку и куда менее уверенной, чем тогда, когда вы увиделись впервые.

BEGIN ~ARIBETH2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)
IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~Приятно видеть вас здесь, в Порт-Лласте, друг мой. Если нам вдруг и удастся выследить этот странный культ, который распространял чуму, это наверняка произойдет с вашей помощью. Я не знаю, что вам уже рассказали о распоряжениях лорда Нашера. Но я, конечно, постараюсь помочь вам, как могу.~ [ARIBE292] ~Приятно видеть вас здесь, в Порт-Лласте. Если нам вдруг и удастся выследить этот странный культ, который распространял чуму, это наверняка произойдет с вашей помощью. Я не знаю, что вам уже рассказали о распоряжениях лорда Нашера. Но я, конечно, постараюсь помочь вам, как могу.~ [ARIBE292]
  IF ~~ THEN REPLY ~Что именно приказал лорд Нашер?~ GOTO 1
  IF ~~ THEN REPLY ~Сейчас меня гораздо больше волнует ваше состояние.~ GOTO 2
  IF ~~ THEN REPLY ~И что, вы думаете, мне следует сейчас делать?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Вы, конечно, знаете, что этот Дестер... и Фентик... оба были связаны с какой-то религиозной сектой, которая и вызвала появление в городе Воющей Смерти. Мы так мало знаем об этом культе... и решить, что с ними уже покончено, только потому, что их деятельность в Невервинтере прекращена, было бы глупо и безрассудно.~ [ARIBE294]
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~То, как я себя чувствую... не важно, <CHARNAME>, по сравнению с порученной нам задачей. Пожалуйста, позвольте мне объяснить, что от нас требуется.~ [ARIBE472]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Лорд Нашер приказывает нам найти штаб этой секты, и выяснить, каковы их планы... и остановить их, пока они не сделали ничего более ужасного. Аарин Генд, главный шпион лорда Нашера, сейчас здесь, в Порт-Лласте, и он поможет вам... к нему стекается вся информация о всяких странных вещах, происходящих в северных землях.~ [ARIBE296]
   IF ~~ THEN  DO ~SetGlobal("AribethTalk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Очень возможно, что за этими странными вещами тоже стоят агенты культа. Если это так, мы сможем найти их, и узнать, где их база. Ваша помощь в этом деле, <CHARNAME>, будет неоценимой.~ [ARIBE298]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Конечно. Спрашивайте все, что хотите, <CHARNAME>.~ [ARIBE299]
  IF ~~ THEN REPLY ~Что вы и Аарин Генд собираетесь делать, пока я буду искать сектантов?~ GOTO 11
  IF ~~ THEN REPLY ~Как вы предлагаете искать этих сектантов?~ GOTO 12
  IF ~~ THEN REPLY ~Что мне делать, если я что-нибудь обнаружу?~ GOTO 13
  IF ~~ THEN REPLY ~Почему мы больше ничего не ищем в Невервинтере?~ GOTO 14
  IF ~~ THEN REPLY ~Что мы вообще знаем об этом культе?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.6
  SAY ~Что вы хотели узнать?~ [ARIBE312]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~Это хорошие новости. Что тебе удалось найти?~ [ARIBE313]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~Показать ей дневник Ганона.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~Показать ей письмо Соломону.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~Показать ей письмо Неве.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")
Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")
Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~Показать ей дневник члена культа из Чарвуда.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~Пока ничего.~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1
  SAY ~Итак, это культ разозлил существа в холмах? Положить этому конец - настоящий подвиг. Могу с точностью сказать, что твое имя не забудут, герой. Хотя информация, которую тебе удалось добыть, невероятно ценная, мы все еще не знаем, где находится культ. Эти знания будут нам полезны, когда мы решим нанести по культу удар.~ [ARIBE314]
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 17.1
  SAY ~К счастью, здесь упоминается, где можно найти некоторых других сектантов. В Чарвуде и лесу Невервинтер. Возможно, тебе стоит поискать там ту информацию, которая нам нужна. Тебе удалось еще что-нибудь выяснить?~ [ARIBE631]
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~Показать ей письмо Соломону.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~Показать ей письмо Неве.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~Показать ей дневник члена культа из Чарвуда.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~Пока ничего.~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY ~Культ хотел нанести тебе удар через их агента, да? К счастью для нас, их действия не принесли плодов. Тебе удалось еще что-нибудь выяснить?~ [ARIBE633]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~Показать ей дневник Ганона.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~Показать ей письмо Неве.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~Показать ей дневник члена культа из Чарвуда.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~Пока ничего.~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 6.3
  SAY ~Насколько я понимаю, этот Маугрим начинает нервничать. Они боятся тебя... и надо сказать, не зря. Тебе удалось еще что-нибудь выяснить?~ [ARIBE634]
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~Показать ей дневник Ганона.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~Показать ей письмо Соломону.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("CharwJ")~ THEN REPLY ~Показать ей дневник члена культа из Чарвуда.~ DO ~TakePartyItem("CharwJ")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 21
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("RelmarL")
!PartyHasItem("CharwJ")
!PartyHasItem("WardokL")~ THEN REPLY ~Пока ничего.~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.4
  SAY ~Можно только гадать, что мог бы натворить культ в Лесу Невервинтер, если бы им удалось реализовать свои планы. Отличная работа. Судя по этой информации можно предположить, что этот Маугрим и его культ находятся в Лускане. Однако, мне кажется, что это может оказаться и ловушкой. Возможно, они нарочно подстроили эту твою находку, чтобы ввести нас в заблуждение. Нужно найти еще какое-нибудь доказательство.~ [ARIBE635]
  IF ~~ THEN REPLY ~Хорошо, я скоро вернуть.~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.6
  SAY ~Хмм. Бред сумасшедшего. Попробуй догадайся, чего надеялся достичь культ в этом проклятом месте. Тебе удалось еще что-нибудь выяснить?~ [ARIBE639] 
  IF ~  PartyHasItem("GanonL")~ THEN REPLY ~Показать ей дневник Ганона.~ DO ~TakePartyItem("GanonL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 17
  IF ~  PartyHasItem("SolomL")~ THEN REPLY ~Показать ей письмо Соломону.~ DO ~TakePartyItem("SolomL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 18
  IF ~  PartyHasItem("NevaL")~ THEN REPLY ~Показать ей письмо Неве.~ DO ~TakePartyItem("NevaL")
IncrementGlobal("Evidence","GLOBAL",1)AddexperienceParty(20000)~ GOTO 19
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",0)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)AddexperienceParty(20000)~ GOTO 20
  IF ~  PartyHasItem("RelmarL")Global("WardokLetter","GLOBAL",1)~ THEN REPLY ~Показать ей дневник Релмара.~ DO ~TakePartyItem("RelmarL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("RelmarJournal","GLOBAL",1)~ GOTO 23
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",0)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)AddexperienceParty(20000)~ GOTO 22
  IF ~  PartyHasItem("WardokL")Global("RelmarJournal","GLOBAL",1)~ THEN REPLY ~Показать ей письмо Вардоку.~ DO ~TakePartyItem("WardokL")
IncrementGlobal("Evidence","GLOBAL",1)SetGlobal("WardokLetter","GLOBAL",1)~ GOTO 23
  IF ~  !PartyHasItem("GanonL")
!PartyHasItem("SolomL")
!PartyHasItem("NevaL")
!PartyHasItem("RelmarL")
!PartyHasItem("WardokL")~ THEN REPLY ~Пока ничего.~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.7
  SAY ~Итак, культ попробовал нанести тебе еще один удар! И на этот раз они выдали себя. Отлично! Судя по этой информации можно предположить, что этот Маугрим и его культ находятся в Лускане. Однако, мне кажется, что это может оказаться и ловушкой. Возможно, они нарочно подстроили эту твою находку, чтобы ввести нас в заблуждение. Нужно найти подтверждение этой информации.~ [ARIBE640]
  IF ~~ THEN REPLY ~Все понятно, я скоро вернусь.~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.5
  SAY ~Эта информация подтверждает... Культ находится в Лускане. Отлично сработано, <CHARNAME>. Ты оправдываешь доверие Лорда Нашера, и даже более того. Вы должны найти способ пробраться в Лускан, а потом и в саму Башню Хозяина. Поговорите с Аарином... надеюсь, он придумает, как вам это лучше сделать.~ [ARIBE636]
  IF ~~ THEN REPLY ~Похоже, это опасная задача.~ GOTO 24
  IF ~~ THEN REPLY ~Может быть, кто-то мне поможет? Вы пойдете со мной?~ GOTO 25
  IF ~~ THEN REPLY ~Как я попаду в башню?~ GOTO 26
  IF ~~ THEN REPLY ~Хорошо, я пойду к Аарину.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~Без сомнения. Но вы справлялись с не менее опасными заданиями, и отлично справлялись... и боюсь, в этом деле вам предстоит столкнуться с гораздо более страшными вещами, пока угроза не будет полностью устранена. Вы же согласились помочь лорду Нашеру, правда? Каковы бы ни были причины этого, я сильно сомневаюсь в том, что вы ожидали, что задача окажется простой.~ [ARIBE317]
  IF ~~ THEN REPLY ~Может быть, кто-то мне поможет? Вы пойдете со мной?~ GOTO 25
  IF ~~ THEN REPLY ~Как я попаду в башню?~ GOTO 26
  IF ~~ THEN REPLY ~Хорошо, я пойду к Аарину.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY ~И Аарин, и я, конечно, присоединимся к вам в Лускане. Аарин поедет туда, чтобы помочь вам попасть в башню. Что до меня, то я... у меня другие планы.~ [ARIBE319]
  IF ~~ THEN REPLY ~Похоже, это опасная задача.~ GOTO 24
  IF ~~ THEN REPLY ~Как я попаду в башню?~ GOTO 26
  IF ~~ THEN REPLY ~Хорошо, я пойду к Аарину.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY ~Как я уже сказала, поговорите с Аарином Гендом. Если нам повезет, он придумает не только, как вам проникнуть в город, но и как попасть в саму башню.~ [ARIBE323]
  IF ~~ THEN REPLY ~Похоже, это опасная задача.~ GOTO 24
  IF ~~ THEN REPLY ~Может быть, кто-то мне поможет? Вы пойдете со мной?~ GOTO 25
  IF ~~ THEN REPLY ~Хорошо, я пойду к Аарину.~ DO ~SetGlobal("CultInLuskan","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Я здесь, чтобы следить за выполнением распоряжений лорда Нашера, а Аарин продолжает использовать свою агентуру для сбора информации за пределами Невервинтера. Честно говоря, моя собственная роль не очень определенна. Часть меня думает, что мой лорд Нашер просто хочет, чтобы здесь был кто-то, кому он доверяет... а другой части кажется, что ему не хочется вспоминать о Фентике и моей боли. Все равно, мы будем делать все возможное, чтобы помочь вам, <CHARNAME>. Не думайте, что ваши усилия остаются незамеченными.~ [ARIBE300]
  IF ~~ THEN REPLY ~Как вы предлагаете искать этих сектантов?~ GOTO 12
  IF ~~ THEN REPLY ~Что мне делать, если я что-нибудь обнаружу?~ GOTO 13
  IF ~~ THEN REPLY ~Почему мы больше ничего не ищем в Невервинтере?~ GOTO 14
  IF ~~ THEN REPLY ~Что мы вообще знаем об этом культе?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY ~У Аарина есть несколько мыслей о том, где могут скрываться сектанты. Сейчас он пытается найти способ попасть в город Лускан... его ворота закрыты с тех пор, как в Невервинтере началась эпидемия. Я предлагаю вам поговорить с Аарином о его предположениях. Поищите какие-нибудь сведения о древних культах или о других странных вещах. Когда будет найден способ попасть в Лускан, вы можете поискать и там. Если нам повезет, вы обнаружите кого-нибудь из сектантов и узнаете, кто они, и где находится их база.~ [ARIBE303]
  IF ~~ THEN REPLY ~Что вы и Аарин Генд собираетесь делать, пока я буду искать сектантов?~ GOTO 11
  IF ~~ THEN REPLY ~Что мне делать, если я что-нибудь обнаружу?~ GOTO 13
  IF ~~ THEN REPLY ~Почему мы больше ничего не ищем в Невервинтере?~ GOTO 14
  IF ~~ THEN REPLY ~Что мы вообще знаем об этом культе?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY ~Любую информацию, какую вам удастся обнаружить, вы должны немедленно сообщать мне и Аарину. Когда мы будем больше знать об этой секте, лорд Нашер решит, что делать дальше.~ [ARIBE306]
  IF ~~ THEN REPLY ~Что вы и Аарин Генд собираетесь делать, пока я буду искать сектантов?~ GOTO 11
  IF ~~ THEN REPLY ~Как вы предлагаете искать этих сектантов?~ GOTO 12
  IF ~~ THEN REPLY ~Почему мы больше ничего не ищем в Невервинтере?~ GOTO 14
  IF ~~ THEN REPLY ~Что мы вообще знаем об этом культе?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.4
  SAY ~В городе поиски продолжаются, <CHARNAME>. Конечно же, лорд Нашер приказал прочесать Невервинтер в поисках следов культа. Однако он чувствует, что основные силы сектантов располагаются где-то за пределами Невервинтера... и что именно вы, приложив усилия здесь, можете добиться результатов.~ [ARIBE307]
  IF ~~ THEN REPLY ~Что вы и Аарин Генд собираетесь делать, пока я буду искать сектантов?~ GOTO 11
  IF ~~ THEN REPLY ~Как вы предлагаете искать этих сектантов?~ GOTO 12
  IF ~~ THEN REPLY ~Что мне делать, если я что-нибудь обнаружу?~ GOTO 13
  IF ~~ THEN REPLY ~Что мы вообще знаем об этом культе?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.5
  SAY ~Их представителем в Невервинтере, как вы выяснили, был Дестер, но про саму секту нам известно очень мало. Аарин уверен, что ядро секты находится за пределами Невервинтера, и что она еще покажет нам свою истинную силу. Задача, стоящая перед нами, безусловно будет очень опасной... но нам совершенно необходимо выяснить, что это за секта, и каковы ее планы.~ [ARIBE309]
  IF ~~ THEN REPLY ~Что вы и Аарин Генд собираетесь делать, пока я буду искать сектантов?~ GOTO 11
  IF ~~ THEN REPLY ~Как вы предлагаете искать этих сектантов?~ GOTO 12
  IF ~~ THEN REPLY ~Что мне делать, если я что-нибудь обнаружу?~ GOTO 13
  IF ~~ THEN REPLY ~Почему мы больше ничего не ищем в Невервинтере?~ GOTO 14
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Мне все понятно, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~Почему вы спрашиваете, <CHARNAME>? Главный шпион что-то наговорил вам, да?~ [ARIBE362]
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY ~Нет, не говорил.~ GOTO 27
  IF ~  Global("TalkDreams","GLOBAL",0)~ THEN REPLY ~(Ложь) Вообще-то, да.~ GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY ~(Ложь) Нет, не говорил.~ GOTO 27
  IF ~  GlobalGT("TalkDreams","GLOBAL",0)~ THEN REPLY ~Вообще-то, да.~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 7.1.2
  SAY ~Понятно. Думаю, мое состояние ни для кого не тайна. Но Аарин зря беспокоится... несколько дурных снов -- это еще не повод тревожиться. Слуги утверждают, что я разговариваю во сне и говорю что-то очень страшное. Они обращаются со мной настолько осторожно, словно я сошла с ума, а Аарин обращает на их суеверную болтовню гораздо больше внимания, чем следовало бы. После всего того, что произошло, после этой чумы и... и Фентика, я думаю, нет ничего удивительного в появлении тревожных снов, вы не считаете, <CHARNAME>?~ [ARIBE362]
  IF ~~ THEN REPLY ~Нет, это совершенно не удивительно.~ GOTO 28
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Эти сны настолько неприятны, что не дают вам спать?~ GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Эти сны настолько неприятны, что не дают вам спать?~ GOTO 31
  IF ~~ THEN REPLY ~Возможно, вы сходите с ума. Просто рехнулись.~ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~Ну наконец-то, хоть кто-то разумный! Я все время говорю Аарину, что из-за этих дурацких снов не стоит беспокоиться, но он продолжает относиться ко мне, как к инвалиду. Эти сны наверняка... наверняка со временем пройдут. У нас есть гораздо более важные поводы для беспокойства, чем мой сон.~ [ARIBE366]
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Похоже, вы не очень уверены.~ GOTO 29
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Похоже, вы не очень уверены.~ GOTO 31
  IF ~~ THEN REPLY ~Возможно, вы сходите с ума. Просто рехнулись.~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY ~И вы тоже? Этот мир что - сошел с ума, или я? Эти сны... тревожат и пугают меня, но... они пройдут! Это моя ноша, мне ее и нести, а не кому-нибудь еще.~ [ARIBE371]
  IF ~~ THEN REPLY ~Почему бы вам не рассказать мне об этих снах? Может, станет легче.~ DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY ~А вы не думали, что, возможно, это гораздо более серьезно?~ DO ~SetGlobal("DreamsOfAribeth","GLOBAL",1)
SetGlobal("AribethFriend","GLOBAL",1)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 32
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY ~Сны - это только сны, и причина в том, что моя скорбь слишком сильна для меня. Я не хочу обсуждать их... особенно с вами. Давайте вернемся к обсуждению вашего задания, <CHARNAME>, а об этом не будем больше говорить.~ [ARIBE369]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1.2
  SAY ~(Вздыхает) Возможно, вы и правы, <CHARNAME>. Может быть, будет неплохо, если свое мнение об этих снах выскажет кто-нибудь другой.~ [ARIBE372]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~Я... Я падаю во сне. Всегда падаю. В полной тьме, которая душит и засасывает меня. Ко мне тянутся скрюченные руки, и голоса... какофония шепота, они умоляют меня помочь им. И... и потом я вижу замотанную в саван фигуру. Это Фентик. Он уходит от меня, я пытаюсь догнать его, но он всегда исчезает в темноте. Голоса становятся громче. Они обвиняют меня, и я... я сгораю от стыда, хотя не знаю, в чем меня винят. Я зову на помощь, требую чтобы они прекратили насмехаться, но никто меня не слышит.~ [ARIBE373]
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~И тогда я хватаю удаляющуюся фигуру... и вижу, что это не Фентик. Он поворачивается и с грустью смотрит на меня... и я понимаю, что это Тир... и тогда мой бог поворачивается ко мне спиной. Это... это мои сны, <CHARNAME>. Возможно, вы поймете, почему я не хочу обсуждать их. Я... боюсь... боюсь того, что они могут означать.~ [ARIBE373]
  IF ~~ THEN REPLY ~Это вполне можно понять. Меня бы это тоже испугало.~ GOTO 35
  IF ~~ THEN REPLY ~Это страхи и заботы давят на ваш разум, Арибет.~ GOTO 35
  IF ~~ THEN REPLY ~Я не знаю, что сказать.~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1.2.3
  SAY ~Все в порядке, <CHARNAME>. Тут ведь мало что можно сказать, правда? Но... Я рада, что рассказала вам... теперь эти сны будут не так тревожить меня. Я теперь чувствую себя гораздо лучше, спасибо вам. Хм... Это напомнило мне о том, как я стала паладином. Когда-нибудь я расскажу вам эту историю. Ну, а до тех пор, давайте вернемся к вашей задаче. В конце концов, у нас хотя бы есть что-то, на чем мы можем сконцентрироваться.~ [ARIBE386]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY ~Вот как, я сошла с ума? Несколько бессонных ночей из-за того, что мне пришлось испытать больше скорби, чем могло вынести мое сердце, и меня уже считают сумасшедшей гарпией, с которой нужно обращаться, защитив руки перчатками? Я должна была понять, что это не следует обсуждать с вами. Давайте вернемся к вашему заданию, а об этом больше не будем говорить.~ [ARIBE389]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4
  SAY ~Я так говорила, да? А вы уверены, что хотите услышать эту историю? Она не особенно интересная, а я не хочу докучать вам, <CHARNAME>.~ [ARIBE392]
  IF ~~ THEN REPLY ~Нет, я хочу послушать.~ GOTO 36
  IF ~~ THEN REPLY ~Тогда, может быть, в другой раз.~ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 8.1
  SAY ~Как хотите. Но только не жалуйтесь потом, если история вас разочарует в лучших ожиданиях. Я, в конце концов, не бард. С чего мне начать?~ [ARIBE392]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 8.2
  SAY ~Возможно, так будет лучше всего. Так что я могу для вас сделать?~ [ARIBE431]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY ~Моя семья жила в деревне людей, в дикой местности у северных гор, и некогда я и представить себе не могла, что стану кем-то большим, чем просто искусным охотником, каким был мой отец. Деревня была разрушена во время похода полчищ орков на юг. Моя семья погибла, но я выжила. Много лет я мечтала только о том, чтобы как-то отомстить оркам. Я бродила по диким скалам с луком в руках и безжалостно убивала всех орков, которые попадались мне на пути.~ [ARIBE394]
  IF ~~ THEN REPLY ~Это совсем на вас не похоже.~ GOTO 39
  IF ~~ THEN REPLY ~И как же вы стали паладином после этого?~ GOTO 40
  IF ~~ THEN REPLY ~Ну вот, мне уже скучно...~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~Ну, конечно, я тогда была совсем другой. Мысль о мести полностью завладела мной, я повсюду сеяла смерть... но не могла найти покоя.~ [ARIBE397]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY ~Это было непросто. Жажда мести полностью охватила меня. Честно говоря, я была ничем не лучше, чем те твари, на которых я охотилась.~ [ARIBE428]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY ~Тсссс, <CHARNAME>. Я еще только начала свою историю. Постарайтесь уделить мне еще чуть-чуть внимания.~ [ARIBE429]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY ~В пятую зиму моей охоты я выслеживала племя орков на Хребте Мира. И тут разыгралась такая жуткая снежная буря, что мне оставалось только поставить палатку и молиться. Буря была безжалостной и продолжалась много дней, а я лежала в снегу и умирала, когда увидела, что ко мне приближается человек. Я решила, что сошла с ума. Он был высоким и сильным, хотя я заметила, что у него нет правой руки. И он, кажется, совсем не чувствовал холода... он ласково посмотрел на меня и без усилий поднял со снега.~ [ARIBE398]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY ~Потом я ничего не помню. Очнулась я в маленьком монастыре Ильматера около города Сильверимун. Монахи сказали мне, что я была на грани смерти.~ [ARIBE401]
  IF ~~ THEN REPLY ~И кто был человек, который спас вас?~ GOTO 44
  IF ~~ THEN REPLY ~Человек, который спас вас... это был Тир?~ GOTO 45
  IF ~~ THEN REPLY ~Вы правы, это длинная история.~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY ~Я часто думала, что это был никто иной, как сам Тир, Владыка Справедливости. Хотя, возможно, это самонадеянно. Кем бы он ни был, монахи Ильматера не видели, как он принес меня... и я тоже больше его не видела. Или, может быть, правильнее будет сказать, что я никогда не видела его наяву. В течение многих месяцев после этого он приходил ко мне во сне и говорил, что моя месть не несет в себе истинной справедливости. Вначале я отвергала его, собираясь вернуться к моей кровавой охоте. Сны стали сниться чаще, а человек был все более резок со мной. Он сказал мне, что путь лежит где-то в другом месте, и в конце концов я покинула горы, приехала в Невервинтер и стала служить Тиру. Сны больше не возвращались.~ [ARIBE402]
  IF ~~ THEN REPLY ~Что случилось потом?~ GOTO 47
  IF ~~ THEN REPLY ~И тогда вы стали жрецом, как Фентик?~ GOTO 48
  IF ~~ THEN REPLY ~Так вы думаете, что сам Тир повелел вам служить ему?~ GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY ~Я часто думала о нем так. Воплощение самого Искалеченного Бога. Хотя, возможно, с моей стороны это самонадеянно. Кем бы он ни был, монахи Ильматера не видели, как он принес меня... и я тоже больше его не видела. Или, может быть, правильнее будет сказать, что я никогда не видела его наяву. В течение многих месяцев после этого он приходил ко мне во сне и говорил, что моя месть не несет в себе истинной справедливости. Вначале я отвергала его, собираясь вернуться к моей кровавой охоте. Сны стали сниться чаще, а человек был все более резок со мной. Он сказал мне, что путь лежит где-то в другом месте, и в конце концов я покинула горы, приехала в Невервинтер и стала служить Тиру. Сны больше не возвращались.~ [ARIBE402]
  IF ~~ THEN REPLY ~Что случилось потом?~ GOTO 47
  IF ~~ THEN REPLY ~И тогда вы стали жрецом, как Фентик?~ GOTO 48
  IF ~~ THEN REPLY ~Так вы думаете, что сам Тир повелел вам служить ему?~ GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY ~(вздыхает) Вы сами просили меня рассказать об этом, <CHARNAME>. Хотите, чтобы я перестала?~ [ARIBE426]
  IF ~~ THEN REPLY ~Нет, я просто пошутил.~ ~Нет, я просто пошутила.~ GOTO 50
  IF ~~ THEN REPLY ~Да, возможно, я послушаю вас позже.~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY ~Очень смешно. Только, наверное, я просто не в легкомысленном настроении. Позвольте мне вернуться к рассказу о человеке, который спас меня. Я часто думала, что это был никто иной, как сам Тир, Владыка Справедливости. Хотя, возможно, это самонадеянно. Кем бы он ни был, монахи Ильматера не видели, как он принес меня... и я тоже больше его не видела. Или, может быть, правильнее будет сказать, что я никогда не видела его наяву. В течение многих месяцев после этого он приходил ко мне во сне и говорил, что моя месть не несет в себе истинной справедливости. Вначале я отвергала его, собираясь вернуться к моей кровавой охоте. Сны стали сниться чаще, а человек был все более резок со мной. Он сказал мне, что путь лежит где-то в другом месте, и в конце концов я покинула горы, приехала в Невервинтер и стала служить Тиру. Сны больше не возвращались.~ [ARIBE427]
  IF ~~ THEN REPLY ~Что случилось потом?~ GOTO 47
  IF ~~ THEN REPLY ~И тогда вы стали жрецом, как Фентик?~ GOTO 48
  IF ~~ THEN REPLY ~Так вы думаете, что сам Тир повелел вам служить ему?~ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 46.2
  SAY ~Возможно, так будет лучше всего. Так что я могу для вас сделать?~ [ARIBE431]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY ~Жрецы Тира приняли меня, и со временем я поняла их и все больше восхищалась Искалеченным Богом. Я решила защищать справедливость и стать паладином Тира, и надолго обрела покой. Моя преданность делу позволила мне быстро подняться в ранге, а потом, позже, я встретила молодого послушника, Фентика, и поняла, что я... нашла... нашла, наконец, мой истинный путь...~ [ARIBE407]
  IF ~~ THEN REPLY ~Простите, у меня и в мыслях не было огорчать вас.~ GOTO 52
  IF ~~ THEN REPLY ~Но вы же не будете снова плакать, правда?~ GOTO 53
  IF ~~ THEN REPLY ~Наконец-то эта история закончилась. Давайте поговорим о чем-нибудь другом.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 47.1
  SAY ~Нет, я... Спасибо вам, <CHARNAME>. Спасибо вам, что выслушали мой рассказ. Мне очень хорошо с вами. Я бы хотела называть вас... другом. Только Тир знает, как трудно найти настоящего друга в эти мрачные времена. Я надеюсь, что по отношению ко мне вы чувствуете то же самое.~ [ARIBE409] ~Нет, я... Спасибо вам, <CHARNAME>. Спасибо вам, что выслушали мой рассказ. Мне очень хорошо с вами. Я бы хотела называть вас... подругой. Только Тир знает, как трудно найти настоящую подругу в эти мрачные времена. Я надеюсь, что по отношению ко мне вы чувствуете то же самое.~ [ARIBE409]
  IF ~~ THEN REPLY ~Да.~ DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY ~Мне не нужен еще один друг.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY ~Ух ты... Помедленнее, леди! Это значит, что мы скоро пойдем в постель?~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY ~Я рада, друг мой. А теперь давайте вернемся к обсуждению вашего задания.~ [ARIBE412]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY ~Я... Понимаю. Что ж, это очень грустно, потому что мне бы очень хотелось иметь настоящего друга. Давайте вернемся к обсуждению вашего задания.~ [ARIBE413]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 52.3
  SAY ~...Я забуду, что вы это сказали, сэр. И мы оба забудем о том, что сказала я. Давайте вернемся к обсуждению вашего задания.~ [ARIBE415]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.2
  SAY ~Нет, не сразу. Тогда я еще не встречалась с Фентиком. Жрецы Тира приняли меня, и со временем я поняла их и все больше восхищалась Искалеченным Богом. Я решила защищать справедливость и стать паладином Тира, и надолго обрела покой. Моя преданность делу позволила мне быстро подняться в ранге, а потом, позже, я встретила молодого послушника, Фентика, и поняла, что я... нашла... нашла, наконец, мой истинный путь...~ [ARIBE423]
  IF ~~ THEN REPLY ~Простите, у меня и в мыслях не было огорчать вас.~ GOTO 52
  IF ~~ THEN REPLY ~Но вы же не будете снова плакать, правда?~ GOTO 53
  IF ~~ THEN REPLY ~Наконец-то эта история закончилась. Давайте поговорим о чем-нибудь другом.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 49 // from: 44.3
  SAY ~Я не знаю. Сначала я даже не поклонялась ему. Я устала от этих снов и не хотела прекращать охоту на орков. Жрецы Тира приняли меня, и со временем я поняла их и все больше восхищалась Искалеченным Богом. Я решила защищать справедливость и стать паладином Тира, и надолго обрела покой. Моя преданность делу позволила мне быстро подняться в ранге, а потом, позже, я встретила молодого послушника, Фентика, и поняла, что я... нашла... нашла, наконец, мой истинный путь...~ [ARIBE424]
  IF ~~ THEN REPLY ~Простите, у меня и в мыслях не было огорчать вас.~ GOTO 52
  IF ~~ THEN REPLY ~Но вы же не будете снова плакать, правда?~ GOTO 53
  IF ~~ THEN REPLY ~Наконец-то эта история закончилась. Давайте поговорим о чем-нибудь другом.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 54
END

IF ~~ THEN BEGIN 53 // from: 47.2
  SAY ~Нет. Нет... Я не буду больше плакать. Спасибо вам, что выслушали мой рассказ. Мне очень хорошо с вами. Я бы хотела называть вас... другом. Только Тир знает, как трудно найти настоящего друга в эти мрачные времена. Я надеюсь, что по отношению ко мне вы чувствуете то же самое.~ [ARIBE409] ~Нет. Нет... Я не буду больше плакать. Спасибо вам, что выслушали мой рассказ. Мне очень хорошо с вами. Я бы хотела называть вас... подругой. Только Тир знает, как трудно найти настоящую подругу в эти мрачные времена. Я надеюсь, что по отношению ко мне вы чувствуете то же самое.~ [ARIBE409]
  IF ~~ THEN REPLY ~Да.~ DO ~SetGlobal("AribethFriend","GLOBAL",2)SetGlobalTimer("TalkAboutAribeth","LOCALS",ONE_DAY)~ GOTO 55
  IF ~~ THEN REPLY ~Мне не нужен еще один друг.~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 56
  IF ~  Gender(Player1,MALE)~ THEN REPLY ~Ух ты... Помедленнее, леди! Это значит, что мы скоро пойдем в постель?~ DO ~SetGlobal("AribethFriend","GLOBAL",66)~ GOTO 57
END

IF ~~ THEN BEGIN 54 // from: 47.3
  SAY ~Давайте поговорим о чем-нибудь другом.~ [ARIBE422]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Хорошо, я пойду.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.5
  SAY ~Да, я сержусь. Я все больше и больше думаю о том, как окончил свои дни Фентик... и как я ничего не смогла сделать, чтобы предотвратить это... и все больше во мне гнева! Фентик всю свою жизнь посвятил служению справедливости и исполнению своего долга, в точности как и я. И что он получил за это? Он был отвергнут. Отвергнут своим лордом на потребу глупой толпе, отвергнут своим богом из-за единственной глупой ошибки. Скажите мне, почему я не должна гневаться, <CHARNAME>!~ [ARIBE432]
  IF ~~ THEN REPLY ~Но Фентик принял участие в смерти тысяч людей!~ GOTO 58
  IF ~~ THEN REPLY ~Возможно, это на Фентика вам следует сердиться.~ GOTO 59
  IF ~~ THEN REPLY ~Возможно, вы правы. У вас есть причина для негодования.~ GOTO 60
  IF ~~ THEN REPLY ~Мне не нравится, когда вы так говорите.~ GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 9.1
  SAY ~Вы делаете из него убийцу! Это не Фентик придумал эту чуму, и не Фентик предал наш город! Он просто был слишком доверчивым и слишком верным своему долгу!~ [ARIBE434]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 9.2
  SAY ~Да. Фентик тоже заслуживает моего гнева. Глупец,  несчастный глупец! Если бы он был менее доверчивым, менее преданным, он никогда бы не дошел до того, что случилось!~ [ARIBE458]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 60 // from: 9.3
  SAY ~Да. Я должна гневаться на тех, кто напрасно казнил Фентика. И на Фентика я тоже должна гневаться, за то, что он был хорошим человеком и доверчивым дураком!~ [ARIBE460]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 9.4
  SAY ~И почему это я не должна так говорить? Если бы Фентик больше сомневался и был менее доверчивым, менее преданным, возможно, он бы до сих пор был жив!~ [ARIBE461]
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.1
  SAY ~И вот Фентик получил свою награду. Спасибо тебе, Тир, Владыка Справедливости, за помощь своему преданному слуге! И что, я буду следующей? Я тоже закончу свою жизнь как изменница, и буду казнена за то, что слишком рьяно истребляю несправедливость там, где ее вижу? Тир покинет и меня тоже?~ [ARIBE436]
  IF ~~ THEN REPLY ~Вы говорите так, словно потеряли веру.~ GOTO 63
  IF ~~ THEN REPLY ~Не говорите так! Прекратите, это не похоже на вас!~ GOTO 64
  IF ~~ THEN REPLY ~Наконец-то, мне кажется, вы прозрели!~ GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY ~Я... Я не знаю, <CHARNAME>. Тир привел меня сюда, он наставил меня на этот путь. Я хочу знать, зачем. Зачем учить меня истинной справедливости, а потом швырять ее мне в лицо?~ [ARIBE438]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 64 // from: 62.2
  SAY ~А что похоже на меня, <CHARNAME>? Тир привел меня сюда и наставил меня на этот путь, он научил меня понимать значение справедливости... только чтобы бросить ее мне в лицо. Я хочу знать, почему!~ [ARIBE456]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 62.3
  SAY ~У меня не было откровений... только новые и новые вопросы. Тир наставил меня на этот путь, научил меня истинной справедливости... только для того, чтобы бросить ее мне в лицо. Я хочу знать, зачем!~ [ARIBE456]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 63.1.64.1.65.1
  SAY ~Все, что я знаю, это то, что... я устала от скорби. Я устала от беспомощности. Я чувствую себя виноватой из-за этих сомнений... но еще я чувствую, что должна сомневаться. Месть не путь Тира, но я... я боюсь, что здесь мне не дождаться справедливости. Для Фентика не было справедливости, только месть... и для меня ее не будет. Может быть это все... сны. Они все не прекращаются, и становятся все хуже с каждой ночью, <CHARNAME>. Я слышу кричащие голоса, так много голосов...~ [ARIBE439]
  IF ~~ THEN REPLY ~Сны стали еще хуже?~ GOTO 67
  IF ~~ THEN REPLY ~Это плохо. Возможно, нам следует вернуться в Невервинтер.~ GOTO 68
  IF ~~ THEN REPLY ~Я думаю, вы действительно сходите с ума!~ GOTO 69
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY ~Да. Я вижу, как у меня на глазах убивают Фентика, снова и снова. Я слышу смех, а потом многие голоса снова и снова зовут на помощь. Это почти что невыносимо.~ [ARIBE442]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY ~Нет. Нет, мне туда не нужно. И это только помешает вам выполнить вашу задачу... а я этого не хочу.~ [ARIBE452]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 66.3
  SAY ~Может и так. Я могу придумать только одну вещь, которая меня успокаивает.~ [ARIBE452]
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 67.1.68.1.69.1
  SAY ~Обещайте мне, <CHARNAME>... обещайте, как мой лучший друг, что вы найдете этот культ и отомстите им за меня!~ [ARIBE443]
  IF ~~ THEN REPLY ~Я обещаю.~ GOTO 71
  IF ~~ THEN REPLY ~Я не могу этого обещать, Арибет.~ GOTO 72
  IF ~~ THEN REPLY ~Я не думаю, что это вам поможет.~ GOTO 72
  IF ~~ THEN REPLY ~Вы сошли с ума!~ GOTO 73
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY ~Спасибо вам, друг мой. Это... это все, что я могу придумать, чтобы прекратить эти сны. Я должна что-то сделать, и то, что вы облегчите мою участь, очень утешает меня.~ [ARIBE444]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 70.2
  SAY ~Понятно. Я не могу придумать ничего другого, что могло бы прекратить эти сны. Возможно... возможно, вы правы. Возможно, мне просто нужно отдохнуть, и тогда все станет ясно.~ [ARIBE451]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 70.3
  SAY ~А я считала вас другом. Я вижу, никто не в силах понять, через что я прошла... ладно, пусть так. Тогда оставьте меня, <CHARNAME>, и возвращайтесь к вашему заданию. Мы не будем больше обсуждать мои чувства.~ [ARIBE454]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.1.72.1
  SAY ~Вы были мне хорошим другом, <CHARNAME>. Вот... возьмите это. Это кольцо, которое принадлежало моему отцу. Я хочу, чтобы вы взяли его. Пусть это будет символом нашей дружбы. Возможно, если... со мной что-нибудь случится... это будет напоминать вам обо мне...~ [ARIBE445] ~Вы были мне хорошей подругой, <CHARNAME>. Вот... возьмите это. Это кольцо, которое принадлежало моему отцу. Я хочу, чтобы вы взяли его. Пусть это будет символом нашей дружбы. Возможно, если... со мной что-нибудь случится... это будет напоминать вам обо мне...~ [ARIBE445]
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 75
  IF ~~ THEN REPLY ~Очень хорошо, я возьму это.~ GOTO 76
  IF ~~ THEN REPLY ~Нет, я не хочу.~ GOTO 77
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY ~Я ничего не имею в виду, друг мой. Это... просто усталость и тревога заставляют меня говорить так. Пожалуйста... возьмите кольцо.~ [ARIBE447] ~Я ничего не имею в виду. Это... просто усталость и тревога заставляют меня говорить так. Пожалуйста... возьмите кольцо.~ [ARIBE447]
  IF ~~ THEN REPLY ~Очень хорошо, я возьму это.~ GOTO 76
  IF ~~ THEN REPLY ~Нет, я не хочу.~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 74.2
  SAY ~Это радует меня. Вы окажете мне честь, если будете носить его. Давайте поговорим позже. Идите, <CHARNAME>... найдите сердце этого культа и возвращайтесь ко мне. Я всем сердцем желаю вам удачи.~ [ARIBE448]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("ArRing",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 74.3
  SAY ~Тогда выбросьте его, если наша дружба для вас ничего не значит. Хотя я все-таки надеюсь, что это не так. Давайте поговорим позже. Идите, <CHARNAME>... найдите сердце этого культа и возвращайтесь ко мне. Я всем сердцем желаю вам удачи.~ [ARIBE450]
  IF ~~ THEN DO ~SetGlobal("AribethFriend","GLOBAL",4)GiveItemCreate("ArRing",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY ~Согласно вашей информации, база сектантов находится в Башне Хозяина, в Лускане. Вы должны найти способ пробраться в Лускан, а потом и в саму башню. Аарин наверняка сможет помочь вам в этом. А потом мы оба встретимся с вами в городе, чтобы оказать помощь, если понадобится.~ [ARIBE462]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 78 // from: 4.7
  SAY ~ Хотелось бы мне, чтобы мы могли предложить наводки получше, <CHARNAME>... но у нас нет ничего лучше информации Аарина. Я могу предложить только посетить местных жителей, о которых говорил Аарин, и внимательно следить за всем, что покажется вам необычным. Разумеется, не все необычное будет иметь отношение к этому культу... но они где-то рядом и действуют, так что всегда есть шансы, что вы обнаружите их, если будете настороже.~ [ARIBE464]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 4.8
  SAY ~ Я предлагаю вам поговорить с Аарином Гендом и решить, на чем сосредоточить свои усилия в поисках секты.~ [ARIBE467]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
Global("Evidence","GLOBAL",0)
Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 80 // from:
  SAY ~Жизненно необходимо, чтобы вы выполнили задание лорда Нашера, <CHARNAME>. Многое зависит от того, что еще планируют союзники Дестера. Вы узнали что-то новое об этом культе?~ [ARIBE474]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)
GlobalGT("Evidence","GLOBAL",0)
GlobalGT("AribethFriend","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
!Global("AribethFriend","GLOBAL",4)
!Global("RelmarJournal","GLOBAL",1)
!Global("WardokLetter","GLOBAL",1)
IsGabber(Player1)~ THEN BEGIN 81 // from:
  SAY ~Я рада видеть, что вы целы и невредимы, друг мой. Лорд Нашер говорит, что уверен в вашем успехе, а я очень беспокоюсь, потому что вы подвергаете себя ужасной опасности. Вы узнали что-то новое об этом культе?~ [ARIBE475]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)
Global("AribethFriend","GLOBAL",4)
Global("RelmarJournal","GLOBAL",1)
Global("WardokLetter","GLOBAL",1)
!Global("AribethFriend","GLOBAL",66)
IsGabber(Player1)~ THEN BEGIN 82 // from:
  SAY ~Я рада снова видеть вас, <CHARNAME>. Каждый раз, когда мне кажется, что вы взвалили на свои плечи слишком тяжкую ношу, вы поражаете меня тем, что снова и снова блестяще справляетесь со всеми трудностями. Вы узнали что-то новое об этом культе?~ [ARIBE476]
  IF ~~ THEN REPLY ~У меня есть несколько вопросов об этом задании.~ GOTO 5
  IF ~  OR(6)
PartyHasItem("GanonL")
PartyHasItem("SolomL")
PartyHasItem("NevaL")
PartyHasItem("RelmarL")
PartyHasItem("CharwJ")
PartyHasItem("WardokL")~ THEN REPLY ~Мне удалось узнать кое-какую информацию о секте.~ GOTO 6
  IF ~  Global("DreamsOfAribeth","GLOBAL",0)~ THEN REPLY ~Вы выглядите усталой. Неважно спите?~ GOTO 7
  IF ~  Global("AribethFriend","GLOBAL",1)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы обещали как-нибудь рассказать, как вы стали паладином.~ GOTO 8
  IF ~  Global("AribethFriend","GLOBAL",3)
GlobalTimerExpired("TalkAboutAribeth","LOCALS")~ THEN REPLY ~Вы рассержены. Что-то случилось?~ GOTO 9
  IF ~  Global("CultInLuskan","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 10
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",1)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 78
  IF ~  !Global("CultInLuskan","GLOBAL",1)Global("AaranTalk","GLOBAL",0)~ THEN REPLY ~Вы можете дать мне какой-нибудь совет?~ GOTO 79
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 83 // from:
  SAY ~Извините, я не с вами могу обсуждать дела Невервинтера. Пусть ко мне подойдет <CHARNAME>,  я буду разговаривать только с ним. ~
  IF ~~ THEN EXIT
END
