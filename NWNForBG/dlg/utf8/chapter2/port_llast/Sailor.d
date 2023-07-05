// Порт-Лласт Моряк Заданий нет

BEGIN ~SAILOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Ненавижу торчать в порту. Меня тошнит от того, как эти сухопутные крысы воняют.~  ~Ого, хорошенькая штучка вроде тебя не могла придумать ничего лучшего, чтоб завлекать мужиков.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Интересно, как скоро откроют порт Лускана.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~В баре говорят об оборотнях. Надеюсь, мне они не встретятся, иначе я больше никогда здесь не остановлюсь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Ничто так не создает домашнюю атмосферу, как запах рыбьих кишок и нежные удары волн о пристань.~ ~Ты потрясающая женщина! Тебе нравятся моряки?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Интересно, солдаты эти когда-нибудь найдут этот культ? Не хочется думать, что им это может сойти с рук.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Продукты в Невервинтер, продукты в Невервинтер, туда - обратно. Нам никогда не удовлетворить их нужды.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Надеюсь, ты не жаждешь отправиться в плаванье. У нас едва хватает места на груз и команду.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Надеюсь, удастся пропустить пинту-другую, пока я в порту.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~Поверить не могу, что порт Лускана закрыли. Говорят, внутрь никого не пускают. А ведь мы там всегда останавливались!~
  IF ~~ THEN EXIT
END
