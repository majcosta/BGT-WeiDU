BEGIN ~volo~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @739
  IF ~~ THEN REPLY @5745 JOURNAL @310550 GOTO 2
  IF ~~ THEN REPLY @5746 UNSOLVED_JOURNAL @310551 GOTO 3
  IF ~~ THEN REPLY @5747 GOTO 6
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @740
  IF ~~ THEN REPLY @5762 UNSOLVED_JOURNAL @310551 GOTO 9
  IF ~~ THEN REPLY @5763 JOURNAL @310550 GOTO 8
  IF ~~ THEN REPLY @5765 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @741
  IF ~~ THEN REPLY @5752 GOTO 4
  IF ~~ THEN REPLY @5754 GOTO 6
  IF ~~ THEN REPLY @5755 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @742
  IF ~~ THEN REPLY @5756 GOTO 6
  IF ~~ THEN REPLY @5757 EXIT
  IF ~~ THEN REPLY @5760 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @743
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @744
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @745
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5759
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5766
  IF ~~ THEN REPLY @5773 GOTO 5
  IF ~~ THEN REPLY @5768 GOTO 6
  IF ~~ THEN REPLY @5774 GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @5767
  IF ~~ THEN REPLY @5769 GOTO 6
  IF ~~ THEN REPLY @5770 GOTO 7
  IF ~~ THEN REPLY @5771 GOTO 5
END

IF ~Dead("Mulahey")
Global("NashkellAdventures","GLOBAL",0)~ THEN BEGIN 10
  SAY @8534
  IF ~~ THEN DO ~SetGlobal("NashkellAdventures","GLOBAL",1)~ JOURNAL @310444 EXIT
END

IF ~Global("FREESLAV","GLOBAL",1)
Global("NashkellAdventures","GLOBAL",2)~ THEN BEGIN 11
  SAY @8535
  IF ~~ THEN DO ~SetGlobal("NashkellAdventures","GLOBAL",3)~ JOURNAL @310445 EXIT
END

IF ~Global("FREESLAV","GLOBAL",0)
Global("NashkellAdventures","GLOBAL",2)~ THEN BEGIN 12
  SAY @8536
  IF ~~ THEN DO ~SetGlobal("NashkellAdventures","GLOBAL",3)~ JOURNAL @310446 EXIT
END

IF ~Dead("Sarevok")
Global("VoloSarevok","GLOBAL",0)~ THEN BEGIN 13
  SAY @8537
  IF ~~ THEN DO ~SetGlobal("VoloSarevok","GLOBAL",1)~ JOURNAL @310447 EXIT
END

IF ~True()~ THEN BEGIN 14
  SAY @9877
  IF ~~ THEN EXIT
END
