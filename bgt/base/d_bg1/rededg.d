BEGIN ~rededg~

IF WEIGHT #2 ~Global("TalkedToThief","GLOBAL",1)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3068
  IF ~~ THEN REPLY @3069 GOTO 1
  IF ~~ THEN REPLY @3070 GOTO 2
  IF ~~ THEN REPLY @3071 GOTO 3
  IF ~~ THEN REPLY @3072 GOTO 4
  IF ~~ THEN REPLY @3080 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @3073
  IF ~~ THEN REPLY @3081 UNSOLVED_JOURNAL @310521 GOTO 1
  IF ~~ THEN REPLY @3084 GOTO 2
  IF ~~ THEN REPLY @3087 GOTO 3
  IF ~~ THEN REPLY @3092 GOTO 4
  IF ~~ THEN REPLY @3093 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @3074
  IF ~~ THEN REPLY @3082 GOTO 1
  IF ~~ THEN REPLY @3085 GOTO 2
  IF ~~ THEN REPLY @3088 GOTO 3
  IF ~~ THEN REPLY @3091 GOTO 4
  IF ~~ THEN REPLY @3094 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @3075
  IF ~~ THEN REPLY @3083 UNSOLVED_JOURNAL @310521 GOTO 1
  IF ~~ THEN REPLY @3086 GOTO 2
  IF ~~ THEN REPLY @3089 GOTO 3
  IF ~~ THEN REPLY @3090 GOTO 4
  IF ~~ THEN REPLY @3095 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @3076
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @3077
  IF ~~ THEN REPLY @3102 GOTO 6
  IF ~~ THEN REPLY @3103 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @3078
  IF ~~ THEN DO ~SetGlobal("RededgeMove","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @3096
  IF ~~ THEN REPLY @3097 GOTO 1
  IF ~~ THEN REPLY @3098 GOTO 2
  IF ~~ THEN REPLY @3099 GOTO 3
  IF ~~ THEN REPLY @3100 GOTO 4
  IF ~~ THEN REPLY @3101 GOTO 5
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 8
  SAY @6378
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 9
  SAY @6379
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9093
  IF ~~ THEN EXIT
END
