BEGIN ~riggilo~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23048
  IF ~~ THEN REPLY @23050 GOTO 1
  IF ~~ THEN REPLY @23051 GOTO 2
  IF ~~ THEN REPLY @23052 GOTO 3
  IF ~~ THEN REPLY @23053 GOTO 4
  IF ~~ THEN REPLY @23054 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @23061
  IF ~~ THEN REPLY @23070 GOTO 4
  IF ~~ THEN REPLY @23071 GOTO 7
  IF ~~ THEN REPLY @23073 GOTO 2
  IF ~~ THEN REPLY @23076 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @23077
  IF ~~ THEN REPLY @23078 GOTO 6
  IF ~~ THEN REPLY @23081 GOTO 3
  IF ~~ THEN REPLY @23082 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @23094
  IF ~~ THEN REPLY @23157 GOTO 6
  IF ~~ THEN REPLY @23159 GOTO 5
  IF ~~ THEN REPLY @23160 GOTO 9
  IF ~~ THEN REPLY @23161 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @23136
  IF ~~ THEN REPLY @23137 GOTO 5
  IF ~~ THEN REPLY @23138 GOTO 3
  IF ~~ THEN REPLY @23139 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @23140
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23143
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @23148
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @23162
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @23163
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 10
  SAY @23164
  IF ~~ THEN REPLY @23180 GOTO 9
  IF ~~ THEN REPLY @23183 GOTO 11
  IF ~PartyGoldGT(49)~ THEN REPLY @23186 GOTO 12
  IF ~PartyGoldGT(299)~ THEN REPLY @23189 DO ~TakePartyGold(300)~ GOTO 13
  IF ~PartyHasItem("misc2o")~ THEN REPLY @23190 GOTO 14
  IF ~PartyHasItem("misc2o")~ THEN REPLY @23191 GOTO 15
END

IF ~~ THEN BEGIN 11
  SAY @23178
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @23192
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @23193
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @23194
  IF ~~ THEN REPLY @23195 GOTO 16
  IF ~~ THEN REPLY @23196 GOTO 18
  IF ~~ THEN REPLY @23197 GOTO 15
  IF ~~ THEN REPLY @23198 GOTO 9
  IF ~~ THEN REPLY @23199 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @23200
  IF ~~ THEN DO ~GiveItem("POTN06",LastTalkedToBy)
TakePartyItem("Misc2o")
SetGlobal("ScrewedRiggilo","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @23201
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @23202
  IF ~~ THEN DO ~SetGlobal("HateOn","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @23203
  IF ~~ THEN DO ~SetGlobal("ScrewedRiggilo","GLOBAL",1)
TakePartyItem("Misc2o")~ EXIT
END

IF WEIGHT #2 ~Global("ScrewedRiggilo","GLOBAL",1)
!Global("FreedTheBitch","GLOBAL",1)~ THEN BEGIN 19
  SAY @23204
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("HateOn","GLOBAL",1)~ THEN BEGIN 20
  SAY @23205
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #3 ~Global("FreedTheBitch","GLOBAL",1)~ THEN BEGIN 21
  SAY @23206
  IF ~~ THEN DO ~Enemy()~ EXIT
END
