// Чернозерье Поместье Рамботтома Стражник аристократа 

BEGIN ~PATROL02~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Этот вольнонаемный охранник холодно смотрит на вас. Таких особенно ценят за их крайнюю жестокость. Похоже, он вполне способен постоять за себя, если возникнет необходимость.~
  IF ~~ THEN EXIT
END

