BEGIN ~ftowbez~

IF ~RandomNum(6,1)~ THEN BEGIN 0
  SAY @17751
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN 1
  SAY @17753
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN 2
  SAY @17842
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN 3
  SAY @17844
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN 4
  SAY @17843
  IF ~~ THEN REPLY @17846 GOTO 5
  IF ~~ THEN REPLY @17847 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @17848
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @17850
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN 7
  SAY @17851
  IF ~~ THEN EXIT
END
