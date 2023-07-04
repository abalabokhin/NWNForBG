// Лес Невервинтер, дом нимфы - Раб, 

BEGIN ~SLAVENW1~

IF ~  NumTimesTalkedTo(0)!Allegiance(Myself,ENEMY)~ THEN BEGIN 0 // from:
  SAY ~Что со мной произошло? Где я? Мне нужно найти мою семью!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
