BEGIN ~flam4~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4667
  IF ~~ THEN REPLY @4668 GOTO 1
  IF ~~ THEN REPLY @4669 GOTO 2
  IF ~~ THEN REPLY @4670 GOTO 3
  IF ~~ THEN REPLY @4671 GOTO 4
  IF ~~ THEN REPLY @4672 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @4673
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4674
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4675
  IF ~PartyHasItem("MISC13")~ THEN UNSOLVED_JOURNAL @310155 GOTO 13
  IF ~!PartyHasItem("MISC13")~ THEN GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @4676
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4677
  IF ~~ THEN REPLY @4678 GOTO 6
  IF ~~ THEN REPLY @4679 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @4680
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4681
  IF ~~ THEN UNSOLVED_JOURNAL @310155 EXIT
END

IF WEIGHT #3 ~!PartyHasItem("MISC13")~ THEN BEGIN 8
  SAY @5157
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~PartyHasItem("MISC13")~ THEN BEGIN 9
  SAY @5160
  IF ~~ THEN REPLY @5168 GOTO 10
  IF ~~ THEN REPLY @5171 GOTO 10
  IF ~~ THEN REPLY @5175 GOTO 11
  IF ~~ THEN REPLY @5179 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @5183
  IF ~~ THEN REPLY @5196 GOTO 12
  IF ~~ THEN REPLY @5199 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @5185
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @5191
  IF ~~ THEN DO ~TakePartyItem("MISC13")
GivePartyGold(50)
EraseJournalEntry(@310155)
EraseJournalEntry(@310156)~ SOLVED_JOURNAL @310157 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @5251
  IF ~~ THEN REPLY @5254 GOTO 11
  IF ~~ THEN REPLY @5257 GOTO 10
  IF ~~ THEN REPLY @5259 GOTO 11
  IF ~~ THEN REPLY @5261 GOTO 12
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 14
  SAY @6935
  IF ~~ THEN JOURNAL @310351 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9011
  IF ~~ THEN EXIT
END
