BEGIN ~wiven~

IF ~True()~ THEN BEGIN 0
  SAY @18880
  IF ~~ THEN REPLY @18881 GOTO 5
  IF ~~ THEN REPLY @18882 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18883
  IF ~~ THEN REPLY @18884 GOTO 3
  IF ~~ THEN REPLY @18886 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @18887
  IF ~~ THEN DO ~TakePartyGold(200000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18888
  IF ~~ THEN REPLY @18890 GOTO 5
  IF ~~ THEN REPLY @18891 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @18892
  IF ~~ THEN DO ~TakePartyGold(200000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18894
  IF ~~ THEN REPLY @18895 GOTO 6
  IF ~~ THEN REPLY @18896 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @18897
  IF ~~ THEN DO ~CreateCreature("DIRK",[307.580],0)
CreateCreature("MEAKIN",[737.402],0)
CreateCreature("SATH",[437.364],0)
Enemy()~ EXIT
END
