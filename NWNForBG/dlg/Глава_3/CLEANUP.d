// Форт Илкард, Ополченец. Этот полурослик - один из многих обывателей, которые приехали в Колодец Беорунна, чтобы помогать Союзу Лордов.

BEGIN ~CLEANUP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Пусть огни горят поярче, я всегда говорю.~
  IF ~~ THEN EXIT
END

