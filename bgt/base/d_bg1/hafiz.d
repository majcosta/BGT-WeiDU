BEGIN ~hafiz~

IF ~True()~ THEN BEGIN 0
  SAY @18326
  IF ~~ THEN REPLY @18328 GOTO 2
  IF ~~ THEN REPLY @18329 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18330
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18331
  IF ~~ THEN REPLY @18332 GOTO 3
  IF ~~ THEN REPLY @18333 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @18336
  IF ~~ THEN REPLY @18340 GOTO 4
  IF ~~ THEN REPLY @18342 GOTO 5
  IF ~~ THEN REPLY @18345 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @18348
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18350
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18351
  IF ~~ THEN DO ~GiveItem("SCRL07",LastTalkedToBy)
EscapeArea()~ EXIT
END
