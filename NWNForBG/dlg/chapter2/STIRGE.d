// Южная дорога 2  Стирж Стирж - странный тип. Дварф-вор, говорят, верит, что он умней всех живущих на земле. Этого дварфа в последний раз видели в необитаемых землях вдоль Южной дороги, хотя там он может скрываться где угодно. 

// Enemy()
// UseItem("POTN10",Myself) // Зелье невидимости
// EquipMostDamagingMelee()
// AttackReevaluate(NearestEnemyOf(Myself),15)

BEGIN ~STIRGE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @13
  IF ~~ THEN DO ~Enemy()UseItem("Potn10",Myself)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @14
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @23
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @37
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @38
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @39
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3
  SAY @40
  IF ~~ THEN REPLY @32 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @35 GOTO 30
  IF ~~ THEN REPLY @45 GOTO 31
  IF ~~ THEN REPLY @46 GOTO 32
END

IF ~~ THEN BEGIN 19 // from: 14.4
  SAY @47
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.5
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 33
  IF ~~ THEN REPLY @29 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @32 GOTO 36
  IF ~~ THEN REPLY @51 GOTO 37
  IF ~~ THEN REPLY @35 GOTO 38
  IF ~~ THEN REPLY @52 GOTO 39
  IF ~~ THEN REPLY @53 GOTO 40
END

IF ~~ THEN BEGIN 21 // from: 14.6
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 41
  IF ~~ THEN REPLY @56 GOTO 42
  IF ~~ THEN REPLY @57 GOTO 43
  IF ~~ THEN REPLY @32 GOTO 44
  IF ~~ THEN REPLY @58 GOTO 45
  IF ~~ THEN REPLY @59 GOTO 46
  IF ~~ THEN REPLY @35 GOTO 47
  IF ~~ THEN REPLY @33 GOTO 48
END

IF ~~ THEN BEGIN 22 // from: 14.7
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 49
  IF ~~ THEN REPLY @62 GOTO 50
  IF ~~ THEN REPLY @45 GOTO 51
  IF ~~ THEN REPLY @32 GOTO 52
  IF ~~ THEN REPLY @63 GOTO 53
  IF ~~ THEN REPLY @29 GOTO 54
  IF ~~ THEN REPLY @35 GOTO 55
  IF ~~ THEN REPLY @64 GOTO 56
END

IF ~~ THEN BEGIN 23 // from: 14.8
  SAY @65
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.9
  SAY @66
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY @67
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 18.2
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 57
  IF ~~ THEN REPLY @70 GOTO 58
  IF ~~ THEN REPLY @71 GOTO 59
  IF ~~ THEN REPLY @72 GOTO 60
  IF ~~ THEN REPLY @35 GOTO 61
  IF ~~ THEN REPLY @33 GOTO 62
END

IF ~~ THEN BEGIN 27 // from: 18.3
  SAY @73
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.4
  SAY @74
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.5
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 63
  IF ~~ THEN REPLY @77 GOTO 64
  IF ~~ THEN REPLY @50 GOTO 65
  IF ~~ THEN REPLY @34 GOTO 66
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~~ THEN REPLY @78 GOTO 68
END

IF ~~ THEN BEGIN 30 // from: 18.6
  SAY @79
  IF ~~ THEN REPLY @49 GOTO 69
  IF ~~ THEN REPLY @80 GOTO 70
  IF ~~ THEN REPLY @34 GOTO 71
  IF ~~ THEN REPLY @81 GOTO 72
  IF ~~ THEN REPLY @35 GOTO 73
  IF ~~ THEN REPLY @82 GOTO 74
END

