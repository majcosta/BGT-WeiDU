BEGIN ~watch9~

IF ~RandomNum(6,1)~ THEN BEGIN 0
  SAY @20494
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN 1
  SAY @20495
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN 2
  SAY @20496
  IF ~~ THEN REPLY @20497 GOTO 3
  IF ~~ THEN REPLY @20498 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @20499
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @20500
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN 5
  SAY @20501
  IF ~~ THEN REPLY @20502 GOTO 6
  IF ~~ THEN REPLY @20503 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @20504
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @20505
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN 8
  SAY @20506
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN 9
  SAY @20507
  IF ~~ THEN EXIT
END
