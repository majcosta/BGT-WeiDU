BEGIN ~iron12~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7588
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7594 GOTO 1
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7595 GOTO 2
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7596 GOTO 3
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7597 GOTO 4
  IF ~~ THEN REPLY @7598 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7589
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7590
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7591
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7592
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @7599
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9222
  IF ~~ THEN EXIT
END
