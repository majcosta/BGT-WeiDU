BEGIN ~noblbaz~

IF ~RandomNum(5,1)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 0
  SAY @9790
  IF ~~ THEN REPLY @9791 GOTO 1
  IF ~~ THEN REPLY @9792 GOTO 2
  IF ~~ THEN REPLY @9793 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @9794
  IF ~~ THEN JOURNAL @310479 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9795
  IF ~~ THEN JOURNAL @310480 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9796
  IF ~~ THEN JOURNAL @310373 EXIT
END

IF ~RandomNum(5,2)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 4
  SAY @9797
  IF ~~ THEN REPLY @9798 GOTO 5
  IF ~~ THEN REPLY @9799 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @9800
  IF ~~ THEN JOURNAL @310472 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9801
  IF ~~ THEN JOURNAL @310481 EXIT
END

IF ~RandomNum(5,3)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 7
  SAY @9802
  IF ~~ THEN REPLY @9803 GOTO 8
  IF ~~ THEN REPLY @9804 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @9805
  IF ~~ THEN JOURNAL @310482 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9806
  IF ~~ THEN JOURNAL @310373 EXIT
END

IF ~RandomNum(5,4)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 10
  SAY @9820
  IF ~~ THEN REPLY @9821 GOTO 11
  IF ~~ THEN REPLY @9824 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @9825
  IF ~~ THEN JOURNAL @310374 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9826
  IF ~~ THEN JOURNAL @310374 EXIT
END

IF ~RandomNum(5,5)
Global("ENDOFBG1","GLOBAL",0)~ THEN BEGIN 13
  SAY @9827
  IF ~~ THEN JOURNAL @310483 EXIT
END
