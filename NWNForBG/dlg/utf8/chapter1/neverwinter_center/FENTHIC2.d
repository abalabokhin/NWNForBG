// Центр Невервинтера  Зал ритуала   Фентик ликует. Он абсолютно уверен, что уже через несколько минут у него будет долгожданное лекарство. Он широко улыбается Дестеру.  Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~FENTHIC2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Здравствуйте! Сегодня великий день, не так ли? А вас... это вас нужно чествовать. Это благодаря вашим усилиям мы достигли таких потрясающих успехов.~ [FENTH190]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~Вы нашли уотердипских существ и позволили Дестеру и его собратьям-хельмитам сосредоточиться на поднятии народного духа. Теперь он сможет изготовить лекарство и все придет в норму.~
  IF ~~ THEN REPLY ~Мне было приятно работать в команде.~ GOTO 2
  IF ~~ THEN REPLY ~Одному Дестеру лекарства не изготовить. Понадобятся и другие.~ GOTO 3
  IF ~~ THEN REPLY ~Почти все пришлось делать мне. Дестер валял дурака.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~Да, я знаю, что вам можно доверять, а еще я знаю, что Дестер любит все критиковать. Даже сейчас он... ну... ладно, чтобы о нем ни думали, он нам очень помог.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Я понимаю, но он сделал гораздо больше. Я не ожидаю, что вы поймете, какую важную роль он сыграл в этом... На какой он пошел риск.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Мне не нравится ваш тон. Вы ничем не отличаетесь от остальных. Вы не понимаете всей важности того, что он сделал.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~Непонимание преследовало его с самого начала. Мне даже пришлось... ну... Скажем так, было очень непросто доставить ему все необходимое.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Даже теперь такое отношение связывает ему руки. Мне пришлось... ну... Скажем так, было очень непросто доставить Дестеру все необходимое.~
  IF ~  See("Desther")~ THEN EXTERN ~DESTHER2~ 1 // Правда, Фентик, сейчас не время для таких разговоров. Другие не поймут этого так, как понимаешь ты.
  IF ~  !See("Desther")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: DESTHER2 1
  SAY ~Конечно, конечно. Лучше нам ждать того, что впереди. Ведь через несколько минут у нас будет лекарство!~
  IF ~~ THEN REPLY ~Почему вы хотите что-то от меня скрыть?~ GOTO 10
  IF ~~ THEN REPLY ~Что произойдет во время этого ритуала?~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть вопросы о ваших друзьях.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~Можете себе представить? Через несколько минут это испытание будет позади. Чума будет излечена.~
  IF ~~ THEN REPLY ~Почему вы хотите что-то от меня скрыть?~ GOTO 10
  IF ~~ THEN REPLY ~Что произойдет во время этого ритуала?~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть вопросы о ваших друзьях.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~Ладно, довольно скандалить. Через несколько минут у нас будет лекарство. Мы почти прошли это огромное испытание.~
  IF ~~ THEN REPLY ~Почему вы хотите что-то от меня скрыть?~ GOTO 10
  IF ~~ THEN REPLY ~Что произойдет во время этого ритуала?~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть вопросы о ваших друзьях.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY ~Ах, ничего особенного, правда. Кое-что лучше скрыть. Это касается лишь меня и Дестера.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Вы можете сказать мне. Мне можно доверять.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Вы можете сказать мне. Мне можно доверять.~ GOTO 15
  IF ~~ THEN REPLY ~Говорите, или я отрублю вам голову!~ GOTO 16
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Тирранские жрецы уже начали читать заклинания. Арибет, Дестер и я присоединимся к ним, как только будем готовы.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY ~О, я не осмелюсь говорить за них. Если вы хотите знать, что они думают по этому поводу, они будут только рады ответить на ваши вопросы.~
  IF ~~ THEN REPLY ~Как поживает лорд Нашер?~ GOTO 19
  IF ~~ THEN REPLY ~А теперь ваши отношения с Арибет наладятся?~ GOTO 20
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY ~Да, мне пора присоединиться к заклинаниям. Не сомневаюсь, через несколько минут у нас будет лекарство!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY ~Да, да, конечно, и я не собираюсь оставлять вас в стороне. Видите ли, Дестера не посвятили в планы церемонии. Его попытки помочь проигнорировали. Мои соратники хотят, как лучше, но они слишком недоверчивы.~
  IF ~~ THEN REPLY ~Вы каким-то образом помогли ему?~ GOTO 22
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY ~Я не знаю. Хотелось бы мне доверять вам, но это дело касается только меня и Дестера.~
  IF ~~ THEN REPLY ~Говорите, или я отрублю вам голову!~ GOTO 16
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY ~Думаю, эта чума истощила все ваше терпение, друг мой. Я знаю, что вы не смогли бы причинить мне вреда, тем более, в самом замке Невер. Мы хорошо защищены, и стражники будут здесь через несколько секунд. Ваше поведение меня раздражает. Большинству из нас даже не дают спокойно выполнить свой долг.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 17 // from: DESTHER 6
  SAY ~Как пожелаете. Что бы вы хотели услышать от меня?~
  IF ~~ THEN REPLY ~Почему вы хотите что-то от меня скрыть?~ GOTO 10
  IF ~~ THEN REPLY ~Что произойдет во время этого ритуала?~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть вопросы о ваших друзьях.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 11.1
  SAY ~Вскоре после этого у нас будет лекарство. Надеюсь, оно поможет даже при тяжелых случаях. Так много людей заражено.~
  IF ~~ THEN REPLY ~Как будет выглядеть лекарство?~ GOTO 22
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY ~Пройдя через все это, он не уронил своего достоинства, хоть я и беспокоюсь за него. Он никогда не попросит помощи. Он, может быть, гораздо слабее, чем кажется.~
  IF ~~ THEN REPLY ~А теперь ваши отношения с Арибет наладятся?~ GOTO 20
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 12.2
  SAY ~Что? Я не совсем понимаю вас. Конечно, мы все были заняты этой чумой, но я бы не позволил нашим мелким разногласиям уменьшить мою любовь к ней. Думаете, ее чувства изменились? Я не вижу никаких признаков этого, а ведь я знаю ее очень хорошо. Она всего лишь озабочена состоянием больных. Вы ошибаетесь.~
  IF ~~ THEN REPLY ~У вас от нее секреты. Это правда?~ GOTO 23
  IF ~~ THEN REPLY ~А теперь ваши отношения с Арибет наладятся?~ GOTO 20
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 7.5
  SAY ~Да, лучше мне сосредоточится на том, что ждет впереди. Мне нужно быть очень осторожным, чтобы не нарушить заклинания, которые Дестер будет произносить во время ритуала.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY ~Это неважно, поверьте. Ему просто нужна помощь, чтобы лекарство подействовало. Нельзя, чтобы ему мешали всякие подозрения. Он хорошо проявил себя.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY ~Я сделал все ради всеобщего блага, и я верю, что все мои действия в итоге найдут достойное оправдание.~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY ~Вам нужно поговорить с остальными. Все примут важное участие в ритуале, не сомневайтесь.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY ~Как уже было сказано, не все люди способны постигнуть духовные тонкости, даже если их мудрость ни у кого не вызывает сомнений.~
  IF ~~ THEN REPLY ~Как поживает лорд Нашер?~ GOTO 19
  IF ~~ THEN REPLY ~Давайте вернемся к другим моим вопросам.~ GOTO 17
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY ~Видите ли, чтобы лекарство подействовало, ему нужно призвать магическую энергию из храма Хельма. Это очень и очень опасно... Это может его убить...~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY ~Арибет и другие никогда бы не допустили такого, так что я посвятил его в суть охранных заклинаний, защищающих замок Невер. Но магия Хельма поможет нашему заклинанию.~
  IF ~~ THEN REPLY ~Такое уже случалось? Все сработает?~ GOTO 28
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY ~Дестер убедил меня, что это очень уважительная причина. Это пустяк, но он может многократно увеличить целительную силу лекарства.~
  IF ~~ THEN REPLY ~Не оставит ли это замок без защиты?~ GOTO 31
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY ~Да, мне пора присоединиться к заклинаниям. Не сомневаюсь, через несколько минут у нас будет лекарство!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY ~Да, лучше мне сосредоточится на том, что ждет впереди. Мне нужно быть очень осторожным, чтобы не нарушить заклинания, которые Дестер будет произносить во время ритуала.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY ~Конечно, нет. Как я могу подвергнуть замок опасности? Дестер всего лишь притянет немного энергии хельмитов, чтобы лекарство действовало как можно сильнее.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY ~Вам нужно поговорить с остальными. Все примут важное участие в ритуале, не сомневайтесь.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY ~Нет никакой опасности. Охранные заклинания останутся, где и были.~
  IF ~~ THEN REPLY ~Что обо всем этом подумает Арибет?~ GOTO 34
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~Арибет... Я люблю ее всем сердцем, но ее взор затуманили ужасы чумы. Мне нужно сделать это ради блага всех остальных. Вы сами увидите.~
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 29
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 30
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 39
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 7.4
  SAY ~Да, мне пора присоединиться к заклинаниям. Не сомневаюсь, через несколько минут у нас будет лекарство!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 7.5
  SAY ~Да, лучше мне сосредоточится на том, что ждет впереди. Мне нужно быть очень осторожным, чтобы не нарушить заклинания, которые Дестер будет произносить во время ритуала.~
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 21.1
  SAY ~Вам нужно поговорить с остальными. Все примут важное участие в ритуале, не сомневайтесь.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.2
  SAY ~Да, мне пора присоединиться к заклинаниям. Не сомневаюсь, через несколько минут у нас будет лекарство!~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 27.3
  SAY ~Да, лучше мне сосредоточится на том, что ждет впереди. Мне нужно быть очень осторожным, чтобы не нарушить заклинания, которые Дестер будет произносить во время ритуала.~
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 30.1
  SAY ~Вам нужно поговорить с остальными. Все примут важное участие в ритуале, не сомневайтесь.~
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("KnowAboutDester","MYAREA",1)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 35 // from:
  SAY ~Здравствуйте еще раз. Я могу уделить вам пару минут, но мы должны начать сразу же, как вы переговорите со всеми. С моей помощью Дестер... ну... Неважно.~ [FENTH237]
  IF ~~ THEN REPLY ~Почему вы хотите что-то от меня скрыть?~ GOTO 10
  IF ~~ THEN REPLY ~Что произойдет во время этого ритуала?~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть вопросы о ваших друзьях.~ GOTO 12
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 13
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 21
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 36
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 37
END

