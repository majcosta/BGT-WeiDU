BEGIN ~ragefa~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
See("Abela")
!Dead("Abela")~ THEN BEGIN 0
  SAY @2701
  IF ~~ THEN EXTERN ~ABELA~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2702
  IF ~~ THEN REPLY @2703 GOTO 2
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2704 GOTO 5
  IF ~Global("HelpRamazith","GLOBAL",1)~ THEN REPLY @2705 GOTO 3
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @2729 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @2706
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2707
  IF ~~ THEN DO ~Enemy()~ UNSOLVED_JOURNAL @310184 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2708
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2709
  IF ~~ THEN REPLY @2710 GOTO 2
  IF ~~ THEN REPLY @2711 GOTO 6
  IF ~Global("HelpRamazith","GLOBAL",1)~ THEN REPLY @2712 GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @2713
  IF ~~ THEN REPLY @2714 GOTO 8
  IF ~Global("HelpRamazith","GLOBAL",1)~ THEN REPLY @2715 GOTO 3
  IF ~~ THEN REPLY @2716 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2717
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2718
  IF ~~ THEN EXTERN ~ABELA~ 1
END

IF ~~ THEN BEGIN 9
  SAY @2719
  IF ~~ THEN EXTERN ~ABELA~ 2
END

IF ~~ THEN BEGIN 10
  SAY @2720
  IF ~~ THEN EXTERN ~ABELA~ 3
END

IF ~~ THEN BEGIN 11
  SAY @2721
  IF ~Global("HelpRamazith","GLOBAL",1)~ THEN REPLY @2722 GOTO 3
  IF ~~ THEN REPLY @2723 GOTO 12
  IF ~CheckStatLT(LastTalkedToBy,7,WIS)~ THEN REPLY @2724 GOTO 13
  IF ~CheckStatGT(LastTalkedToBy,6,WIS)~ THEN REPLY @2730 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @2725
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @2726
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @2727
  IF ~~ THEN EXTERN ~ABELA~ 4
END

IF ~~ THEN BEGIN 15
  SAY @2728
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 16
  SAY @6108
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~GlobalGT("HelpRamazith","GLOBAL",0)~ THEN BEGIN 17
  SAY @6109
  IF ~~ THEN EXIT
END
