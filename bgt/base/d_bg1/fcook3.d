BEGIN ~fcook3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7638
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7639
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @7640
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8992
  IF ~~ THEN EXIT
END
