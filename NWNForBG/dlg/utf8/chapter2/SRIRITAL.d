// Алтарь - портал в мир духа в лесу Невервинтер

BEGIN ~SRIRITAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)PartyHasItem("RitDagg2")~ THEN BEGIN 0 // from:
  SAY ~Под водопадом вырисовываются зловещие очертания древнего алтаря. Он покрыт непонятными надписями и пятнами крови (некоторые из них довольно свежие), а вокруг алтаря валяются кости.~
  IF ~~ THEN REPLY ~Провести лезвием кинжала по своей ладони и капнуть кровью на алтарь.~ GOTO 1
  IF ~~ THEN REPLY ~Сделать над алтарем какие-нибудь пассы кинжалом.~ GOTO 2
  IF ~~ THEN REPLY ~Принести в жертву небольшое дикое животное на алтаре, используя церемониальный кинжал.~ GOTO 3
  IF ~~ THEN REPLY ~Вытащить кинжал и всадить его себе в грудь.~ GOTO 4
  IF ~~ THEN REPLY ~Вытащить кинжал, всадить его себе в грудь, наказав спутникам сделать то же самое.~ GOTO 4
  IF ~~ THEN REPLY ~Нацарапать кинжалом на алтаре свои инициалы.~ GOTO 5
  IF ~~ THEN REPLY ~Покинуть алтарь.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Как только первая капля твоей крови падает на алтарь, по твоей спине пробегает жуткая дрожь, к горлу подкатывает тошнота, а в венах закипает кровь.~
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Похоже, ничего не произошло.~
   IF ~~ THEN REPLY ~Провести лезвием кинжала по своей ладони и капнуть кровью на алтарь.~ GOTO 1
  IF ~~ THEN REPLY ~Принести в жертву небольшое дикое животное на алтаре, используя церемониальный кинжал.~ GOTO 3
  IF ~  NumInParty(1)~ THEN REPLY ~Вытащить кинжал и всадить его себе в грудь.~ GOTO 4
  IF ~  !NumInParty(1)~ THEN REPLY ~Вытащить кинжал, всадить его себе в грудь, наказав спутникам сделать то же самое.~ GOTO 4
  IF ~~ THEN REPLY ~Нацарапать кинжалом на алтаре свои инициалы.~ GOTO 5
  IF ~~ THEN REPLY ~Покинуть алтарь.~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ты ловишь белку и убиваешь ее на алтаре. Как только кровь попадает на алтарь, тебя наполняет чувство ужаса и отвращения, так как твое тело внезапно начинает разлагаться.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY ~Твои чувства взрываются всеми возможными цветами, звуками, ощущениями, вкусами и запахами.~
  IF ~~ THEN DO ~TakePartyItem("RitDagg2")SetGlobal("SriritPortal","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("ToSririt")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~Внезапный дикий крик пронзает твои уши, а с небес льется яркий, почти ослепляющий свет. Неожиданно ты понимаешь, что кроме тебя здесь еще кто-то есть.~
  IF ~~ THEN DO ~PlaySound("EFF_M89")DestroySelf()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SriritPortal","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Церемониальный кинжал исчез. Кажется, портал закрыт навсегда.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)!PartyHasItem("RitDagg2")~ THEN BEGIN 0 // from:
  SAY ~Сейчас ты ничего не сможешь здесь сделать.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END
