BEGIN ~bardol~

IF ~True()~ THEN BEGIN 0
  SAY @19486
  IF ~~ THEN REPLY @19487 GOTO 1
  IF ~~ THEN REPLY @19488 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19490
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19491
  IF ~~ THEN REPLY @19492 GOTO 3
  IF ~~ THEN REPLY @19493 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @19494
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19495
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310752 EXIT
END
