// Восточная дорога, Пещера троллей Дженис - мать Ревата - человек маг .  Диалог - m2q2ajanis Находится в сфере Отилука но должна разговаривать

//SPWI413.SPL	Упругая сфера Отилука единственный способ убрать ее - использовать заклинание "Рассеять магию".
//SPWI853.SPL	Упругая сфера Отилука
//SPIN853.SPL	Упругая сфера Отилука
// Убрать из заклинания эффект невидимости, удержания, иммунитет к Kill

// В скрипт пещеры
//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		CreateVisualEffectObject("SPDEATH3","Janis")
//             PlaySound("DELOR04")
//		Wait(1)
//		Kill("Janis")
//END

// В скрипт бараков
//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		SetGlobal("SPRITE_IS_DEADJANIS","GLOBAL",1)
//END

// В скрипт Дженис
//IF
//	Global("JanisHasRing","LOCALS",1)
//THEN
//	RESPONSE #100
//		SetGlobal("JanisHasRing","LOCALS",2)
//             DestroyItem("OtilukeR") // Убрать сферу Отилука
//END

//IF
//	Global("JanisHasRing","LOCALS",2)
//	Delay(3)
//THEN
//	RESPONSE #100
//		SetGlobal("JanisHasRing","LOCALS",3)
//		StartDialogNoSet(LastTalkedToBy(Myself))
//END

//IF
//	Global("RevatQuest","GLOBAL",3)
//THEN
//	RESPONSE #100
//		EscapeArea()
//END

