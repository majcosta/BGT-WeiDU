BEGIN ~entar~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @1517
  IF ~~ THEN DO ~Shout(1)
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6136
  IF ~~ THEN UNSOLVED_JOURNAL @310362 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8983
  IF ~~ THEN EXIT
END
