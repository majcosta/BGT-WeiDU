BEGIN ~diarmid~

IF ~True()~ THEN BEGIN 0
  SAY @10992
  IF ~~ THEN REPLY @10993 GOTO 1
  IF ~~ THEN REPLY @10994 GOTO 2
  IF ~~ THEN REPLY @10996 GOTO 3
  IF ~~ THEN REPLY @10997 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @10995
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310139 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10998
  IF ~~ THEN REPLY @11001 GOTO 3
  IF ~~ THEN REPLY @11002 GOTO 4
  IF ~~ THEN REPLY @11003 GOTO 1
  IF ~~ THEN REPLY @11004 GOTO 5
  IF ~~ THEN REPLY @11015 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @10999
  IF ~~ THEN REPLY @11011 GOTO 2
  IF ~~ THEN REPLY @11012 GOTO 4
  IF ~~ THEN REPLY @11013 GOTO 1
  IF ~~ THEN REPLY @11014 GOTO 5
  IF ~~ THEN REPLY @11010 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @11000
  IF ~~ THEN REPLY @11006 GOTO 3
  IF ~~ THEN REPLY @11007 GOTO 2
  IF ~~ THEN REPLY @11008 GOTO 1
  IF ~~ THEN REPLY @11009 GOTO 5
  IF ~~ THEN REPLY @11018 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @11005
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310139 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11016
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310139 EXIT
END
