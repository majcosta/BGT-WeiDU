BEGIN ~keshee~

IF ~True()~ THEN BEGIN 0
  SAY @19688
  IF ~~ THEN REPLY @19689 GOTO 1
  IF ~~ THEN REPLY @19690 GOTO 2
  IF ~~ THEN REPLY @19699 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @19711
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19734
  IF ~~ THEN REPLY @19736 GOTO 4
  IF ~~ THEN REPLY @19737 GOTO 5
  IF ~~ THEN REPLY @19738 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @19735
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19739
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @19740
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
