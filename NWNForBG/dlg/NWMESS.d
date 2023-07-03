// creator  : weidu (version 24600)
// argument : NWMESS.DLG
// game     : .
// source   : ./DATA/NWGEN2.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWMESS~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Здравствуйте! Я пришел из Невервинтера за помощью. В моем городе свирепствует чума и она явно не естественного происхождения. Леди Арибет и лорд Нашер отправили меня в Аскатлу чтобы найти героев способных помочь Невервинтеру. Может быть Вы сможете помочь?~
  IF ~~ THEN REPLY ~Мне это не интересно. Поищите кого-нибудь другого~ EXIT
  IF ~~ THEN REPLY ~Ну, пожалуй, я попробую помочь. Где находится этот город?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Это на севере от Аскатлы. Если вы согласны помочь, я телепортирую Вас к леди Арибет в академию Невервинтера.~
  IF ~~ THEN REPLY ~Не сейчас~ GOTO 2
  IF ~~ THEN REPLY ~Да, я готов.~ ~Да, я готова~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.0
  SAY ~Что ж, я буду ждать Вас здесь.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 1.1
  SAY ~Тогда приготовьтесь, сейчас Вы окажетесь в академии Невервинтера. Леди Арибет Вам все подробно объяснит.~
  IF ~~ THEN DO ~SetGlobal("Messenger_of_Neverwinter","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToNWN")
~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY ~Вы вернулись. Значит ли это что Вы нам поможете?~
  IF ~~ THEN REPLY ~Не сейчас~ GOTO 2
  IF ~~ THEN REPLY ~Да, я готов.~ ~Да, я готова~ GOTO 3
END
