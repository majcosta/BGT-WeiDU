BEGIN ~dezkiel~

IF ~True()~ THEN BEGIN 0
  SAY @23760
  IF ~~ THEN REPLY @23761 GOTO 1
  IF ~~ THEN REPLY @23762 GOTO 2
  IF ~~ THEN REPLY @23763 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @23764
  IF ~~ THEN REPLY @23767 GOTO 3
  IF ~~ THEN REPLY @23768 GOTO 4
  IF ~~ THEN REPLY @23769 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @23765
  IF ~~ THEN REPLY @23772 GOTO 5
  IF ~~ THEN REPLY @23773 GOTO 3
  IF ~~ THEN REPLY @23774 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @23766
  IF ~~ THEN REPLY @23775 GOTO 4
  IF ~~ THEN REPLY @23776 GOTO 2
  IF ~~ THEN REPLY @23777 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @23770
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23771
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23778
  IF ~~ THEN DO ~Enemy()~ EXIT
END
