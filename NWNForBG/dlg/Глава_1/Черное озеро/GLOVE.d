// creator  : weidu (version 23700)
// argument : GLOVE.DLG
// game     : .
// source   : ./override/GLOVE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~GLOVE~

IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 0 // from:
  SAY ~Привет, ребята. Добро пожаловать, чувствуйте себя как дома. Только постарайтесь не беспокоить местных, ладно? Времена сейчас нелегкие, так что им и так хватает неприятностей. Что ж, чем могу помочь?~
  IF ~~ THEN REPLY ~Покажите, что вы можете предложить.~ DO ~StartStore("Glove",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Ничего.~ EXIT
END

IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 1 // from:
  SAY ~Привет. От вас, бродяг, мне неприятностей не нужно. Похоже, из всех остальных баров в этом городе вас уже успели выкинуть. Будете бузить - не задержитесь и здесь. Не будете - добро пожаловать. Что ж, чем могу помочь?~
  IF ~~ THEN REPLY ~Покажите, что вы можете предложить.~DO ~StartStore("Glove",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Ничего.~ EXIT
END
