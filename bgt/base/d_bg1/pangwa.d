BEGIN ~pangwa~

IF ~True()~ THEN BEGIN 0
  SAY @20052
  IF ~~ THEN REPLY @20053 GOTO 1
  IF ~~ THEN REPLY @20054 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @20055
  IF ~~ THEN DO ~Enemy()~ UNSOLVED_JOURNAL @310487 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @20056
  IF ~~ THEN REPLY @20057 GOTO 3
  IF ~~ THEN REPLY @20058 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @20075
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310488 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @20085
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310488 EXIT
END
