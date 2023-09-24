// creator  : Z:\home\paladin\Games\bgnwn\WeiDU.exe (version 24600)
// argument : NWFTOBE2.DLG
// game     : .
// source   : ./DATA/TB#GEN8.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWFTOBE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~ј-а-а! ѕо какому праву ты находишьс€ в моем доме?!~ #79575 */
  IF ~~ THEN REPLY @2 /* ~»звин€юсь за вторжение, но мне просто было интересно, чем ты зан€та.~ #79576 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~ѕобереги дыхание, € не собираюсь причин€ть тебе вред.~ #79577 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~ѕо праву того, кто сильнее! » думаю, тебе лучше посодействовать, пока € буду собирать твои ценности.~ #79578 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~ѕриношу свои извинени€! ѕохоже, € не по адресу. я уже ухожу.~ #79579 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~„ем € занимаюсь, не твое дело! ”ходи немедленно, иначе € позову стражу!~ #79580 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~“огда оставь в покое мен€ и мою семью! “еб€ в мой дом никто не приглашал, так что уходи!~ #79581 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~я ничего не могу сделать, чтобы остановить теб€, но € могу позвать тех, кто сумеет с тобой справитьс€. ”ходи сейчас же, иначе тобой займетс€ стража.~ #79582 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~¬от и хорошо! ≈сли бы мой муж застал теб€ здесь, он бы теб€ точно прикончил!~ #79583 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @10 /* ~я проста€ городска€ девушка и думаю, что мои знани€ окажутс€ бесполезными дл€ такого могучего искател€ приключений.~ #79584 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  True()
~ THEN BEGIN 6 // from:
  SAY @11 /* ~я уже говорила. Ќечего тебе здесь делать! ј теперь, убирайс€!~ #13637 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY @12 /* ~“ебе здесь больше не рады!~ #13657 */
  IF ~~ THEN EXIT
END
