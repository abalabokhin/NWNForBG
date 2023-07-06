// Доки Невервинтера Таверна Сиди Посетитель таверны Человек мужчина Заданий нет Этот человек нетерпеливо осматривается по сторонам. Он явно пришел сюда сегодня в ожидании чего-то необычного. 

BEGIN ~TAVERN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY ~Скорее бы все это уже началось. У них есть товар или нет?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY ~Мне пришлось все продать. Все. Надеюсь, это лекарство. Я разорен, если это не лекарство. Я погибну, если это не лекарство.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY ~Венгаулу не стоит больше рассказывать все эти сказки. Не стоит шутить в городе, в котором все умирают.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY ~Наверняка, нет никакого лекарства. То есть, откуда лекарство у Венгаула, если даже Нашер не смог его достать?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY ~Говорят, это всего лишь часть лекарства. Нужен способ, чтобы переработать его. Купит его какой-нибудь проходимец и все испортит.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)~ THEN BEGIN 5 // from:
  SAY ~В последний раз, когда я видел Венгаула, он нес какую-то клетку. Почему он выгуливает своих животных, когда его ждут важные дела?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)~ THEN BEGIN 6 // from:
  SAY ~Говорят, Венгаула скоро не будет. Слишком самодоволен он. Хочет из всего сделать великое приключение. Охотник до славы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)~ THEN BEGIN 7 // from:
  SAY ~Каллика здесь нет, да? Говорят, ему это все не по душе. Должно быть, устал все время находиться в тени Венгаула.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)~ THEN BEGIN 8 // from:
  SAY ~Знаете... здесь нет ни одного человека, верного Венгаулу... Интересно, сам он здесь или нет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)~ THEN BEGIN 9 // from:
  SAY ~Аукцион уже дважды откладывали... Что за дьявол. Если есть лекарство, оно мне нужно, и НЕМЕДЛЕННО!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)~ THEN BEGIN 10 // from:
  SAY ~Аукцион оказался глупой выдумкой. Теперь нам, всем простым идиотам, придется умереть от чумы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)~ THEN BEGIN 11 // from:
  SAY ~Каллика нет. Кажется, Венгаул все-таки остается лидером. Но у меня сомнений никогда не было... нет, сэр...~
  IF ~~ THEN EXIT
END

