BEGIN ~kaish~

IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21100
  IF ~~ THEN REPLY @21104 GOTO 3
  IF ~~ THEN REPLY @21105 GOTO 4
  IF ~~ THEN REPLY @21106 GOTO 5
END

IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @21101
  IF ~~ THEN REPLY @21107 GOTO 3
  IF ~~ THEN REPLY @21108 GOTO 4
  IF ~~ THEN REPLY @21109 GOTO 5
END

IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @21102
  IF ~~ THEN REPLY @21110 GOTO 3
  IF ~~ THEN REPLY @21111 GOTO 4
  IF ~~ THEN REPLY @21112 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @21113
  IF ~~ THEN REPLY @21121 GOTO 6
  IF ~~ THEN REPLY @21127 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @21115
  IF ~~ THEN REPLY @21123 GOTO 6
  IF ~~ THEN REPLY @21129 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @21118
  IF ~~ THEN REPLY @21124 GOTO 6
  IF ~~ THEN REPLY @21131 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @21140
  IF ~~ THEN REPLY @21146 GOTO 8
  IF ~~ THEN REPLY @21153 GOTO 9
  IF ~~ THEN REPLY @21157 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @21143
  IF ~~ THEN REPLY @21149 GOTO 8
  IF ~~ THEN REPLY @21154 GOTO 9
  IF ~~ THEN REPLY @21160 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @21352
  IF ~~ THEN REPLY @21358 GOTO 11
  IF ~~ THEN REPLY @21359 GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @21355
  IF ~~ THEN REPLY @21360 GOTO 11
  IF ~~ THEN REPLY @21362 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @21357
  IF ~~ THEN REPLY @21361 GOTO 11
  IF ~~ THEN REPLY @21363 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @21366
  IF ~~ THEN REPLY @21371 GOTO 12
  IF ~~ THEN REPLY @21374 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @21377
  IF ~~ THEN REPLY @21386 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @21380
  IF ~~ THEN REPLY @21385 GOTO 14
  IF ~~ THEN REPLY @21391 GOTO 18
  IF ~~ THEN REPLY @21392 GOTO 15
  IF ~~ THEN REPLY @21393 GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY @21394
  IF ~~ THEN REPLY @21414 GOTO 18
  IF ~~ THEN REPLY @21415 GOTO 17
  IF ~~ THEN REPLY @21418 GOTO 15
  IF ~~ THEN REPLY @21419 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @21395
  IF ~~ THEN REPLY @21424 GOTO 14
  IF ~~ THEN REPLY @21425 GOTO 18
  IF ~~ THEN REPLY @21427 GOTO 16
  IF ~~ THEN REPLY @21430 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @21397
  IF ~~ THEN REPLY @21439 GOTO 14
  IF ~~ THEN REPLY @21440 GOTO 18
  IF ~~ THEN REPLY @21441 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @21400
  IF ~~ THEN UNSOLVED_JOURNAL @310659 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @21402
  IF ~~ THEN DO ~SetGlobal("kaishas1","GLOBAL",1)~ UNSOLVED_JOURNAL @310660 EXIT
END

IF ~Global("kaishas1","GLOBAL",0)~ THEN BEGIN 19
  SAY @21443
  IF ~~ THEN REPLY @21444 GOTO 16
  IF ~~ THEN REPLY @21446 GOTO 18
  IF ~~ THEN REPLY @21447 GOTO 17
  IF ~~ THEN REPLY @21448 GOTO 17
END

IF ~Global("kaishas1","GLOBAL",1)~ THEN BEGIN 20
  SAY @21451
  IF ~Dead("GreaterWolf")~ THEN REPLY @21468 GOTO 25
  IF ~~ THEN REPLY @21469 GOTO 23
  IF ~Global("BGDraInfo","GLOBAL",1)~ THEN REPLY @21470 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @21498
  IF ~~ THEN REPLY @21499 GOTO 24
  IF ~~ THEN REPLY @21500 GOTO 22
  IF ~Dead("Karoug")~ THEN REPLY @21501 GOTO 25
  IF ~~ THEN REPLY @21502 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @21503
  IF ~~ THEN REPLY @21504 GOTO 25
  IF ~~ THEN REPLY @21506 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @21512
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @21514
  IF ~~ THEN REPLY @21517 GOTO 23
  IF ~Dead("Karoug")~ THEN REPLY @21519 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @21521
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @21525
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 27
  SAY @21527
  IF ~~ THEN REPLY @21530 DO ~TakePartyItem("misc1c")~ GOTO 28
  IF ~~ THEN REPLY @21533 GOTO 30
  IF ~~ THEN REPLY @21536 EXTERN ~TAILAS~ 0
END

IF ~~ THEN BEGIN 28
  SAY @21546
  IF ~~ THEN REPLY @21548 GOTO 29
  IF ~~ THEN REPLY @21550 EXTERN ~TAILAS~ 0
  IF ~~ THEN REPLY @21552 GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @21553
  IF ~~ THEN DO ~TakePartyItem("MISC1C")
SetGlobal("infected","GLOBAL",1)
SetGlobalTimer("PlayerInfected","GLOBAL",158400)
SetGlobalTimer("PlayerInfected2","GLOBAL",TWO_DAYS)
EscapeArea()~ UNSOLVED_JOURNAL @310670 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @21554
  IF ~~ THEN EXTERN ~TAILAS~ 0
END

IF ~~ THEN BEGIN 31
  SAY @21556
  IF ~~ THEN EXTERN ~TAILAS~ 1
END

IF ~~ THEN BEGIN 32
  SAY @21558
  IF ~~ THEN EXTERN ~TAILAS~ 2
END

IF ~~ THEN BEGIN 33
  SAY @21559
  IF ~~ THEN DO ~TakePartyItem("MISC1C")
SetGlobal("infected","GLOBAL",1)
SetGlobalTimer("PlayerInfected","GLOBAL",158400)
SetGlobalTimer("PlayerInfected2","GLOBAL",TWO_DAYS)
EscapeArea()~ UNSOLVED_JOURNAL @310671 EXIT
END

IF ~Global("infected","GLOBAL",1)~ THEN BEGIN 34
  SAY @21586
  IF ~~ THEN REPLY @21587 GOTO 35
  IF ~~ THEN REPLY @21588 GOTO 36
  IF ~~ THEN REPLY @21589 GOTO 37
END

IF ~~ THEN BEGIN 35
  SAY @21590
  IF ~~ THEN DO ~EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)
Enemy()~ SOLVED_JOURNAL @310672 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @21591
  IF ~~ THEN DO ~EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)
Enemy()~ SOLVED_JOURNAL @310673 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @21593
  IF ~~ THEN DO ~EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)
Enemy()~ SOLVED_JOURNAL @310674 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @24113
  IF ~~ THEN GOTO 27
END
