BEGIN ~nobw3~

IF ~~ THEN BEGIN 0
  SAY @3740
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6325
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9131
  IF ~~ THEN EXIT
END
