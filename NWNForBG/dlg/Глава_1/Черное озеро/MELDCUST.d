// Чернозерье Поместье Мелданена Знатный господин   Этот человек выглядит так, как будто взорвется от негодования, если только кто-то его потревожит. Он явно привык к компании других аристократов и ни к кому более.

// DisplayStringHead(Myself,000000) Помогите мне! Выпустите меня отсюда!

BEGIN ~MELDCUST~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Мелданен - это вы? Нет! Вы здесь без спросу!~
  IF ~~ THEN DO ~SetGlobal("AreaHostile","MYAREA",1)Enemy()~ EXIT
END

