BEGIN ~karan~

IF ~True()~ THEN BEGIN 0
  SAY @20458
  IF ~~ THEN REPLY @20467 GOTO 2
  IF ~~ THEN REPLY @20472 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @20468
  IF ~~ THEN REPLY @20482 GOTO 3
  IF ~~ THEN REPLY @20483 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @20476
  IF ~~ THEN REPLY @20480 GOTO 1
  IF ~~ THEN REPLY @20481 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @20484
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310397 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @20486
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310397 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11822
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @11861
  IF ~~ THEN EXIT
END
