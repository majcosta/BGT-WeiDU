BEGIN ~therel~

IF WEIGHT #0 ~Global("Therella","GLOBAL",0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @21471
  IF ~~ THEN REPLY @21484 GOTO 3
  IF ~~ THEN REPLY @21487 GOTO 4
  IF ~~ THEN REPLY @21490 GOTO 5
END

IF WEIGHT #1 ~Global("Therella","GLOBAL",0)
ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN BEGIN 1
  SAY @21472
  IF ~~ THEN REPLY @21485 GOTO 3
  IF ~~ THEN REPLY @21488 GOTO 4
  IF ~~ THEN REPLY @21491 GOTO 5
END

IF WEIGHT #2 ~Global("Therella","GLOBAL",0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @21473
  IF ~~ THEN REPLY @21486 GOTO 3
  IF ~~ THEN REPLY @21489 GOTO 4
  IF ~~ THEN REPLY @21492 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @21474
  IF ~~ THEN REPLY @21493 GOTO 6
  IF ~~ THEN REPLY @21494 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @21475
  IF ~~ THEN DO ~SetGlobal("TherTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21476
  IF ~~ THEN DO ~SetGlobal("TherTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21477
  IF ~~ THEN UNSOLVED_JOURNAL @310606 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @21478
  IF ~~ THEN REPLY @21495 GOTO 8
  IF ~~ THEN REPLY @21496 GOTO 9
  IF ~~ THEN REPLY @21497 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @21479
  IF ~~ THEN DO ~SetGlobal("TherTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21480
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~Global("Therella","GLOBAL",2)
!Dead("Dalton")~ THEN BEGIN 10
  SAY @21481
  IF ~~ THEN DO ~GiveGoldForce(300)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @21482
  IF ~~ THEN DO ~SetGlobal("Therella","GLOBAL",9)~ EXIT
END

IF WEIGHT #8 ~Global("Therella","GLOBAL",9)~ THEN BEGIN 12
  SAY @21483
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~Global("Therella","GLOBAL",1)~ THEN BEGIN 13
  SAY @22025
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Dead("Dalton")~ THEN BEGIN 14
  SAY @22027
  IF ~~ THEN REPLY @22028 GOTO 15
  IF ~~ THEN REPLY @22029 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @22031
  IF ~~ THEN DO ~EraseJournalEntry(@310606)
EraseJournalEntry(@310607)
EscapeArea()~ SOLVED_JOURNAL @310610 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @22033
  IF ~~ THEN DO ~EraseJournalEntry(@310606)
EraseJournalEntry(@310607)
EscapeArea()~ SOLVED_JOURNAL @310610 EXIT
END

IF WEIGHT #5 ~Global("TherTalk","GLOBAL",1)
Global("Therella","GLOBAL",0)~ THEN BEGIN 17
  SAY @22201
  IF ~~ THEN REPLY @22202 GOTO 3
  IF ~~ THEN REPLY @22203 GOTO 4
  IF ~~ THEN REPLY @22204 GOTO 5
END

IF WEIGHT #6 ~Global("TherTalk","GLOBAL",0)
Global("Therella","GLOBAL",0)
Global("Daltan","GLOBAL",1)~ THEN BEGIN 18
  SAY @22744
  IF ~~ THEN EXIT
END
