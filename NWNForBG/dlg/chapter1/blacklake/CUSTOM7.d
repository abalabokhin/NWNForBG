BEGIN ~CUSTOM7~

IF ~Gender(LastTalkedToBy,FEMALE)
CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 2 // from:
  SAY ~Меня зовут леди Мерана, и я жду джентльмена. Но я уверена, что это не твое дело, однако.~
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 3 // from:
  SAY ~Хм-мм... Я жду одного своего друга, джентльмена, но если ты так настаиваешь, я бы с удовольствием провела вечер с таким красивым мужчиной, как ты....~
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)
CheckStatLT(LastTalkedToBy,15,CHR)
CheckStatGT(LastTalkedToBy,8,CHR)~ THEN BEGIN 4 // from:
  SAY ~У меня уже есть кавалер, сэр, я как раз жду его. Пожалуйста, не надо ставить себя в неловкое положение, поскольку все твои предложения определенно будут отвергнуты. Пф.~
  IF ~~ THEN EXIT
END

IF ~CheckStatLT(LastTalkedToBy,9,CHR)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 6 // from:
  SAY ~Что за наглость! Как только такой мерзкий бандит, как ты, осмелился заигрывать с благородной женщиной?! Ах!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)
CheckStatGT(LastTalkedToBy,14,CHR)~ THEN BEGIN 2 // from:
  SAY ~Меня зовут леди Мерана, и я жду джентльмена. Попрошу вас отойти подальше, чтобы мой друг не прельстился вашей красотой.~
  IF ~~ THEN EXIT
END
