BEGIN ~lesley~

IF ~True()~ THEN BEGIN 0
  SAY @18622
  IF ~~ THEN REPLY @18623 GOTO 1
  IF ~~ THEN REPLY @18624 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18625
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18626
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
