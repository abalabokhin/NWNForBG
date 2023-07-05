// Неваервинтер Святая святых Камня-Источника Мораг, Рептилоид Клерик Древних Этот клерик Древних призывает древних злых богов послать ему силу.

// Нет, я не могу умереть! Я Мораг, королева Созидателей! Я бессмертна! Нет! НЕ-Е-ЕТ!!! [MORAG67]

// Мои жрецы не дадут причинить мне вреда! Твои удары бесполезны, раб! [MORAG69]

BEGIN ~ANCIENTC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Умри, раб! Как смеешь ты вторгаться во внутреннее святилище Мораг!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Разрушьте их города! **шипит** Смерть теплокровным!~ [LIZARD51]
  IF ~~ THEN EXTERN ~MORAG3~ 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Смерть предателям! **шипит** Смерть рабам Слов!~ [LIZARD52]
  IF ~~ THEN EXTERN ~MORAG3~ 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Да здравствует Мораг! **шипит** Веди нас к мести!~ [LIZARD53]
  IF ~~ THEN EXTERN ~MORAG3~ 4
END



