BEGIN ~mtbe4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8069
  IF ~~ THEN REPLY @8073 GOTO 1
  IF ~~ THEN REPLY @8074 GOTO 2
  IF ~~ THEN REPLY @8075 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @8070
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8071
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8072
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @8076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9051
  IF ~~ THEN EXIT
END