BEGIN ~JANIS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("RevatQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY ~Эх... твоя кожа не зеленая... Ты не очень-то смахиваешь на этих безобразных троллей. Что ты здесь делаешь?~ [NOBFE09]
  IF ~~ THEN REPLY ~Я очищаю эти пещеры от троллей и огров. Кто вы и как сюда попали?~ GOTO 1
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY ~Вы - мамочка Ревата, так? Я здесь, чтобы спасти вас.~ GOTO 2
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY ~Можете больше не переживать. Я здесь, чтобы спасти вас.~ GOTO 2
  IF ~~ THEN REPLY ~Троллей больше нет, идите куда хотите, но не со мной. Вы и сами можете выбраться.~ GOTO 3
  IF ~~ THEN REPLY ~Просто постойте здесь и не двигайтесь. Я вернусь.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Меня зовут Дженис, и я пленница этих монстров. Ну, своего рода пленница.~
  IF ~~ THEN REPLY ~Что вы имеете в виду под 'своего рода пленница'?~ GOTO 5
  IF ~~ THEN REPLY ~Ну, тролли, что охраняли вас, убиты, так что можете идти.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Меня зовут Дженис. Надеюсь, ты это будешь помнить дольше, чем мой мальчик.~
  IF ~~ THEN REPLY ~Простите, он ни разу не упомянул ваше имя.~ GOTO 6
  IF ~~ THEN REPLY ~Раз уж я здесь, чтобы спасти вас, могли бы быть и повежливей.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Боюсь, все не так просто. Почему бы мне просто не рассказать всю историю? Так будет легче всего объяснить. Видишь ли, я немалого достигла в магии, но кроме того, я просто очарована археологией. Я была в группе археологов, и мы исследовали эти пещеры. Я заинтересовалась необычным узором на стенах пещеры и случайно оказалась в стороне от остальных. Затем я услышала крики.~
  IF ~~ THEN REPLY ~На других напали тролли и огры, так?~ GOTO 8
  IF ~~ THEN REPLY ~И что ты сделала?~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Ты мне говоришь, что делать? Однако ничего другого мне не остается.~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Почему бы мне просто не рассказать всю историю? Так будет легче всего объяснить. Видишь ли, я немалого достигла в магии, но кроме того, я просто очарована археологией. Я была в группе археологов, и мы исследовали эти пещеры. Я заинтересовалась необычным узором на стенах пещеры и случайно оказалась в стороне от остальных. Затем я услышала крики.~
  IF ~~ THEN REPLY ~На других напали тролли и огры, так?~ GOTO 8
  IF ~~ THEN REPLY ~И что ты сделала?~ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~Ты не из сообразительных, я гляжу? Надеюсь только, что ведешь ты себя все-таки лучше, чем эти мерзкие тролли.~
  IF ~~ THEN REPLY ~Вы всегда так всем недовольны?~ GOTO 10
  IF ~~ THEN REPLY ~Так почему они не убили вас и не съели?~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY ~Пока что я еще не спасена. Поблагодарю тебя, когда все будет готово. Ты не из сообразительных, я гляжу? Надеюсь только, что ведешь ты себя все-таки лучше, чем эти мерзкие тролли.~
  IF ~~ THEN REPLY ~Вы всегда так всем недовольны?~ GOTO 10
  IF ~~ THEN REPLY ~Так почему они не убили вас и не съели?~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.1 5.1
  SAY ~Неужели тебе удалось дойти до этого самостоятельно, а?~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 3.2 5.2
  SAY ~Не прерывай меня. Никакого уважения к старшим - вот беда вашего поколения.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY ~Только тогда, когда мне приходится сидеть без еды и воды пару дней.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1
  SAY ~К тому времени, как я вернулась к своим, часть была убита, а часть, видимо, бежала. Я очень беспокоилась о моем сыне, Ревате. Он слегка отстает в развитии. Быстро осмотрев тела, я убедилась, что его нет среди трупов. Потом огромный тролль, никогда таких раньше не видела, вернулся назад. Похоже, он очень удивился, когда меня увидел - только это меня и спасло. Он начал улюлюкать и звать остальных, потом направился ко мне, перегородив весь выход.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~Я начала читать заклинание, но вид крови на его когтях заставил меня сбиться. Я собиралась запереть его в Упругий шар Отилука - очень редкое, но полезное заклинание.~
  IF ~~ THEN REPLY ~И что случилось?~ GOTO 13
  IF ~~ THEN REPLY ~И как долго мне еще это слушать?~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Заклинание изменило направление и заперло меня в непроницаемом силовом поле точно по форме тела. Я не могла двигаться, но и тролли не могли повредить мне. Они были так поражены, что, по-моему, возомнили меня богиней.~
  IF ~~ THEN REPLY ~Богиня? Почему вы так думаете?~ GOTO 15
  IF ~~ THEN REPLY ~По-моему, кто-то начинает впадать в маразм.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~Имей немного терпения. Я почти закончила.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~В этой 'раковине' достаточно места, чтобы я могла говорить. Увидев, что я могу говорить, а они не могут поранить меня, они начали кланяться мне и приносить дары. Я, правда, не могла их взять, но они все равно приносили.~
IF ~  PartyHasItem("RingReva")~ THEN GOTO 17
IF ~  !PartyHasItem("RingReva")~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 12.2
  SAY ~Следи за своим языком, <MALEFEMALE> юных лет. Ничто не оправдывает неуважение к старшим.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY ~Я вижу, у тебя есть кольцо Ревата. Если ты просто дотронешься до меня этим кольцом, оно отменит заклинание.~
  IF ~~ THEN REPLY ~Как оно это сделает?~ GOTO 19
  IF ~~ THEN REPLY ~Хорошо, вот кольцо.~ DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY ~Мои планы изменились. Думаю, я оставлю кольцо себе.~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY ~Ну, готовься услышать самое худшее. Хоть все тролли с ограми и перебиты, я не могу освободиться. Не знаю, сколько еще продолжится действие заклинания, но если я скоро отсюда не выберусь, я умру.~
  IF ~~ THEN REPLY ~Итак, каким образом я могу помочь вам?~ GOTO 22
  IF ~~ THEN REPLY ~Так каких действий вы ожидаете от меня по этому поводу?~ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY ~В кольце есть одноразовое заклинание отмены. Я сотворила его, чтобы защитить Ревата от заклинателей, что могли бы навредить мне, обидев моего ребенка.~
  IF ~~ THEN REPLY ~Хорошо, вот кольцо.~ DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY ~Мои планы изменились. Думаю, я оставлю кольцо себе.~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY ~О, пожалуйста, не делай этого! Без него я умру. Умоляю тебя.~
  IF ~~ THEN REPLY ~Хорошо, вот кольцо.~ DO ~SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY ~Нет. Я оставлю его себе, и вы умрете. Прощайте.~ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 18
  SAY ~Я прошу тебя найти моего сына Ревата. У него кольцо, что досталось ему от отца. В кольце есть одноразовое заклинание отмены. Я сотворила его, чтобы защитить Ревата от заклинателей, что захотели бы повредить мне, обидев моего ребенка.~
  IF ~~ THEN REPLY ~Где я могу найти вашего сына?~ GOTO 26
  IF ~~ THEN REPLY ~Сейчас у меня дела, возможно, потом.~ GOTO 27
  IF ~  Global("RevatQuest","GLOBAL",1)~ THEN REPLY ~Я потерял кольцо, подожди здесь.~ ~Я потеряла кольцо, подожди здесь.~ GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY ~За кого ты меня принимаешь, за старую дряхлую старушку? Я могущественный маг, и я смогу вернуться самостоятельно, раз уж заклинание снято.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY ~Ты за кого меня принимаешь, за дряхлую старушку? Естественно, я знаю, что путь свободен. Я прекрасно смогу выбраться отсюда и без чьей-либо помощи, и говорить мне об этом вовсе не обязательно.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY ~Моя смерть будет на твоей совести. Ты обрекаешь меня на гибель.~
  IF ~~ THEN DO ~SetGlobal("DeadJanis","GLOBAL",1)SetGlobalTimer("Janis","GLOBAL",6)~ EXIT
END

//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		CreateVisualEffectObject("SPDEATH3","Janis")
//             PlaySound("DELOR04")
//		Wait(1)
//		Kill("Janis")
//END

//IF
//	Global("DeadJanis","GLOBAL",1)
//	GlobalTimerExpired("Janis","GLOBAL")
//THEN
//	RESPONSE #100
//		SetGlobal("DeadJanis","GLOBAL",2)
//		SetGlobal("SPRITE_IS_DEADJANIS","GLOBAL",1)
//END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY ~У нас были кое-какие хозяйственные постройки на поверхности неподалеку. Он мог остаться там, беспокоясь обо мне. Тебе лучше поспешить; жажда начала до меня добираться.~
  IF ~~ THEN DO ~SetGlobal("JanisQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY ~Потом я наверняка буду мертва. Пожалуйста, я знаю, что была несдержанна с тобой, но не дай мне умереть. Умоляю тебя.~
  IF ~~ THEN REPLY ~Ладно. Где искать вашего сына?~ GOTO 26
  IF ~~ THEN REPLY ~Простите. Может, кто другой будет проходить мимо.~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 23.1 24.1
  SAY ~Не то, чтобы я не ценю твой поступок, но можно было бы немного и поторопиться. Увидимся на поверхности.~
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",2)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JanisHasRing","LOCALS",3)~ THEN BEGIN 20 // from:
  SAY ~О, спасибо. Так лучше. Ну? И что ты стоишь тут, сложа руки? У тебя что, других дел совсем не осталось?~
  IF ~~ THEN REPLY ~Тебе не нужна помощь, чтобы вернуться к Ревату?~ GOTO 23
  IF ~~ THEN REPLY ~Путь назад свободен от троллей. Ты сможешь уйти самостоятельно.~ GOTO 24
END

// -----------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("JanisQuest","GLOBAL",1)Global("Pause","LOCALS",1)Global("DeadJanis","GLOBAL",0)~ THEN BEGIN 29 // from:
  SAY ~Ты снова здесь, а? Да, ты уж точно наслаждаешься течением времени. Ну?~
  IF ~~ THEN REPLY ~Вы не могли бы еще раз объяснить, что с вами случилось?~ GOTO 6
  IF ~  !PartyHasItem("RingReva")~ THEN REPLY ~Теперь вы можете пойти со мной.~ GOTO 30
  IF ~  PartyHasItem("RingReva")~ THEN REPLY ~Теперь вы можете пойти со мной.~ GOTO 17
  IF ~~ THEN REPLY ~Вас просто не стоит спасать. До свидания.~ GOTO 25
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY ~Боюсь, все не так просто. Я прошу тебя найти моего сына Ревата и взять у него кольцо, что досталось ему от отца. В кольце есть одноразовое заклинание отмены. Я сотворила его, чтобы защитить Ревата от заклинателей, что захотели бы повредить мне, обидев моего ребенка. Только с помощью этого кольца я смогу выбраться из сферы Отилука.~
  IF ~~ THEN REPLY ~Где я могу найти вашего сына?~ GOTO 26
  IF ~~ THEN REPLY ~Сейчас у меня дела, возможно, потом.~ GOTO 27
END

// -----------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",2)~ THEN BEGIN 31 // from:
  SAY ~Поговори с Реватом, он наградит тебя за мое спасение. А вообще ты молодец, заходи навестить нас в Уотердипе, и я испеку для тебя печенье.~
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",3)~ THEN BEGIN 32 // from:
  SAY ~Ну, еще раз спасибо тебе за помощь, постарайся не попасть в беду. Мы с сыном отправляемся в Уотердип.~
  IF ~~ THEN DO ~ActionOverride("Revat",EscapeArea())EscapeArea()~ EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DeadJanis","GLOBAL",1)PartyHasItem("RingReva")~ THEN BEGIN 33 // from:
  SAY ~Вы вернулись вовремя, еще немного и я бы умерла. Вы меня спасете?~
  IF ~~ THEN REPLY ~Хорошо, вот кольцо.~ DO ~SetGlobal("DeadJanis","GLOBAL",0)SetGlobal("JanisHasRing","LOCALS",1)TakePartyItem("RingReva")~ EXIT
  IF ~~ THEN REPLY ~И не подумаю.~ EXIT
END
