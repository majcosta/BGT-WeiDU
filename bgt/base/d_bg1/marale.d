BEGIN ~marale~

IF WEIGHT #2 ~Global("Kaishas1","GLOBAL",0)~ THEN BEGIN 0
  SAY @21594
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("MaraQuest","GLOBAL",0)
Global("Kaishas1","GLOBAL",1)
Global("MaraTalk","GLOBAL",0)~ THEN BEGIN 1
  SAY @21595
  IF ~~ THEN REPLY @21596 DO ~SetGlobal("MaraTalk","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @21597 DO ~SetGlobal("MaraTalk","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @21598 DO ~SetGlobal("MaraTalk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @21599
  IF ~~ THEN REPLY @21600 GOTO 6
  IF ~~ THEN REPLY @21601 GOTO 3
  IF ~~ THEN REPLY @21602 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @21603
  IF ~~ THEN SOLVED_JOURNAL @310691 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21604
  IF ~~ THEN SOLVED_JOURNAL @310691 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21605
  IF ~~ THEN REPLY @21607 GOTO 6
  IF ~~ THEN REPLY @21608 GOTO 3
END

IF WEIGHT #4 ~Global("MaraTalk","GLOBAL",1)
Global("MaraQuest","GLOBAL",0)
Global("Kaishas1","GLOBAL",1)~ THEN BEGIN 6
  SAY @21606
  IF ~~ THEN REPLY @21609 GOTO 7
  IF ~~ THEN REPLY @21610 GOTO 3
  IF ~~ THEN REPLY @21611 GOTO 5
END

IF ~~ THEN BEGIN 7
  SAY @21612
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @21613
  IF ~~ THEN REPLY @21614 UNSOLVED_JOURNAL @310692 GOTO 9
  IF ~~ THEN REPLY @21615 UNSOLVED_JOURNAL @310692 GOTO 10
  IF ~~ THEN REPLY @21616 GOTO 4
END

IF ~~ THEN BEGIN 9
  SAY @21617
  IF ~~ THEN DO ~SetGlobal("MaraQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21618
  IF ~~ THEN REPLY @21619 GOTO 9
  IF ~~ THEN REPLY @21620 GOTO 4
END

IF WEIGHT #5 ~Global("MaraQuest","GLOBAL",1)
Global("Kaishas1","GLOBAL",1)
Global("MaraTalk","GLOBAL",1)~ THEN BEGIN 11
  SAY @21621
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~PartyHasItem("misc96")~ THEN BEGIN 12
  SAY @21622
  IF ~~ THEN DO ~TakePartyItem("misc96")
SetGlobal("MaraDone","GLOBAL",1)
AddexperienceParty(4000)
EraseJournalEntry(@310691)
EraseJournalEntry(@310692)
EscapeArea()~ SOLVED_JOURNAL @310693 EXIT
END

IF WEIGHT #0 ~Global("MaraDone","GLOBAL",1)~ THEN BEGIN 13
  SAY @21623
  IF ~~ THEN EXIT
END
