BEGIN ~thiefg~

IF ~Global("Password","GLOBAL",0)~ THEN BEGIN 0
  SAY @752
  IF ~~ THEN REPLY @756 GOTO 1
  IF ~~ THEN REPLY @758 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @2433
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2434
  IF ~~ THEN REPLY @16655 GOTO 3
  IF ~~ THEN REPLY @16656 GOTO 3
  IF ~~ THEN REPLY @16657 GOTO 3
  IF ~~ THEN REPLY @16658 GOTO 4
  IF ~~ THEN REPLY @16659 GOTO 3
  IF ~~ THEN REPLY @16660 GOTO 3
  IF ~~ THEN REPLY @16661 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @2776
  IF ~~ THEN DO ~SetGlobal("BG_AttackedThieves","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2777
  IF ~~ THEN DO ~SetGlobal("Password","GLOBAL",1)~ EXIT
END
