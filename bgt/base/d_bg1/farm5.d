BEGIN ~farm5~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3991
  IF ~~ THEN REPLY @3993 GOTO 1
  IF ~~ THEN REPLY @3994 GOTO 2
  IF ~~ THEN REPLY @3995 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @3992
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310749 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4000
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310749 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4004
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6144
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @6145
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8987
  IF ~~ THEN EXIT
END
