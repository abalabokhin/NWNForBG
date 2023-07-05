// Подземелье замка Невер Тюремщик, Судя по его строгой, непоколебимой позе, этот карлик очень серьезно относится к своим обязанностям стражника.

BEGIN ~JAILGUAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Постойте-ка, <SIRMAAM>. Здесь, знаете ли, тюрьма, а тюрьма, она для заключенных, понятно? Если хотите поговорить с ними, сначала нужно поговорить со мной.~
  IF ~~ THEN REPLY ~Лорд Нашер послал меня допросить пленника.~ GOTO 1
  IF ~~ THEN REPLY ~С дороги, или я заставлю тебя гнить в тюремной камере!~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~О, Нашер говорил, что сюда придет <MALEFEMALE>. Это ведь вы, да? Проходите, <SIRMAAM>.~
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ну, только не надо расстраивайся! Я лишь делаю свою работу! Сюда нельзя просто так войти и... Ох, погодите минуточку!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Вы  <MALEFEMALE> от Нашера, пришли, чтобы проведать заключенного? Проходите.~
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

// ---------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 4 // from:
  SAY ~Вы тот, кого Нашер послал проведать заключенного, правильно? Проходите.~ ~Вы та, кого Нашер послал проведать заключенного, правильно? Проходите.~
  IF ~~ THEN EXIT
END

