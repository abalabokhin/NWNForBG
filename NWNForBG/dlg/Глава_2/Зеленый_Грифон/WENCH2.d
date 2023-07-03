// Северная дорога, таверна Зеленый грифон, уровень 1 Официантка Эта служанка совсем забегалась, обслуживая большую толпу, которая собралась тут.

BEGIN ~WENCH2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~Если вам что-то нужно, <SIRMAAM>, я сейчас подойду.~
  IF ~~ THEN REPLY ~Могу я быстренько задать вам несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Очень хорошо. Я подожду.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Если только это действительно быстро.~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 8
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Поговорите с Мутамином, если вам что-то срочно нужно, <SIRMAAM>. Может получиться быстрее.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Кроме того, что их ворота закрыты из-за мора? Да нет, вообще-то. Мы тут так заняты, нам не до того.~
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 8
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Представления не имею, <SIRMAAM>. Я просто им прислуживаю.~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 8
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Да нет, это все обычные посетители. Ничего в них особенного нет, ну, кроме, разве что, этой самой Замитры. И еще минотавра. Он меня пугает.~
  IF ~~ THEN REPLY ~И что такого странного в этой Замитре?~ GOTO 10
  IF ~~ THEN REPLY ~Минотавр? Расскажите мне о нем.~ GOTO 11
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Да нет, это все обычные посетители. Ничего в них особенного нет, ну, кроме, разве что, минотавра. Он очень страшный.~
  IF ~~ THEN REPLY ~Минотавр? Расскажите мне о нем.~ GOTO 12
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~Да нет, тут только обычные посетители. Ничего в них особенного нет, ну, кроме, разве что, этой самой Замитры.~
  IF ~~ THEN REPLY ~И что такого странного в этой Замитре?~ GOTO 13
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY ~Да нет, тут только обычные посетители. Ничего в них особенного нет.~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 1.7
  SAY ~Мутамин. Скорее всего вы найдете его за прилавком в задней комнате.~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)!Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 5
  IF ~  !Dead("Zor")Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 6
  IF ~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",0)OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 7
  IF ~  OR(2)Dead("Zor")!Global("KendrackQuest","GLOBAL",1)OR(2)Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN REPLY ~Что-нибудь интересное расскажете о постоянных клиентах?~ GOTO 8
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~Странного ничего, <SIRMAAM>. Она храбрая, я ею восхищаюсь. Замитра - знаменитый капитан наемников, и она знаменита тем, что ненавидит мужчин.~
  IF ~~ THEN REPLY ~О. И вы испытываете то же самое, что и она?~ GOTO 14
  IF ~~ THEN REPLY ~Расскажите мне о минотавре.~ GOTO 11
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~Что ж, некоторое время назад этот минотавр явился среди ночи и потребовал комнату. Зовут его Гор, или Зар, или что-то в этом роде. Он живет в комнате, наверху. Отпирает дверь только чтобы взять еду и эль. УЙМУ еды и эля. Не знаю, от кого он прячется. Но, вроде бы, неплохо проводит время - в пьяном угаре. Есть еще вопросы?~
  IF ~~ THEN REPLY ~Расскажите мне о Замитре.~ GOTO 10
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Что ж, некоторое время назад этот минотавр явился среди ночи и потребовал комнату. Зовут его Гор, или Зар, или что-то в этом роде. Он живет в комнате, наверху. Отпирает дверь только чтобы взять еду и эль. УЙМУ еды и эля. Не знаю, от кого он прячется. Но, вроде бы, неплохо проводит время - в пьяном угаре. Есть еще вопросы?~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY ~Странного ничего, <SIRMAAM>. Она храбрая, я ею восхищаюсь. Замитра - знаменитый капитан наемников, и она знаменита тем, что ненавидит мужчин.~
  IF ~~ THEN REPLY ~О. И вы испытываете то же самое, что и она?~ GOTO 15
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~Ой, конечно нет. Вам не о чем волноваться, дорогуша. Ха-ха! Просто я считаю, что она - хороший образец того, чего может добиться женщина, если будет добиваться цели на полную катушку, понимаете?~
  IF ~~ THEN REPLY ~Расскажите мне о минотавре.~ GOTO 11
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~Ой, конечно нет. Вам не о чем волноваться, дорогуша. Ха-ха! Просто я считаю, что она - хороший образец того, чего может добиться женщина, если будет добиваться цели на полную катушку, понимаете?~
  IF ~~ THEN REPLY ~Вы что-нибудь знаете о том, что происходит в Лускане?~ GOTO 3
  IF ~~ THEN REPLY ~Зачем здесь собрались все эти люди?~ GOTO 4
  IF ~~ THEN REPLY ~А кто владелец заведения?~ GOTO 9
  IF ~~ THEN REPLY ~Не буду вас задерживать.~ GOTO 2
END
