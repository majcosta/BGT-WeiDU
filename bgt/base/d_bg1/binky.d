BEGIN ~binky~

IF ~True()~ THEN BEGIN 0
  SAY @18674
  IF ~~ THEN REPLY @18699 GOTO 1
  IF ~~ THEN REPLY @18700 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18681
  IF ~~ THEN REPLY @18683 GOTO 3
  IF ~~ THEN REPLY @18684 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @18682
  IF ~~ THEN REPLY @18685 GOTO 3
  IF ~~ THEN REPLY @18686 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @18687
  IF ~~ THEN REPLY @18689 GOTO 5
  IF ~~ THEN REPLY @18690 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @18688
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18691
  IF ~~ THEN REPLY @18696 GOTO 6
  IF ~~ THEN REPLY @18697 GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @18693
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
