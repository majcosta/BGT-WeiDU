BEGIN ~iron5~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3899
  IF ~~ THEN REPLY @3915 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @3925 GOTO 1
  IF ~~ THEN REPLY @3927 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3963
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3964
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 3
  SAY @6267
  IF ~~ THEN UNSOLVED_JOURNAL @310429 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9216
  IF ~~ THEN EXIT
END
