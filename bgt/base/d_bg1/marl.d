BEGIN ~marl~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
!Dead("Dunkin")~ THEN BEGIN 0
  SAY @2375
  IF ~~ THEN DO ~StartTimer(1,10)~ EXTERN ~DUNKIN~ 0
END

IF WEIGHT #2 ~NumTimesTalkedTo(1)
!Dead("Dunkin")~ THEN BEGIN 1
  SAY @2376
  IF ~~ THEN REPLY @2397 GOTO 4
  IF ~~ THEN REPLY @2398 GOTO 3
  IF ~~ THEN REPLY @2399 GOTO 5
  IF ~~ THEN REPLY @2400 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2377
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2378
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2379
  IF ~~ THEN REPLY @2405 GOTO 6
  IF ~~ THEN REPLY @2406 GOTO 14
  IF ~~ THEN REPLY @2407 GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @2381
  IF ~~ THEN REPLY @2401 GOTO 6
  IF ~~ THEN REPLY @2402 GOTO 14
  IF ~~ THEN REPLY @2403 GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @2382
  IF ~~ THEN REPLY @2408 GOTO 8
  IF ~~ THEN REPLY @2409 GOTO 7
  IF ~~ THEN REPLY @2410 GOTO 9
  IF ~~ THEN REPLY @2411 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @2383
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2384
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2385
  IF ~~ THEN REPLY @2412 GOTO 7
  IF ~~ THEN REPLY @2413 GOTO 8
  IF ~~ THEN REPLY @2414 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @2386
  IF ~~ THEN EXTERN ~DUNKIN~ 1
END

IF ~~ THEN BEGIN 11
  SAY @2387
  IF ~~ THEN EXTERN ~DUNKIN~ 2
END

IF ~~ THEN BEGIN 12
  SAY @2388
  IF ~~ THEN REPLY @2415 GOTO 13
  IF ~~ THEN REPLY @2416 GOTO 3
  IF ~~ THEN REPLY @2417 GOTO 8
END

IF ~~ THEN BEGIN 13
  SAY @2389
  IF ~~ THEN DO ~ChangeClass(Myself,INNOCENT)
AddexperienceParty(900)~ JOURNAL @310436 EXTERN ~DUNKIN~ 4
END

IF ~~ THEN BEGIN 14
  SAY @2404
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @2420
  IF ~~ THEN EXTERN ~DUNKIN~ 6
END

IF ~~ THEN BEGIN 16
  SAY @2428
  IF ~~ THEN EXTERN ~DUNKIN~ 7
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 17
  SAY @5793
  IF ~~ THEN JOURNAL @310792 EXIT
END

IF WEIGHT #3 ~!Dead("Dunkin")~ THEN BEGIN 18
  SAY @5794
  IF ~~ THEN EXTERN ~DUNKIN~ 5
END

IF ~False()~ THEN BEGIN 19
  SAY @8938
  IF ~~ THEN EXIT
END