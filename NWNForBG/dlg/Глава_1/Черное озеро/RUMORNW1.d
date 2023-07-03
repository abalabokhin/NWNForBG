BEGIN ~RUMORNW1~

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,1)
~ THEN BEGIN 0 // from:
  SAY ~Тут вечно болтают о подпольном бизнесе в нашеи заведении. Мол мы проводим гладиаторские бои и используем рабов, не верьте, все воины дерутся добровольно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,2)
~ THEN BEGIN 1 // from:
  SAY ~Спроси кого хочешь, любой тебе скажет, что колдун Мелданен в молодости использовал порталы, чтобы незаметно таскать к себе домой своих девок.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,3)GlobalLT("AnimalsRescued","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY ~Говорят в наш зоопарк приходил какой-то друид из центра города и требовал освободить животных. Так хозяин зоопарка, Монтгомери, приказал своим стражникам гнать его в три шеи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,3)GlobalGT("AnimalsRescued","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY ~Говорят какие-то герои не побоялись самого Монтгомери и освободили всех животных из зоопарка.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,4)
Global("BlackLakeDone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY ~Недавно люди видели дриаду, которая бродила по району. Так вот, ходят слухи, что ее сам Мелданен затащил к себе в особняк.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,4)
GlobalGT("BlackLakeDone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY ~Ходят слухи, что колдун Мелданен затащил к себе в особняк дриаду  и насильно удерживал ее. Так какие-то герои не побоялись колдуна и надавали ему по наглой морде.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,5)
~ THEN BEGIN 4 // from:
  SAY ~Говорят, в одном из домов в нашем районе есть потайной проход к древним могилам, но я этому не верю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,6)
~ THEN BEGIN 5 // from:
  SAY ~Оказывается, владельцы поместий Ходж и Рамботтом чем-то сильно насолили леди Офале, и теперь она жаждет мести.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  RandomNum(7,7)
!Dead("Formosa")
GlobalLT("FormosaQuest","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY ~Поговори с Формосой на площади у фонтана, если ищешь тут приключений, хотя, конечно, это может оказаться вашим последним приключением. Сразиться с самим Мелданеном не каждому по зубам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~  RandomNum(7,7)
OR(2)Dead("Meldanen")
GlobalGT("FormosaQuest","GLOBAL",1)
!Dead("Formosa")
~ THEN BEGIN 6 // from:
  SAY ~Формоса не зря собирала народ на площади. Кто-то расправился с этим колдуном Мелданеном, который держал в страхе весь район.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  RandomNum(7,7)
Dead("Formosa")
~ THEN BEGIN 6 // from:
  SAY ~Ну вот, Формоса допрыгалась. Она призывала людей расправиться с Мелданеном, а теперь сама мертва.~
  IF ~~ THEN EXIT
END
