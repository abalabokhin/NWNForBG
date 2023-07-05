// Полуостров Логово пожирателя   Бывший стражник   Этого стражника захватили заключенные, которых он когда-то охранял. Кажется, они его еще и избили.

BEGIN ~INTFORGU~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")!Allegiance(Myself,ENEMY)Global("MindFlayerInMe","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Тебе... нельзя тревожить... хозяина... Нельзя... тревожить... хозяина...~ [INTFOR50]
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),16,INT)CheckStatGT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~Выбирайся отсюда! Уходи! Здесь опасно!~ GOTO 1
  IF ~  !CheckStatGT(LastTalkedToBy(Myself),16,INT)!CheckStatGT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~Выбирайся отсюда! Уходи! Здесь опасно!~ GOTO 2
  IF ~~ THEN REPLY ~Что тут происходит? Вы меня понимаете?~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Э? Ч-что? Да... Мне пора уходить отсюда. Мне... пора.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Тебе... нельзя тревожить... хозяина... Нельзя... тревожить... хозяина...~
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Crewtd2")Global("MindFlayerInMe","LOCALS",0)~ THEN BEGIN 3 // from:
  SAY ~Мой разум... свободен. Мы все свободны, а мозгоед мертв! Слава звездам и всем богам!~ [INTFOR55]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Я ухожу. Пора и честь знать. Спасибо вам за помощь. Спасибо.~
  IF ~~ THEN DO ~AddexperienceParty(10000)EscapeAreaObject("To1314")~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,1)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 5 // from:
  SAY ~Ты, тупицссса! Я внутрииии! Ха-ха-ха-ха-ха!!!~ [INTFOR51]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,2)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 6 // from:
  SAY ~Сразись с этой плотью, если хочешь! Тебе это не поможет!~ [INTFOR52]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Crewtd2")Allegiance(Myself,ENEMY)RandomNum(3,3)Global("MindFlayerInMe","LOCALS",1)~ THEN BEGIN 7 // from:
  SAY ~Уничтожшшшь это тело, и я найду другооое! Я не оссстанусь взсссаперти!~ [INTFOR53]
  IF ~~ THEN DO ~AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

