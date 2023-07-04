// Порт-Лласт Торговец свитками Заданий нет

BEGIN ~PLSCROLL~

IF ~  OR(2)Class(LastTalkedToBy,MAGE_ALL)Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 0 // from:
  SAY ~О, да вы маг. Как приятно встретить здесь в Порт-Лласте столь образованного покупателя. У меня для вас есть свитки на продажу, не желаете ли взглянуть?~
  IF ~~ THEN REPLY ~Да, покажите что у вас есть.~ DO ~StartStore("PLScroll",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Нет, не сейчас, возможно позже.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ах, как жаль. Ну заходите еще, я буду ждать вас.~
  IF ~~ THEN EXIT
END

IF ~  !Class(LastTalkedToBy,MAGE_ALL)!Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 2 // from:
  SAY ~Добрый день. Есть ли среди вас маги? У меня есть кое-какие свитки на продажу, не желаете ли взглянуть?~
  IF ~~ THEN REPLY ~Да, покажите что у вас есть.~ DO ~StartStore("PLScroll",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Нет, не сейчас, возможно позже.~ GOTO 1
END

