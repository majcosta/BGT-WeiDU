BEGIN ~read2~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @3348
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6369
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9097
  IF ~~ THEN EXIT
END
