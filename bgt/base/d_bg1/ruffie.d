BEGIN ~ruffie~

IF ~True()~ THEN BEGIN 0
  SAY @18584
  IF ~~ THEN REPLY @18585 GOTO 1
  IF ~~ THEN REPLY @18587 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18588
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310338 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18589
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310338 EXIT
END
