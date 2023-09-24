// Форт Илкард, Ополченец. Этот полурослик - один из многих обывателей, которые приехали в Колодец Беорунна, чтобы помогать Союзу Лордов.

BEGIN ~NWCLEANP~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

