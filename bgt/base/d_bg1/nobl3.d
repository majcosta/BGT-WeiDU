BEGIN ~nobl3~

IF ~True()~ THEN BEGIN 0
  SAY @3733
  IF ~~ THEN EXTERN ~NOBW3~ 0
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6321
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9139
  IF ~~ THEN EXIT
END
