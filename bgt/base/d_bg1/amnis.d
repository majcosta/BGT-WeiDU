BEGIN ~amnis~

IF WEIGHT #3 ~RandomNum(12,1)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 0
  SAY @342
  IF ~~ THEN UNSOLVED_JOURNAL @310302 EXIT
END

IF WEIGHT #4 ~RandomNum(12,2)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 1
  SAY @343
  IF ~~ THEN UNSOLVED_JOURNAL @310303 EXIT
END

IF WEIGHT #5 ~RandomNum(12,3)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 2
  SAY @344
  IF ~~ THEN UNSOLVED_JOURNAL @310304 EXIT
END

IF WEIGHT #6 ~RandomNum(12,4)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 3
  SAY @345
  IF ~~ THEN UNSOLVED_JOURNAL @310305 EXIT
END

IF WEIGHT #0 ~RandomNum(12,5)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 4
  SAY @346
  IF ~~ THEN UNSOLVED_JOURNAL @310306 EXIT
END

IF WEIGHT #7 ~RandomNum(12,6)~ THEN BEGIN 5
  SAY @347
  IF ~~ THEN JOURNAL @310750 EXIT
END

IF WEIGHT #8 ~RandomNum(12,7)
GlobalLT("Chapter","GLOBAL",7)~ THEN BEGIN 6
  SAY @348
  IF ~~ THEN JOURNAL @310352 EXIT
END

IF WEIGHT #9 ~RandomNum(12,8)
GlobalLT("Chapter","GLOBAL",4)~ THEN BEGIN 7
  SAY @349
  IF ~~ THEN UNSOLVED_JOURNAL @310307 EXIT
END

IF WEIGHT #10 ~RandomNum(12,9)~ THEN BEGIN 8
  SAY @350
  IF ~~ THEN JOURNAL @310751 EXIT
END

IF WEIGHT #11 ~RandomNum(12,10)~ THEN BEGIN 9
  SAY @351
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~True()~ THEN BEGIN 10
  SAY @352
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~RandomNum(12,12)
!Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN 11
  SAY @353
  IF ~~ THEN UNSOLVED_JOURNAL @310308 EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 12
  SAY @5750
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @8907
  IF ~~ THEN EXIT
END