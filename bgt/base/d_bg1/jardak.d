BEGIN ~jardak~

IF ~True()~ THEN BEGIN 0
  SAY @18810
  IF ~~ THEN REPLY @18812 GOTO 1
  IF ~~ THEN REPLY @18813 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18814
  IF ~~ THEN DO ~Enemy()~ EXIT
END
