// Центр Невервинтера Ярмарка Мечей   Гракс  Дварф   Наемники обычно держатся довольно холодно и отстраненно, и этот гном - не исключение. Похоже, он участвовал во многих битвах по разным поводам.

BEGIN ~GRAXX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Я буду говорить с вами только если у вас важное дело. У меня тут хорошая выпивка, а официантка строит мне глазки. И они не чета вашим!~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Наверное. Но давайте быстрее. Мне нужно еще в сотню мест. Да, точно.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 6
  IF ~~ THEN REPLY ~Арибет терпит наемников, даже если в Невервинтере уже есть ополчение?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Тогда идите. Мне не терпится промочить горло.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Вы и так все знаете. У вас уже есть пропуск в "Перчатку" в таверне Голая Доска. Это в районе Черного озера.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Вот, теперь мы говорим на одном языке. Есть одно местечко... Хмм... Да, вы хорошо владеете оружием. Только не болтайте об этом. Не надо, чтобы все знали. Есть клуб для сражений. Называется "Перчатка". Если хотите поразмяться, идите туда. Я могу продать вам пропуск, он стоит 250 золотых.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~Вот мои 250 золотых.~ GOTO 9
  IF ~  PartyGoldLT(250)~ THEN REPLY ~У меня нет таких денег, я зайду позже.~ GOTO 2
  IF ~~ THEN REPLY ~Нет, спасибо.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Вот, теперь мы говорим на одном языке. Есть одно местечко... Хмм... Я хотел сказать про "Перчатку", но у вас медаль четвертого раунда! Это ведь вы прошли до конца, дружище. Победили всех.~
  IF ~~ THEN REPLY ~Арибет терпит наемников, даже если в Невервинтере уже есть ополчение?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Я не знаю. Это место в основном для сражений. Не для красивых дуэлей, а для простых драк.~
  IF ~~ THEN REPLY ~Вы можете сказать мне. Ничего страшного.~ GOTO 11
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN REPLY ~Ну же, вы ведь <RACE>, как и я. Между нами не должно быть секретов.~ GOTO 12
  IF ~~ THEN REPLY ~Скажите, или я применю силу!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~Следите за языком, дружище! Думаете, никто не заметил, что когда несколько стражников умерли, она наняла таких вот чужеземцев, как вы, вместо того, чтобы обратиться к нам? Если мы работаем на тех, кто больше заплатит, это еще не значит, что мы не стали бы помогать городу.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY ~Я знаю, что мечом этого не остановишь, и поэтому я бесполезен. Никто не берет на работу, разве что старый богач, который боится, что его ограбят.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~Где бы мне поразмяться?~ GOTO 6
  IF ~~ THEN REPLY ~Арибет терпит наемников, даже если в Невервинтере уже есть ополчение?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~А вот и ваш пропуск. Не говорите, где вы его взяли, хотя вряд ли вас спросят. Никто не говорит о "Перчатке", но народ все равно ее находит. Таверна Голая Доска находится в районе Черного озера. Отдайте пропуск бармену. Желаю удачи. Она вам потребуется.~
  IF ~~ THEN DO ~TakePartyGold(250)SetGlobal("MyPermit","LOCALS",1)GiveItemCreate("Grpermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY ~Нет, лучше уж я промолчу. В "Перчатке" есть одно правило. Я забыл, что это за правило, потому что о нем никто не говорит.~
  IF ~~ THEN REPLY ~Скажите, или я применю силу!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY ~Нет, лучше уж я промолчу. В "Перчатке" есть одно правило. Я забыл, что это за правило, потому что о нем никто не говорит.~
  IF ~~ THEN REPLY ~Скажите, или я применю силу!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.4
  SAY ~Если б меня было легко испугать, какой из меня был бы наемник? Вот. Так что отойдите. Не создавайте тут проблем.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MyPermit","LOCALS",1)~ THEN BEGIN 14 // from:
  SAY ~Здорово, дружище. Думаю, у меня есть время поболтать. На Ярмарке Мечей сегодня тихо, а официантка ни на что не годится.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY ~Что вам надо, а? Не приставайте к наемникам Ярмарки Мечей без причины.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

