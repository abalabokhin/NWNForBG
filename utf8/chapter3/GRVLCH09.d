BEGIN ~GRVLCH09~

IF ~True()~ THEN BEGIN 0 // from:
  SAY ~Долго покоился я в этой могиле. Долго пребывал в умиротворении. Твое вторжение не останется безнаказанным!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END
