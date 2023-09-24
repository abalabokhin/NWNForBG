// creator  : Z:\home\paladin\Games\bgnwn\WeiDU.exe (version 24600)
// argument : NWFTOBE7.DLG
// game     : .
// source   : ./DATA/TB#GEN8.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWFTOBE7~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ты кто? Нет, можешь не отвечать, мне, в сущности, все равно. Тебя никто не звал в мою кухню, и даже дверь была закрыта! Уходи, а не то я позову стражу, и если они не поспеют вовремя, я с тобой разделаюсь! Вон!~ #86535 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 even though they appear after this state */
~  NumberOfTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Кыш!~ #86536 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 even though they appear after this state */
~  NumberOfTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~А пинка не хочешь? Проваливай!~ #86537 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Я бы дала тебе пару кулинарных уроков, но бродяги вроде тебя подолгу на одном месте не задерживаются.~ #86538 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Тебе здесь не рады!~ #86539 */
  IF ~~ THEN EXIT
END
