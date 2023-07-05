// Сумрачный лес, 

BEGIN ~RUNE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Это древнее сооружение покрыто мхом, и его обвивают вьющиеся растения... невозможно сказать, сколько времени оно уже стоит здесь. Особенный интерес представляют крупные руны на непонятном тебе языке.~
  IF ~  !PartyHasItem("NWBOOK35")~ THEN GOTO 1
  IF ~  PartyHasItem("NWBOOK35")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Однако без перевода этих рун вряд ли можно понять, что они обозначают, и зачем нужно это непонятное сооружение. Его загадки останутся тайной.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~При помощи записей в дневнике исследователя ты идентифицируешь эти руны как древний нетерский язык. Тебе даже удается составить грубый перевод. Руны написаны в углублениях... в три ряда по четыре руны. Нажатие одной руны в каждом ряду дает фразу из трех слов... что это обозначает - неизвестно.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Ты хочешь нажать руну в первом ряду?~
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'Гур-Атоль'.~ GOTO 4
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'Нетер'.~ GOTO 5
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'император'.~ GOTO 4
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'мощь'.~ GOTO 4
  IF ~~ THEN REPLY ~Уйти.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Ты хочешь нажать руну во втором ряду?~
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'всегда'~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'никогда'.~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'делать'.~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'будет'.~ GOTO 6
  IF ~~ THEN REPLY ~Уйти.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~Ты хочешь нажать руну во втором ряду?~
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'всегда'~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'никогда'.~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'делать'.~ GOTO 6
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'будет'.~ GOTO 7
  IF ~~ THEN REPLY ~Уйти.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Ты хочешь нажать руну в третьем ряду?~
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'господствовать'.~ GOTO 9
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'возвращаться'.~ GOTO 9
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'править'.~ GOTO 9
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'уничтожить'.~ GOTO 9
  IF ~~ THEN REPLY ~Уйти.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY ~Ты хочешь нажать руну в третьем ряду?~
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'господствовать'.~ GOTO 9
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'возвращаться'.~ GOTO 9
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'править'.~ GOTO 10
  IF ~~ THEN REPLY ~Нажать руну, обозначающую 'уничтожить'.~ GOTO 9
  IF ~~ THEN REPLY ~Уйти.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Ты отходишь от рун, так как вдруг ощущаешь слабое, но ощущаемое присутствие зла, окружающее их.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY ~Когда ты нажимаешь последнюю руну, раздается зловещий звук. Берегись...~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_GREATER_MALISON)PlaySound("EFF_M02")SetGlobal("UndeadSpawn","NW2510",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~Когда ты нажимаешь последнюю руну, древнее сооружение начинает гудеть...~
  IF ~~ THEN DO ~SetGlobal("Portal2510","GLOBAL",1)PlaySound("EFF_M02")DestroySelf()~ EXIT
END

