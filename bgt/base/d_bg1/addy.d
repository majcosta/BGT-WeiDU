BEGIN ~addy~

IF ~True()~ THEN BEGIN 0
  SAY @9641
  IF ~~ THEN REPLY @9643 GOTO 1
  IF ~~ THEN REPLY @9644 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @9645
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310300 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9646
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310300 EXIT
END
