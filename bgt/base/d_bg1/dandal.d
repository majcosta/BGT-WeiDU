BEGIN ~dandal~

IF ~True()~ THEN BEGIN 0
  SAY @18660
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18661
  IF ~~ THEN REPLY @18664 GOTO 2
  IF ~~ THEN REPLY @18665 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @18666
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18667
  IF ~~ THEN REPLY @18670 GOTO 4
  IF ~~ THEN REPLY @18671 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @18673
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
