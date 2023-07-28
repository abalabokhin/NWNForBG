ADD_TRANS_TRIGGER WSMITH01 13 ~!PartyHasItem("scalebl")~ DO 0

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("scalebl")~ THEN GOTO scaleblue
END

APPEND WSMITH01
  IF ~~ THEN BEGIN scaleblue
    SAY @107524 /* ~Хм. Вижу, у тебя есть чешуя синего дракона. Совсем недавно я разгадал секрет изготовления доспеха из этой зверюги. Хочешь заказать?~ */
    IF ~~ THEN REPLY #59721 GOTO scaleblue2 /* ~А что для этого нужно?~ */
    IF ~~ THEN REPLY #59715 GOTO skip /* ~Вряд ли. У меня есть что-нибудь еще пригодное?~ */
  END
  
  IF ~~ THEN BEGIN scaleblue2
    SAY @107525 /* ~Две вещи, <GIRLBOY>. Работа будет стоить тебе 8000 золотых, не меньше, а так как я без подмастерья, тебе придется остаться на день и помочь мне в кузне.~ */
    IF ~PartyGoldGT(7999)~ THEN REPLY #59775 DO ~TakePartyGold(8000) DestroyGold(8000) SetGlobal("NW#Items","ar0334",1)~ GOTO 56 /* ~Отлично. Так и сделаем.~ */
    IF ~PartyGoldLT(8000)~ THEN REPLY #70892 GOTO skip /* ~У меня нет столько золота.~ */
    IF ~~                  THEN REPLY #59715 GOTO skip /* ~Вряд ли. У меня есть что-нибудь еще пригодное?~ */
  END  
  
  IF ~~ THEN BEGIN skip
    SAY #59723 /* ~Сейчас еще раз гляну. Хм...~ */
    COPY_TRANS WSMITH01 13
  END
END