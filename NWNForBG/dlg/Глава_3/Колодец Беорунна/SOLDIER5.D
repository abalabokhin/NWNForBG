// Колодец Беорунна: Казармы наемников Солдат-женщина Эта женщина, видимо, одна из многих солдат, которые были призваны в армию Союза Лордов.

BEGIN ~SOLDIER5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)~ THEN BEGIN 0 // from:
  SAY ~Ролкид очень хорошо натренировал меня для боя! Интересно, когда же меня отправят на передовую?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 1 // from:
  SAY ~Вы уже слышали последние новости? Нам больше не нужно беспокоиться о том, что племя Лосей нападает на нас. По крайней мере, так всем говорит друид. Он там, наверху, на плато.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 2 // from:
  SAY ~Посмотрите, какие доспехи мне выдал Ролкид! Жду не дождусь, чтобы опробовать их в битве!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 3 // from:
  SAY ~Эта война - прекрасный шанс для меня! Если я совершу какой-нибудь подвиг, я стану знаменитой, может быть, такой же знаменитой, как вы, <CHARNAME>!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 4 // from:
  SAY ~Я не доверяю этим из Утгардта - но я думаю, что нам все же нужна их помощь в войне против Лускана.~
  IF ~~ THEN EXIT
END

