BEGIN ~arkush~

IF ~True()~ THEN BEGIN 0
  SAY @18355
  IF ~~ THEN REPLY @18364 GOTO 1
  IF ~~ THEN REPLY @18369 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18365
  IF ~~ THEN REPLY @18368 GOTO 9
  IF ~~ THEN REPLY @18410 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @18372
  IF ~~ THEN REPLY @18375 GOTO 3
  IF ~~ THEN REPLY @18379 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @18377
  IF ~~ THEN REPLY @18414 GOTO 4
  IF ~~ THEN REPLY @18416 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @18413
  IF ~~ THEN REPLY @18429 GOTO 5
  IF ~~ THEN REPLY @18433 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @18431
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18434
  IF ~~ THEN REPLY @18435 GOTO 5
  IF ~~ THEN REPLY @18436 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @18437
  IF ~~ THEN REPLY @18438 GOTO 8
  IF ~~ THEN REPLY @18439 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @18440
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @18441
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
