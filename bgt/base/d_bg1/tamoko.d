BEGIN ~tamoko~

IF ~Global("TamokoMove","GLOBAL",0)~ THEN BEGIN 0
  SAY @11064
  IF ~~ THEN REPLY @11066 GOTO 1
  IF ~~ THEN REPLY @11072 GOTO 3
  IF ~~ THEN REPLY @11073 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @11067
  IF ~~ THEN REPLY @11068 GOTO 4
  IF ~~ THEN REPLY @11069 GOTO 5
  IF ~~ THEN REPLY @11071 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @11074
  IF ~~ THEN REPLY @11080 GOTO 1
  IF ~~ THEN REPLY @11087 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @11088
  IF ~~ THEN REPLY @11136 GOTO 5
  IF ~~ THEN REPLY @11137 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11100
  IF ~~ THEN REPLY @11665 GOTO 7
  IF ~~ THEN REPLY @11666 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @11135
  IF ~~ THEN REPLY @11138 GOTO 7
  IF ~~ THEN REPLY @11139 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @11140
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310206 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11141
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310206 EXIT
END

IF ~Global("TamokoMove","GLOBAL",1)~ THEN BEGIN 8
  SAY @11142
  IF ~Global("RescuedEltan","GLOBAL",1)~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",3)~ GOTO 9
  IF ~Global("RescuedEltan","GLOBAL",0)~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",3)~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @1662
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1680
  IF ~~ THEN REPLY @11060 GOTO 12
  IF ~~ THEN REPLY @11061 GOTO 13
  IF ~~ THEN REPLY @11062 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @11143
  IF ~~ THEN REPLY @11172 GOTO 12
  IF ~~ THEN REPLY @11173 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @11157
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",2)
EscapeArea()~ UNSOLVED_JOURNAL @310207 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1683
  IF ~~ THEN REPLY @11170 GOTO 12
  IF ~~ THEN REPLY @11171 GOTO 11
END

IF ~~ THEN BEGIN 14
  SAY @11184
  IF ~~ THEN REPLY @11174 GOTO 12
  IF ~~ THEN REPLY @11185 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @11187
  IF ~~ THEN REPLY @11189 GOTO 12
  IF ~~ THEN REPLY @11190 GOTO 16
  IF ~~ THEN REPLY @11191 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @11192
  IF ~~ THEN REPLY @11193 GOTO 12
  IF ~~ THEN REPLY @11194 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @11195
  IF ~~ THEN REPLY @11199 GOTO 18
  IF ~~ THEN REPLY @11200 GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @11196
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",2)
EscapeArea()~ JOURNAL @310208 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @11202
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",2)
EscapeArea()~ JOURNAL @310208 EXIT
END

IF ~Global("TamokoMove","GLOBAL",2)~ THEN BEGIN 20
  SAY @11203
  IF ~~ THEN REPLY @11204 GOTO 22
  IF ~~ THEN REPLY @11205 GOTO 21
  IF ~~ THEN REPLY @11206 GOTO 23
END

IF ~~ THEN BEGIN 21
  SAY @11207
  IF ~~ THEN DO ~Enemy()~ UNSOLVED_JOURNAL @310209 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @11211
  IF ~~ THEN REPLY @11212 GOTO 21
  IF ~~ THEN REPLY @11213 GOTO 21
  IF ~~ THEN REPLY @11214 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @11215
  IF ~~ THEN REPLY @11216 GOTO 21
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @11217 GOTO 25
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @11218 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @11219
  IF ~~ THEN DO ~Enemy()~ UNSOLVED_JOURNAL @310210 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @11220
  IF ~~ THEN DO ~SetGlobal("TamokoMove","GLOBAL",4)
EscapeArea()~ UNSOLVED_JOURNAL @311210 EXIT
END
