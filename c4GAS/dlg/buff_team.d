
ALTER_TRANS c4AIcons
BEGIN 9 END
BEGIN ~%trans%~ END
BEGIN
"TRIGGER" ~~
END

EXTEND_TOP ~c4AIcons~ ~%state%~
  // ++ ~%spell_name%~ FLAGS 512 + set
  + ~HaveKnownSpellRES("%mother%")~ + ~%spell_name%~ FLAGS 512 + set
END

APPEND ~c4AIcons~

IF ~~ THEN BEGIN set
	SAY #-1
	++ @621 + set1
	+ ~NumInPartyGT(1)~ + @622 + set2
	+ ~NumInPartyGT(2)~ + @623 + set3
	+ ~NumInPartyGT(3)~ + @624 + set4
	+ ~NumInPartyGT(4)~ + @625 + set5
	+ ~NumInPartyGT(5)~ + @626 + set6
	++ @620 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",-1)
							SetGlobal("c4AI_Buff_%spell%_N2","Locals",-1)
							SetGlobal("c4AI_Buff_%spell%_N3","Locals",-1)
							SetGlobal("c4AI_Buff_%spell%_N4","Locals",-1)
							SetGlobal("c4AI_Buff_%spell%_N5","Locals",-1)
							SetGlobal("c4AI_Buff_%spell%_N6","Locals",-1)~ FLAGS 512 + set
	++ @2 + ~%state%~
END
									
IF ~~ THEN BEGIN set1
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N1","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END

IF ~~ THEN BEGIN set2
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N2","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END

IF ~~ THEN BEGIN set3
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N3","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END

IF ~~ THEN BEGIN set4
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N4","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END

IF ~~ THEN BEGIN set5
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N5","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END

IF ~~ THEN BEGIN set6
	SAY #-1
	++ @611 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",1)~ FLAGS 512 + set
	+ ~NumInPartyGT(1)~ + @612 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",2)~ FLAGS 512 + set
	+ ~NumInPartyGT(2)~ + @613 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",3)~ FLAGS 512 + set
	+ ~NumInPartyGT(3)~ + @614 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",4)~ FLAGS 512 + set
	+ ~NumInPartyGT(4)~ + @615 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",5)~ FLAGS 512 + set
	+ ~NumInPartyGT(5)~ + @616 DO ~SetGlobal("c4AI_Buff_%spell%_N6","Locals",6)~ FLAGS 512 + set
	++ @2 + set
	END
END
