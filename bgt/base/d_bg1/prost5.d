BEGIN ~prost5~

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 0
  SAY @8279
  IF ~~ THEN EXIT
END

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 1
  SAY @8280
  IF ~~ THEN EXIT
END

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 2
  SAY @8281
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8282
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @8283
  IF ~~ THEN JOURNAL @310343 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9101
  IF ~~ THEN EXIT
END
