// Форт-Илкард: дом Экеля  Галия  Дварф Эта женщина-карлик одета, как простая фермерша, но что-то подсказывает, что с ней шутки плохи.

BEGIN ~HALIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Надеюсь, мой муж скоро вернется. Экель управляет всеми делами семьи. А я ничего не знаю о том, как управляться с фермой! Ужас!~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~У меня записка от твоего мужа.~ GOTO 1
  IF ~~ THEN REPLY ~Где твой муж?~ GOTO 2
  IF ~~ THEN REPLY ~Силы Лускана рыскают по всей округе. Тебе лучше уехать для собственной безопасности.~ GOTO 3
  IF ~~ THEN REPLY ~Могу я тебе чем-то помочь?~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Записка от Экеля? Можно взглянуть? Хммм... похоже на его подпись, все верно. И список покупателей на наше добро! Как я тебе благодарна за эту записку! Кстати, тут написано, что Экель обещал тебе вознаграждение. Как насчет 400 золотых?~
  IF ~~ THEN REPLY ~Спасибо, все будет хорошо.~ GOTO 6
  IF ~~ THEN REPLY ~Золото - это хорошо. Спасибо тебе, леди карлик.~ GOTO 6
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Мне кажется, что ты могла бы прибавить, я же спас твое хозяйство.~ GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Мне кажется, что ты могла бы прибавить, я же спас твое хозяйство.~ GOTO 8
  IF ~~ THEN REPLY ~Если ты собой дорожишь, то сделаешь прибавку к награде!~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Всех мужчин, годных к военной службе, мобилизовали в форт Илкард. Они все застряли на защите форта, пока эта война против Лускана не закончится.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~У меня записка от твоего мужа.~ GOTO 1
  IF ~~ THEN REPLY ~Силы Лускана рыскают по всей округе. Тебе лучше уехать для собственной безопасности.~ GOTO 3
  IF ~~ THEN REPLY ~Могу я тебе чем-то помочь?~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Не волнуйся, я могу за себя постоять. Я была магом, искателем приключений, до того, как встретила Экеля, и мы решили осесть на этой ферме. Пара трюков из прежней жизни у меня сохранилась.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~У меня записка от твоего мужа.~ GOTO 1
  IF ~~ THEN REPLY ~Где твой муж?~ GOTO 2
  IF ~~ THEN REPLY ~Могу я тебе чем-то помочь?~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Да ничего особенного, разве что вдруг захочешь купить пару сотен бушелей репы. Я думаю, что у мужа есть покупатели на примете, но, пока он не придет, я даже не знаю, как к этому подступиться.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Что ж, идите. Осторожнее только, по всей округе рыскают налетчики Лускана...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Возьми это золото с моей благодарностью. Ты заслуживаешь этого. Без этой записки я не знала бы куда девать всю эту репу. Мы бы пропали!~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Что ж, думаю, что не умру с голода, если подкину тебе еще кой-чего. Благодаря тебе мы с Экелем спасены от банкротства. Вот, возьми этот свиток. Воспоминания о днях, когда была искателем приключений. Не думаю, что это мне когда-нибудь пригодится~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveItemCreate("scrl07",LastTalkedToBy,1,1,0)GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Не надо жадничать. Я думаю, что это хорошие деньги за то, чтобы просто передать записку. 400 золотых и не фыркай, ладно?~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~Не стоит меня недооценивать! Я не всегда была фермерской женой, знаешь ли. Я была неплохим магом, в те дни, когда искала приключений! Если бы не спасение моей фермы, я бы угостила тебя парочкой заклинаний, чей вкус не скоро забудешь! Но я уважу просьбу Экеля. Вот вознаграждение, которое тебе обещали. Но тебе лучше извиниться, пока я не сделала чего-нибудь такого, о чем мы оба могли бы пожалеть!~
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("EckLett")DestroyItem("EckLett")GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 10 // from:
  SAY ~Хорошо бы война против Лускана скоро кончилась, как я соскучилась по мужу.~
  IF ~  PartyHasItem("EckLett")~ THEN REPLY ~У меня записка от твоего мужа.~ GOTO 1
  IF ~~ THEN REPLY ~Где твой муж?~ GOTO 2
  IF ~~ THEN REPLY ~Силы Лускана рыскают по всей округе. Тебе лучше уехать для собственной безопасности.~ GOTO 3
  IF ~~ THEN REPLY ~Могу я тебе чем-то помочь?~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

