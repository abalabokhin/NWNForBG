// creator  : Z:\home\paladin\Games\bgnwn\WeiDU.exe (version 24600)
// argument : NWFTOBE6.DLG
// game     : .
// source   : ./DATA/TB#GEN8.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWFTOBE6~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~О-о, маме наверняка не понравится, что ты суешь сюда свой нос. Посторонний на ее кухне? Вряд ли она это так просто оставит.~ #79606 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~На твоем месте я бы не стала тут не околачиваться. Мама бывает весьма скандальной, если ее разозлить.~ #13643 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Знаешь ли, я не замужем. Я как раз ищу хорошего парня, который согласится взять меня в жены.~ #79607 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  False()
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Отвали от меня!~ #13644 */
  IF ~~ THEN EXIT
END
