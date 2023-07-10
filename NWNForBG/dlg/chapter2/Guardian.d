// Чарвуд, замок Джарег, первый этаж  - Стражница привидение (Возможно солар)  Дух, стоящий перед тобой, окутан божественным мягким светом. Однако, за его хрустальной маской ты читаешь глубокое отчаянье в его глазах.

BEGIN ~GUARDIAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1 2 3 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("JaregQuest","GLOBAL",0)~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("JaregQuest","GLOBAL",0)~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.1
  SAY @18
  IF ~  Global("Talked_with_Quint","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",1)EraseJournalEntry(~Чарвуд: Деревня Вечной Ночи

Странная деревня Чарвуд запрятана в дебрях леса, носящего такое же название. Ее окружает стена густого синего тумана, поэтому кажется, что в деревне всегда царит ночь. У входа странников встречает сумасшедший по имени Квинт, загадывает им загадки. В самой же деревне кажется, что туман замутил рассудок жителей: они без конца повторяют одно и то же, дрожа от ледяного ночного воздуха. Мэр не отличается от остальных, однако его пугает сама возможность, что кто-то может войти в зловещий замок Джарег.~) UNSOLVED_JOURNAL @25 EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @27
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY @28
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @29
  IF ~  Global("Talked_with_Quint","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY @30
  IF ~  Global("Talked_with_Quint","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY @31
  IF ~  Global("Talked_with_Quint","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY @32
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~  Global("JaregQuest","GLOBAL",0)~ THEN REPLY @16 GOTO 11
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("JaregQuest","GLOBAL",2)~ THEN BEGIN 18 // from:
  SAY @33
  IF ~  Global("JaregQuest","GLOBAL",1)~ THEN REPLY @34 GOTO 19
  IF ~  Global("JaregQuest","GLOBAL",1)~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @38
  IF ~  PartyHasItem("KarlatT")PartyHasItem("QuintT")~ THEN REPLY @39 DO ~TakePartyItem("KarlatT")TakePartyItem("QuintT")~ GOTO 23
  IF ~  Global("KarlatTestimony","LOCALS",1)PartyHasItem("QuintT")!PartyHasItem("KarlatT")~ THEN REPLY @40 DO ~TakePartyItem("QuintT")~ GOTO 24
  IF ~  Global("KarlatTestimony","LOCALS",0)PartyHasItem("QuintT")!PartyHasItem("KarlatT")~ THEN REPLY @40 GOTO 25
  IF ~  Global("QuintTestimony","LOCALS",1)PartyHasItem("KarlatT")!PartyHasItem("QuintT")~ THEN REPLY @41 DO ~TakePartyItem("KarlatT")~ GOTO 24
  IF ~  Global("QuintTestimony","LOCALS",0)PartyHasItem("KarlatT")!PartyHasItem("QuintT")~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY @44
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 22 // from: 18.4
  SAY @45
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 21 22
  SAY @46
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27
  SAY @47
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY @51
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 19.3
  SAY @52
  IF ~~ THEN DO ~SetGlobal("QuintTestimony","LOCALS",1)TakePartyItem("QuintT")~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.5
  SAY @52
  IF ~~ THEN DO ~SetGlobal("KarlatTestimony","LOCALS",1)TakePartyItem("KarlatT")~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY @53
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",2)TakePartyItem("QuintT")TakePartyItem("KarlatT")~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.1 24.1
  SAY @54
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",3)ClearAllActions()StartCutSceneMode()StartCutScene("Court")~ EXIT
END

// запуск катсцены Court - появляются Квинт и Карлат, Карлат начинает разговор - "Приветствую вас, Стражница. Приветствую вас, Судия." - реплика Квинта - "Вот, с лицами недвижными из льда, мы ожидаем часа для суда!" - далее диалог Стражницы - "Вы хорошо знаете, какие обвинения выдвигает против вас Повелитель Утра..."
// -------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("JaregQuest","GLOBAL",2)~ THEN BEGIN 31 // from:
  SAY @55
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 32
  IF ~~ THEN REPLY @56 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.3
  SAY @57
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 29
  IF ~~ THEN REPLY @60 GOTO 32
END

// --------------------------------------------------------------------------

IF ~~ THEN BEGIN 35 // from:
  SAY @61
  IF ~~ THEN EXTERN ~KARLATNW~ 27 // Наши души мечтают о покое, Стражница, а наши сердца -- о правосудии. THEN EXTERN ~GUARDIAN~ 36
END

IF ~~ THEN BEGIN 36 // from: KARLATNW 27
  SAY @62
  IF ~~ THEN REPLY @63 EXTERN ~QUINTNW2~ 24 // Судия, вы даровали мне страдание...
  IF ~~ THEN REPLY @64 EXTERN ~KARLATNW~ 33 // Нет!!! Филактерия -- это все!
  IF ~~ THEN REPLY @65 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.3
  SAY @66
  IF ~ PartyHasItem("BelialT")~ THEN REPLY @67 GOTO 38
  IF ~~ THEN REPLY @68 GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @69
  IF ~~ THEN DO ~TakePartyItem("BelialT")SetGlobal("JaregQuest","GLOBAL",4)ClearAllActions()StartCutSceneMode()StartCutScene("Court2")~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY @70
  IF ~~ THEN REPLY @63 EXTERN ~QUINTNW2~ 24 // Судия, вы даровали мне страдание...
  IF ~~ THEN REPLY @64 EXTERN ~KARLATNW~ 33 // Нет!!! Филактерия -- это все!
END

IF ~~ THEN BEGIN 40 // from: QUINTNW2 10 
  SAY @71
  IF ~~ THEN EXTERN ~KARLATNW~ 28 // Наконец-то! То, что было у меня украдено, мне наконец вернули.
END

IF ~~ THEN BEGIN 41 // from: KARLATNW 33
  SAY @72
  IF ~~ THEN EXTERN ~QUINTNW2~ 28 // По крайней мере, безумия больше нет...
END

IF ~~ THEN BEGIN 42 // from: KARLATNW 28 
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 74
  IF ~~ THEN REPLY @75 GOTO 75
  IF ~~ THEN REPLY @76 GOTO 76
  IF ~~ THEN REPLY @77 GOTO 77
END

IF ~~ THEN BEGIN 43 // from: QUINTNW2 11 
  SAY @73
  IF ~~ THEN REPLY @78 GOTO 47
  IF ~~ THEN REPLY @79 GOTO 45
  IF ~~ THEN REPLY @76 GOTO 46
  IF ~~ THEN REPLY @77 GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 42.1 42.1
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 48
  IF ~~ THEN REPLY @82 GOTO 49
END

IF ~~ THEN BEGIN 45 // from: 42.2 42.2
  SAY @83
  IF ~~ THEN REPLY @81 GOTO 48
  IF ~~ THEN REPLY @82 GOTO 49
END

IF ~~ THEN BEGIN 46 // from: 42.3 42.3
  SAY @84
  IF ~~ THEN REPLY @81 GOTO 48
  IF ~~ THEN REPLY @82 GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 42.3 42.3
  SAY @85
  IF ~~ THEN REPLY @81 GOTO 48
  IF ~~ THEN REPLY @82 GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 44.2 45.2 46.2
  SAY @86
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",5)
SetGlobal("Charwood_Is_Saved","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court3")~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.1
  SAY @87
  IF ~~ THEN EXTERN ~QUINTNW2~ 25 // Да, это я, судия! Я никогда себя не прощу!
END

IF ~~ THEN BEGIN 50 // from: QUINTNW2 12
  SAY @88
  IF ~~ THEN EXTERN ~KARLATNW~ 29 // Я сделал это быстро, они почти не испытывали боли.
END

IF ~~ THEN BEGIN 51 // from: KARLATNW 29
  SAY @89
  IF ~  InMyArea("Belial")~ THEN EXTERN ~BELIAL~ 26 // Надо сказать, это был один из моих шедевров.
  IF ~  !InMyArea("Belial")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.1 BELIAL 26
  SAY @90
  IF ~~ THEN GOTO 49
END

// --------------------------------------------------------------------------

IF ~~ THEN BEGIN 53 // from: BELIAL 19
  SAY @91
  IF ~~ THEN EXTERN ~BELIAL~ 20 // Он-Она может признавать меня виновным сколько угодно, моя леди, но наказать меня -- совсем другое дело. У тебя нет надо мною власти, Стражница...
END

IF ~~ THEN BEGIN 54 // from: BELIAL 20
  SAY @92
  IF ~~ THEN REPLY @93 EXTERN ~BELIAL~ 21 // Ха! Ваш судья глуп, Стражница! Заседание закрыто, дело разобрано. По приговору Латандера, мы все свободны... Даже я!
  IF ~~ THEN REPLY @94 EXTERN ~BELIAL~ 22 // Нет! И быть запертым в этом месте навсегда!? Этого не может быть!
END

IF ~~ THEN BEGIN 55 // from: BELIAL 21
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 58
  IF ~~ THEN REPLY @97 GOTO 59
END

IF ~~ THEN BEGIN 56 // from: BELIAL 22
  SAY @98
  IF ~~ THEN EXTERN ~QUINTNW2~ 29 // Вы мудрее, чем мне думалось, мой судия... Мы не заслуживаем ничего лучшего, чем вечное искупление...
END

IF ~~ THEN BEGIN 57 // from: QUINTNW2 29
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 60
  IF ~~ THEN REPLY @97 GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY @101
  IF ~~ THEN REPLY @81 GOTO 62
  IF ~~ THEN REPLY @82 GOTO 63
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY @102
  IF ~~ THEN REPLY @81 GOTO 62
  IF ~~ THEN REPLY @82 GOTO 63
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY @101
  IF ~~ THEN REPLY @81 GOTO 64
  IF ~~ THEN REPLY @82 GOTO 65
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY @102
  IF ~~ THEN REPLY @81 GOTO 64
  IF ~~ THEN REPLY @82 GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 58.2 59.2
  SAY @103
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",5)GiveItemCreate("PHYLACT3",Player1,1,0,0)
SetGlobal("Charwood_Is_Saved","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court4")~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 60.2 61.2
  SAY @103
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",6)
SetGlobal("Charwood_Is_Cursed","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court5")~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.1 59.1
  SAY @87
  IF ~~ THEN EXTERN ~QUINTNW2~ 26 // Да, это я, судия! Я никогда себя не прощу!
END

IF ~~ THEN BEGIN 66 // from: QUINTNW2 14
  SAY @88
  IF ~~ THEN EXTERN ~KARLATNW~ 30 // Я сделал это быстро, они почти не испытывали боли.
END

IF ~~ THEN BEGIN 67 // from: KARLATNW 30
  SAY @89
  IF ~  InMyArea("Belial")~ THEN EXTERN ~BELIAL~ 23 // Надо сказать, это был один из моих шедевров.
  IF ~  !InMyArea("Belial")~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.1 BELIAL 23
  SAY @90
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68
  SAY @86
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",6)GiveItemCreate("PHYLACT3",Player1,1,0,0)
SetGlobal("Charwood_Is_Saved","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court4")~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 60.1 61.1
  SAY @87
  IF ~~ THEN EXTERN ~QUINTNW2~ 27 // Да, это я, судия! Я никогда себя не прощу!
END

IF ~~ THEN BEGIN 70 // from: QUINTNW2 15
  SAY @88
  IF ~~ THEN EXTERN ~KARLATNW~ 31 // Я сделал это быстро, они почти не испытывали боли.
END

IF ~~ THEN BEGIN 71 // from: KARLATNW 31
  SAY @89
  IF ~  InMyArea("Belial")~ THEN EXTERN ~BELIAL~ 24 // Надо сказать, это был один из моих шедевров.
  IF ~  !InMyArea("Belial")~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1 BELIAL 24
  SAY @90
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72
  SAY @86
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",6)
SetGlobal("Charwood_Is_Cursed","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court5")~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 42.1
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 78
  IF ~~ THEN REPLY @82 GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 42.2 42.2
  SAY @83
  IF ~~ THEN REPLY @81 GOTO 78
  IF ~~ THEN REPLY @82 GOTO 79
END

IF ~~ THEN BEGIN 76 // from: 42.3 42.3
  SAY @84
  IF ~~ THEN REPLY @81 GOTO 78
  IF ~~ THEN REPLY @82 GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 42.3 42.3
  SAY @85
  IF ~~ THEN REPLY @81 GOTO 78
  IF ~~ THEN REPLY @82 GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 74.2 75.2 76.2 77.2
  SAY @86
  IF ~~ THEN DO ~SetGlobal("JaregQuest","GLOBAL",5)
SetGlobal("Charwood_Is_Cursed","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("Court6")~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 74.1 75.1 76.1 77.1
  SAY @87
  IF ~~ THEN EXTERN ~QUINTNW2~ 30 // Да, это я, судия! Я никогда себя не прощу!
END

IF ~~ THEN BEGIN 80 // from: QUINTNW2 16
  SAY @88
  IF ~~ THEN EXTERN ~KARLATNW~ 32 // Я сделал это быстро, они почти не испытывали боли.
END

IF ~~ THEN BEGIN 81 // from: KARLATNW 32
  SAY @89
  IF ~  InMyArea("Belial")~ THEN EXTERN ~BELIAL~ 25 // Надо сказать, это был один из моих шедевров.
  IF ~  !InMyArea("Belial")~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 51.1 BELIAL 25
  SAY @90
  IF ~~ THEN GOTO 79
END
