// Чернозерье Перчатка Клодус Человек Огромный мужчина, очевидно, не дурак подраться. Он с подозрением осматривает всех в зале.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

// DisplayString Победили? Это ничего не доказывает! Где они?! Хочу поговорить с отбросами, что одолели меня!~ [CLAUDUS1]

BEGIN ~CLAUDUS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Новичок? Хорошо! Помните: вы проходите по одному раунду зараз, и за каждую победу получаете медаль. Это только ради славы. Никаких денежных наград. Конечно, если пройдете все три раунда, вам придется сразиться со мной. Тогда вы можете выиграть весь этот бар! Поверьте, такого не случится.~ [CLAUDUS5]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~Вы победили Храска? Неудивительно. Он здесь уже несколько недель, и не выиграл ни одного раунда. Он вел раунды, но ни одного не выиграл. Он не может меня победить, да и никто не может. Вот почему я ставлю на кон бар. Никто даже и пробовать не хочет.~ [CLAUDUS4]
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY ~Вы... Победили Фаши, а? Наверное, думаете, что вы сильнее всех?! Не стоит зазнаваться. Агар поставит вас на место. А если не он, то я. Никто меня не одолеет. Если вы думаете, что выйдете отсюда владельцем МОЕГО бара, вы ошибаетесь!~ [CLAUDUS3]
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY ~Довольно! Вы победили Агара, и все. Никто не одолеет Клодуса. Спросите! Я непобедим! Это место принадлежит мне!~ [CLAUDUS2]
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY ~Проклятье! Будьте вы все прокляты! Ладно! Вы выиграли! И что! Это ничего не значит! Я был чемпионом несколько месяцев! Это всем известно! Всем известно...~ [CLAUDUS0]
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Займите ваше место. Ну же, вы теперь здесь хозяин, но я велел своим друзьям уйти. Я беру "Перчатку" с собой! Ха-ха!~
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END

