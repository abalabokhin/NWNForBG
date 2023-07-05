// Колодец Беорунна: улица Член племени Утгардтов Мужчина Метки на одежде этого мужчины говорят о том, что он - варвар из утгардтского племени Черного Льва.

BEGIN ~UTHARD1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ты Клятвопреступник! Из-за тебя Ролган мертв! Народ племени Черного Льва не хочет больше видеть тебя!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~За спасение Ролгана люди Черного Льва провозглашают тебя героем, <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Эта земля священна для племени Черного Льва. Союз Лордов должен относиться к Утгардтам с большим уважением.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Тело Ролгана насажено на кол, а Эндар, наш вождь, говорит нам, что мы не должны нарушать соглашение с Союзом Лордов.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)Global("RolganConvicted","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Здесь, среди наших людей, мы, Утгардты, можем избежать предубеждений солдат Союза Лордов.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 5 // from:
  SAY ~Племя Лося больше не сражается на стороне орды Лускана, однако солдаты из лагеря по-прежнему ведут себя с нами настороженно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 6 // from:
  SAY ~Армии Лускана рыщут по земле, и племя Лосей Утгардта присоединилось к ним. Но мы, племя Черного Льва, восстанем против них!~
  IF ~~ THEN EXIT
END

