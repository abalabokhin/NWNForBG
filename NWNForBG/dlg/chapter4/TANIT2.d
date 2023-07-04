// Маска лунного камня Танит   Судя по пятнам крови на одежде этого привлекательного юноши, он с большой охотой ухаживает за ранеными, несмотря на свою внешность.

BEGIN ~TANIT2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Здесь всегда было много народу, но не настолько. Такое ощущение, что раненым конца не будет!~
  IF ~  GlobalGT("LuceJob","GLOBAL",1)~ THEN GOTO 1
  IF ~  GlobalLT("LuceJob","GLOBAL",2)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~По крайней мере, Люс удалось найти свою пропавшую сестру. Именно такие маленькие радости и вселяют надежду на лучшее.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Здесь так много раненых, что мы даже не можем помочь бедняжке Люс в поисках ее пропавшей сестры.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 3 // from:
  SAY ~Обычно заходившие сюда солдаты означали хороший доход, но лусканцы просто хотят нас всех убить!~
  IF ~  GlobalGT("LuceJob","GLOBAL",1)~ THEN GOTO 4
  IF ~  GlobalLT("LuceJob","GLOBAL",2)~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Это чудо, что малышке Лиисе удалось выжить среди этих мясников! Но главное, что сейчас она в безопасности и вместе с Люс.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~Даже думать страшно о пропавшей сестре бедняжки Люс. Надеюсь, малышка все еще жива.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 6 // from:
  SAY ~Если ты вернешься сюда, когда все это безумие закончится, миледи, я обещаю тебе вечер страсти и удовольствия... и по очень разумной цене. Просто спроси Танита.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Но сейчас мне нужно ухаживать за ранеными. Может быть, Офала сможет тебе помочь, она владелица "Маски Лунного Камня".~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 8 // from:
  SAY ~Мне некогда с тобой разговаривать. Раненым требуется моя помощь. Если вам что-нибудь нужно, поговорите с Офалой. Она владелица "Маски Лунного Камня".~
  IF ~~ THEN EXIT
END

