BEGIN ~cyderm~

IF WEIGHT #3 ~True()~ THEN BEGIN 0
  SAY @8473
  IF ~Global("AcceptedJob","GLOBAL",1)~ THEN REPLY @8482 GOTO 1
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("AcceptedJob","GLOBAL",1)~ THEN REPLY @8483 GOTO 3
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("AcceptedJob","GLOBAL",1)~ THEN REPLY @8484 GOTO 6
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
Global("AcceptedJob","GLOBAL",1)~ THEN REPLY @8485 GOTO 5
  IF ~Global("AcceptedJob","GLOBAL",1)~ THEN REPLY @8486 GOTO 2
  IF ~Global("AcceptedJob","GLOBAL",0)~ THEN REPLY @17544 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8474
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8475
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8476
  IF ~~ THEN DO ~SetGlobal("CyrdemacMoves","GLOBAL",1)
MoveToPoint([675.784])~ EXIT
END

IF WEIGHT #2 ~Global("CyrdemacMoves","GLOBAL",1)~ THEN BEGIN 4
  SAY @8477
  IF ~~ THEN REPLY @8487 GOTO 5
  IF ~~ THEN REPLY @8488 GOTO 2
  IF ~~ THEN REPLY @8489 GOTO 1
END

IF ~~ THEN BEGIN 5
  SAY @8478
  IF ~~ THEN REPLY @8490 GOTO 2
  IF ~~ THEN REPLY @8491 GOTO 1
  IF ~~ THEN REPLY @17543 DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8479
  IF ~~ THEN REPLY @8492 GOTO 7
  IF ~~ THEN REPLY @8493 GOTO 8
  IF ~~ THEN REPLY @8494 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8480
  IF ~~ THEN REPLY @8495 GOTO 2
  IF ~~ THEN REPLY @8496 GOTO 1
END

IF ~~ THEN BEGIN 8
  SAY @8481
  IF ~~ THEN DO ~SetGlobal("CyrdemacMoves","GLOBAL",1)
MoveToPoint([675.784])~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @8499
  IF ~~ THEN UNSOLVED_JOURNAL @310266 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8962
  IF ~~ THEN EXIT
END
