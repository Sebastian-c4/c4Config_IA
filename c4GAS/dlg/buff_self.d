
ALTER_TRANS c4AIcons
BEGIN 8 END
BEGIN ~%trans%~ END
BEGIN
"TRIGGER" ~~
END

EXTEND_TOP ~c4AIcons~ ~%state%~
  // ++ ~%spell_name%~ + set
  + ~HaveKnownSpellRES("%mother%")~ + ~%spell_name%~ + set
END


APPEND ~c4AIcons~

IF ~~ THEN BEGIN set
	SAY #-1
	+ ~!Global("c4AI_Buff_%spell%","Locals",%default%)~ + @41
		DO ~SetGlobal("c4AI_Buff_%spell%","Locals",%default%)~ FLAGS 512 + ~%state%~
	+ ~!Global("c4AI_Buff_%spell%","Locals", -1)~ + @42
		DO ~SetGlobal("c4AI_Buff_%spell%","Locals", -1)~ FLAGS 512 + ~%state%~
	++ @2 GOTO ~%state%~
END

END
