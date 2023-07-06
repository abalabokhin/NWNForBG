// Южная дорога - тролль Лерк охраняет дорогу к замку Вэйнива

BEGIN ~LERK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   !Global("BridgeIsOpen","MYAREA",1)!Global("Permission","LOCALS",1)PartyHasItem("WanevstH")~ THEN BEGIN 0 // from:
  SAY ~Твоя иметь оберег? Твоя переходить мост, если хотеть. Моя Лерк. Моя хороший тролль-мостовик.~
  IF ~~ THEN REPLY ~До свидания.~ GOTO 1
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 2
  IF ~~ THEN REPLY ~Почему ты охраняешь этот мост?~ GOTO 3
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Удачно провести <DAYNIGHT>!~
  IF ~~ THEN DO ~SetGlobal("BridgeIsOpen","MYAREA",1)SetGlobal("Permission","LOCALS",1)MoveToPointNoInterrupt([3388.2144])Face(10)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Это мост на земли мистера Вэйнива. Славное место. Хороший вид.~
   IF ~~ THEN REPLY ~Кто такой мистер Вэйнив?~ GOTO 5
  IF ~~ THEN REPLY ~Почему ты охраняешь этот мост?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 1
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Мистер Вэйнив хороший хозяин. Он маленький, магия большая.~
  IF ~~ THEN REPLY ~Почему ты охраняешь этот мост?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 1
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Мистер Вэйнив не любить, когда ему мешать. Моя съесть люди, который мешать. Хороший тролль-мостовик!~
   IF ~~ THEN REPLY ~Кто такой мистер Вэйнив?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 1
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Лерк хороший тролль-мостовик! Лерк глодать твои косточки!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("WanevstH")Global("BridgeIsOpen","MYAREA",0)~ THEN BEGIN 6 // from:
  SAY ~Твоя стоять! Не ходить на мост! Твоя пробовать, Лерк есть твоя!~
   IF ~~ THEN REPLY ~Почему ты охраняешь этот мост?~ GOTO 7
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 7
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Это мост на земли мистера Вэйнива. Моя Лерк. Лучший тролль-мостовик в мире. Никого не пускать. Лерк жрать плохие гости, если они хотеть перейти мост.~
   IF ~~ THEN REPLY ~Я хочу перейти через мост.~ GOTO 9
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.3
  SAY ~Мистер Вэйнив не любить, когда ему мешать. Моя съесть люди, который мешать. Хороший тролль-мостовик!~
   IF ~~ THEN REPLY ~Кто такой мистер Вэйнив?~ GOTO 5
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~Твоя плохо слышать? Только друзья Вэйнива переходить мост. Моя не видеть твоя раньше, так что твоя не переходить мост. Твой пробовать, моя жрать твоя!~
   IF ~~ THEN REPLY ~Почему бы тебе не пропустить меня, пока ты еще дышишь?~ GOTO 4
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY ~Послушай, меня пригласил Вэйнив. Если ты не дашь мне пройти, тебя накажут.~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY ~Послушай, меня пригласил Вэйнив. Если ты не дашь мне пройти, тебя накажут.~ GOTO 11
  IF ~~ THEN REPLY ~Может быть, 100 золотых заставят тебя передумать?~ GOTO 12
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY ~Твоя гость мистер Вэйнив? Хмм... Твоя уверен? Ладно, моя не хотеть неприятности. Твоя проходить и не говорить Вэйнив, что твоя встречать Лерк.~
  IF ~~ THEN DO ~SetGlobal("BridgeIsOpen","MYAREA",1)SetGlobal("Permission","LOCALS",1)MoveToPointNoInterrupt([3388.2144])Face(10)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY ~Ха! Мистер Вэйнив говорить мне, когда ждать гость. Он не говорить. Твоя не проходить.~
   IF ~~ THEN REPLY ~Почему бы тебе не пропустить меня, пока ты еще дышишь?~ GOTO 4
  IF ~~ THEN REPLY ~Может быть, 100 золотых заставят тебя передумать?~ GOTO 12
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4
  SAY ~Лерк не хотеть золота. Лавочник не любить Лерк.~
   IF ~~ THEN REPLY ~Почему бы тебе не пропустить меня, пока ты еще дышишь?~ GOTO 4
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY ~Послушай, меня пригласил Вэйнив. Если ты не дашь мне пройти, тебя накажут.~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY ~Послушай, меня пригласил Вэйнив. Если ты не дашь мне пройти, тебя накажут.~ GOTO 11
  IF ~~ THEN REPLY ~Умри, тролль!~ GOTO 4
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OR(2)Global("BridgeIsOpen","MYAREA",1)Global("Permission","LOCALS",1)~ THEN BEGIN 13 // from:
  SAY ~Твоя переходить мост, если хотеть. Лерк не мешать твоя.~
   IF ~~ THEN REPLY ~Почему ты охраняешь этот мост?~ GOTO 7
  IF ~~ THEN REPLY ~Куда ведет этот мост?~ GOTO 7
  IF ~~ THEN REPLY ~Я ухожу.~ EXIT
END
