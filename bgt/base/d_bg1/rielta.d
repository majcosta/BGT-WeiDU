BEGIN ~rielta~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1653
  IF ~~ THEN DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1654
  IF ~~ THEN REPLY @16818 GOTO 8
  IF ~~ THEN REPLY @16819 GOTO 5
  IF ~~ THEN REPLY @16820 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1655
  IF ~~ THEN EXTERN ~BRUNO~ 1
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @6071
  IF ~~ THEN UNSOLVED_JOURNAL @310137 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9094
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16821
  IF ~~ THEN REPLY @20470 GOTO 2
  IF ~Global("KillReiltar","GLOBAL",1)~ THEN REPLY @20471 GOTO 6
  IF ~~ THEN REPLY @20466 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @20473
  IF ~~ THEN REPLY @20478 GOTO 2
  IF ~~ THEN REPLY @20479 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @20474
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @20475
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @20477
  IF ~~ THEN EXIT
END
