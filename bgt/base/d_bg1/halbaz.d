BEGIN ~halbaz~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @17387
  IF ~~ THEN REPLY @17516 DO ~StartStore("Sto0703",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @17388 EXIT
END

IF WEIGHT #0 ~PartyHasItem("MISC51")~ THEN BEGIN 1
  SAY @10491
  IF ~~ THEN REPLY @10492 DO ~GiveGoldForce(500)
TakePartyItem("MISC51")~ EXIT
  IF ~~ THEN REPLY @10494 GOTO 3
  IF ~~ THEN REPLY @10495 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @10496
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10497
  IF ~~ THEN REPLY @10498 GOTO 7
  IF ~~ THEN REPLY @10499 GOTO 2
  IF ~PartyGoldGT(99)~ THEN REPLY @10500 DO ~TakePartyGold(100)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10501
  IF ~~ THEN DO ~TakePartyItem("MISC51")
GiveItem("CLCK07",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10502
  IF ~~ THEN DO ~GiveItem("CLCK07",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10503
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10504
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10505
  IF ~~ THEN REPLY @10506 GOTO 7
  IF ~~ THEN REPLY @10507 GOTO 2
  IF ~~ THEN REPLY @10508 GOTO 4
END

IF ~~ THEN BEGIN 9
  SAY @10509
  IF ~~ THEN REPLY @10510 GOTO 4
  IF ~~ THEN REPLY @10511 GOTO 7
  IF ~~ THEN REPLY @10513 GOTO 2
END
