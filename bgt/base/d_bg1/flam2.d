BEGIN ~flam2~

IF ~NumTimesTalkedTo(0)
!Dead("Viconia")~ THEN BEGIN 0
  SAY @537
  IF ~~ THEN EXTERN ~BGVICONI~ 3
END

IF ~~ THEN BEGIN 1
  SAY @538
  IF ~~ THEN REPLY @545 GOTO 4
  IF ~~ THEN REPLY @546 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @539
  IF ~~ THEN REPLY @548 GOTO 4
  IF ~~ THEN REPLY @549 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @540
  IF ~~ THEN EXTERN ~BGVICONI~ 4
END

IF ~~ THEN BEGIN 4
  SAY @541
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @6932
  IF ~~ THEN JOURNAL @310771 EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @9010
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