IF ~~ THEN BEGIN 31 // from: 18.7
  SAY @83
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.8
  SAY @84
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.1
  SAY @85
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.2
  SAY @86
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 35 // from: 20.3
  SAY @88
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 20.4
  SAY @89
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.5
  SAY @90
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.6
  SAY @91
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 20.7
  SAY @92
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 20.8
  SAY @93
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 41 // from: 21.1
  SAY @94
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 21.2
  SAY @95
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 21.3
  SAY @96
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 44 // from: 21.4
  SAY @97
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 21.5
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 76
  IF ~~ THEN REPLY @100 GOTO 77
  IF ~~ THEN REPLY @101 GOTO 78
  IF ~~ THEN REPLY @102 GOTO 79
  IF ~~ THEN REPLY @35 GOTO 80
  IF ~~ THEN REPLY @103 GOTO 81
END

IF ~~ THEN BEGIN 46 // from: 21.6
  SAY @104
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 21.7
  SAY @105
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.8
  SAY @106
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 22.1
  SAY @107
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 22.2
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 82
  IF ~~ THEN REPLY @42 GOTO 83
  IF ~~ THEN REPLY @64 GOTO 84
  IF ~~ THEN REPLY @110 GOTO 85
  IF ~~ THEN REPLY @35 GOTO 86
  IF ~~ THEN REPLY @102 GOTO 87
END

IF ~~ THEN BEGIN 51 // from: 22.3
  SAY @111
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.4
  SAY @112
  IF ~~ THEN REPLY @49 GOTO 33
  IF ~~ THEN REPLY @29 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @32 GOTO 36
  IF ~~ THEN REPLY @51 GOTO 37
  IF ~~ THEN REPLY @35 GOTO 38
  IF ~~ THEN REPLY @52 GOTO 39
  IF ~~ THEN REPLY @53 GOTO 40
END

IF ~~ THEN BEGIN 53 // from: 22.5
  SAY @113
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 22.6
  SAY @114
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 22.7
  SAY @115
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 22.7
  SAY @116
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 26.1
  SAY @117
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 58 // from: 26.2
  SAY @118
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 26.3
  SAY @119
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 26.4
  SAY @120
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 26.5
  SAY @121
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 26.6
  SAY @122
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 29.1
  SAY @123
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 29.2
  SAY @124
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 29.3
  SAY @125
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 29.4
  SAY @126
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 67// from: 29.5
  SAY @127
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 29.6
  SAY @128
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 69// from: 30.1
  SAY @129
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 70// from: 30.2
  SAY @130
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 71// from: 30.3
  SAY @131
  IF ~~ THEN REPLY @61 GOTO 49
  IF ~~ THEN REPLY @62 GOTO 50
  IF ~~ THEN REPLY @45 GOTO 51
  IF ~~ THEN REPLY @32 GOTO 52
  IF ~~ THEN REPLY @63 GOTO 53
  IF ~~ THEN REPLY @29 GOTO 54
  IF ~~ THEN REPLY @35 GOTO 55
  IF ~~ THEN REPLY @64 GOTO 56
END

IF ~~ THEN BEGIN 72// from: 30.4
  SAY @132
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 73// from: 30.5
  SAY @133
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 74// from: 30.6
  SAY @134
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 75
  SAY @135
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 76 // from: 45.1
  SAY @136
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 77// from: 45.2
  SAY @137
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 78// from: 45.3
  SAY @138
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 79// from: 45.4
  SAY @139
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 80// from: 45.5
  SAY @140
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 81// from: 45.6
  SAY @141
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 82// from: 50.1
  SAY @142
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 50.2
  SAY @143
  IF ~~ THEN REPLY @87 GOTO 75
END

IF ~~ THEN BEGIN 84// from: 50.3
  SAY @144
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 85// from: 50.4
  SAY @145
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 86// from: 50.5
  SAY @146
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 87// from: 50.6
  SAY @147
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)ApplySpellRES("runrun",Myself)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 88// from: 75.1
  SAY @148
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADSTIRGE","GLOBAL",1)GiveItem("EarBand",LastTalkedToBy)SetGlobal("StirgeDestroy","MYAREA",1)~ EXIT
END














