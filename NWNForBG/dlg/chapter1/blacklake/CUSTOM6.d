// Невервинтер Чернозерье Житель Чернозерья Этот эльф выглядит вполне отдохнувшим, гораздо лучше, чем даже жители Сердца города. Его, изолированного в Чернозерье, чума напрямую не коснулась.

BEGIN ~CUSTOM6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,1)~ THEN BEGIN 0 // from:
  SAY ~Я думаю, причиной мора стали низшие классы, которых мы допускаем в наш район. Давно надо было построить баррикады.х.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,2)~ THEN BEGIN 1 // from:
  SAY ~Вы не принадлежите к аристократам Черного озера. Вы что, из бандитов Мелданена?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,3)~ THEN BEGIN 2 // from:
  SAY ~Привет. Вы, наверное, новичок в городской страже. Удачи вам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,4)~ THEN BEGIN 3 // from:
  SAY ~Как поживаете? Я думаю, на баррикадах все в порядке, и ни один больной к нам не прорвется?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,5)~ THEN BEGIN 4 // from:
  SAY ~Воющая Смерть отняла столько жизней. Почему люди вроде Мелданена делают жизнь еще хуже?~
  IF ~~ THEN EXIT
END


IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,6)~ THEN BEGIN 5 // from:
  SAY ~Вы должны простить меня. Из-за мора мне не очень-то хочется разговаривать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,7)~ THEN BEGIN 6 // from:
  SAY ~Надеюсь, лекарство от мора скоро найдут. Баррикадами всех не удержать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,8)~ THEN BEGIN 7 // from:
  SAY ~Держись от меня подальше! Такие, как ты, как раз и распространяют заразу.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,9)~ THEN BEGIN 8 // from:
  SAY ~А мне казалось, через баррикады не пропускают в наш район таких, как вы. Наверняка тут не обошлось без Мелданена.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,10)~ THEN BEGIN 9 // from:
  SAY ~Мне очень жаль, что из района Черного озера приходится изгонять слабых и больных, но разве у нас есть выбор? Ваши боги ничего не могут сделать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,11)~ THEN BEGIN 10 // from:
  SAY ~Достойный член общества не расхаживает по улицам с оружием наперевес.~
  IF ~~ THEN EXIT
END

