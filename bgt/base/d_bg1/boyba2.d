BEGIN ~boyba2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8826
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8827
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8828
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8945
  IF ~~ THEN EXIT
END
