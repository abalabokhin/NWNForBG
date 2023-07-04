// Северная дорога, таверна Зеленый грифон, уровень 1 Придурок (безумец) можно дать имя Этот человек сидит и пялится на женщину. По его подбородку течет слюна.

BEGIN ~MADMAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Ух, твоя думай моя ей нравится?~ [MADMA050]
  IF ~~ THEN REPLY ~Не возражаете, если я задам несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Ладно уж, невежа, поднимайся в ее комнату.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ладно, но тока быстро, ага? Моя надо видеть девчоночку.~
  IF ~~ THEN REPLY ~Какого роста был самый крупный орк из встреченных вами?~ GOTO 3
  IF ~~ THEN REPLY ~Сколько кварт в галлоне?~ GOTO 4
  IF ~~ THEN REPLY ~Как твое имя? Никак не могу запомнить.~ GOTO 5
  IF ~~ THEN REPLY ~Ээ... Ага, а скока живут драконы?~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ага, пасибо.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Эээ... Моя не знай... Слышь, я спешить, э?~
  IF ~~ THEN REPLY ~Сколько кварт в галлоне?~ GOTO 4
  IF ~~ THEN REPLY ~Как твое имя? Никак не могу запомнить.~ GOTO 5
  IF ~~ THEN REPLY ~Ээ... Ага, а скока живут драконы?~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Эээ... Моя не знай... Слышь, я спешить, э?~
  IF ~~ THEN REPLY ~Какого роста был самый крупный орк из встреченных вами?~ GOTO 3
  IF ~~ THEN REPLY ~Как твое имя? Никак не могу запомнить.~ GOTO 5
  IF ~~ THEN REPLY ~Ээ... Ага, а скока живут драконы?~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Вот что, уходи. Ты токо тратить мое время.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Эээ... Моя не знай... Слышь, я спешить, э?~
  IF ~~ THEN REPLY ~Какого роста был самый крупный орк из встреченных вами?~ GOTO 3
  IF ~~ THEN REPLY ~Сколько кварт в галлоне?~ GOTO 4
  IF ~~ THEN REPLY ~Как твое имя? Никак не могу запомнить.~ GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,1)~ THEN BEGIN 7 // from:
  SAY ~Отвали. Моя говорить с леди, э?~ [MADMA051]
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,2)~ THEN BEGIN 8 // from:
  SAY ~Почему моя эль все время разбавляй?~ [MADMA052]
  IF ~~ THEN EXIT
END
