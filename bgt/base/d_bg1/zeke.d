BEGIN ~zeke~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @10692
  IF ~~ THEN REPLY @10694 GOTO 1
  IF ~PartyGoldGT(499)~ THEN REPLY @10695 GOTO 2
  IF ~~ THEN REPLY @10696 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @10702
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10703
  IF ~~ THEN DO ~GiveItem("SCRLPET",LastTalkedToBy)
TakePartyGold(500)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10704
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~InParty("BRANWEN")~ THEN BEGIN 4
  SAY @20680
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
