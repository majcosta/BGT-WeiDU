ADD_STATE_TRIGGER ~bviconi~ 23 ~Global("ENDOFBG1","GLOBAL",2)~ 25 26 27 31 32 33 34 48 61 62 63 64 74 82 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 131 417 437 446 455 463 468 478 487 490 503 508


APPEND ~bviconi~

IF ~InteractingWith("Kivan")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,1)~ THEN BEGIN s0
  SAY @14500
  IF ~~ THEN EXTERN ~BKIVAN~ 0
END

IF ~~ THEN BEGIN s1
  SAY @14501
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s2
  SAY @14502
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s3
  SAY @14503
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s4
  SAY @14504
  IF ~~ THEN EXTERN ~BKIVAN~ 4
END

IF ~~ THEN BEGIN s5
  SAY @14587
  IF ~~ THEN EXTERN ~BKIVAN~ 3
END

IF ~~ THEN BEGIN s6
  SAY @14588
  IF ~~ THEN EXTERN ~BKIVAN~ 2
END

IF ~~ THEN BEGIN s7
  SAY @14589
  IF ~~ THEN EXTERN ~BKIVAN~ 8
END

IF ~InteractingWith("Kivan")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,2)
~ THEN BEGIN s8
  SAY @14591
  IF ~~ THEN EXTERN ~BKIVAN~ 1
END

IF ~InteractingWith("Kivan")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,3)
~ THEN BEGIN s9
  SAY @14592
  IF ~~ THEN EXTERN ~BKIVAN~ 9
END

IF ~InteractingWith("Kivan")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN s10
  SAY @14593
  IF ~~ THEN EXTERN ~BKIVAN~ 10
END

IF ~~ THEN BEGIN s11
  SAY @14597
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s12
  SAY @14598
  IF ~~ THEN EXTERN ~BKIVAN~ 11
END

END
