
BEGIN ~c4AIcons~

IF ~True()~ THEN BEGIN 0 
  SAY @5
  IF ~~ THEN 
		DO ~
			ChangeAIScript("c4AIbase",CLASS)
			SetGlobal("c4AI_Buff_Start","Locals",0)
		~ FLAGS 512 GOTO MainMenu
END

IF ~~ THEN BEGIN MainMenu
  SAY @1
  ++ @2 EXIT
  ++ @10 GOTO BattleAI
  ++ @20 GOTO AutoPause
  + ~!Global("c4AI_ActivateBuff","Locals",0)~ + @30
		DO ~
			SetGlobal("c4AI_ActivateBuff","Locals",0)
			SetGlobal("c4AI_Buff_Start","Locals",0)
			ChangeAIScript("c4AIbase",CLASS)
		~ FLAGS 512 GOTO BuffSwitchDone
  + ~!Global("c4AI_ActivateBuff","Locals",1)~ + @31
		DO ~
			SetGlobal("c4AI_ActivateBuff","Locals",1)
			SetGlobal("c4AI_Buff_Start","Locals",0)
			ChangeAIScript("c4AIbase",CLASS)
		~ FLAGS 512 GOTO BuffSwitchDone
  + ~!Global("c4AI_ActivateBuff","Locals",0)~ + @40 GOTO BuffSetting
END

IF ~~ THEN BEGIN BattleAI
  SAY @100
  ++ @3 GOTO MainMenu
  ++ @101	DO ~SetGlobal("c4AI_Attack_Action", "Locals", 0)~ FLAGS 512 GOTO BattleAIDone
  ++ @102	DO ~SetGlobal("c4AI_Attack_Action", "Locals", 1)~ FLAGS 512 GOTO BattleAIDone
  ++ @103	DO ~SetGlobal("c4AI_Attack_Action", "Locals", -1)~ FLAGS 512 GOTO BattleAIDone
  ++ @104	DO ~SetGlobal("c4AI_Attack_When_Invisible", "Locals", 0)~ FLAGS 512 GOTO BattleAIDone
  ++ @105	DO ~SetGlobal("c4AI_Attack_When_Invisible", "Locals", 1)~ FLAGS 512 GOTO BattleAIDone
  ++ @106	DO ~SetGlobal("c4AI_Attack_When_Modal", "Locals", 0)~ FLAGS 512 GOTO BattleAIDone
  ++ @107	DO ~SetGlobal("c4AI_Attack_When_Modal", "Locals", 1)~ FLAGS 512 GOTO BattleAIDone
  + ~Class(Myself, BARD)~ + @108
		DO ~SetGlobal("c4AI_Stop_Auto_BattleSong", "Locals", 0)~ FLAGS 512 GOTO BattleAIDone
  + ~Class(Myself, BARD)~ + @109
		DO ~SetGlobal("c4AI_Stop_Auto_BattleSong", "Locals", 1)~ FLAGS 512 GOTO BattleAIDone
  + ~OR(2) Class(Myself, THIEF_ALL) Kit(Myself, STALKER)~ + @110
		DO ~SetGlobal("c4AI_Stop_Auto_Hide", "Locals", 0)~ FLAGS 512 GOTO BattleAIDone
  + ~OR(2) Class(Myself, THIEF_ALL) Kit(Myself, STALKER)~ + @111
		DO ~SetGlobal("c4AI_Stop_Auto_Hide", "Locals", 1)~ FLAGS 512 GOTO BattleAIDone
END

IF ~~ THEN BEGIN BattleAIDone
  SAY @4
  IF ~~ THEN GOTO BattleAI
END

IF ~~ THEN BEGIN AutoPause
  SAY @201
  ++ @3 GOTO MainMenu
  + ~!Global("c4AI_AutoPause_Skins","Global",1)~ + @202
		DO ~SetGlobal("c4AI_AutoPause_Skins","Global",1)~ FLAGS 512 GOTO AutoPauseDone
  + ~!Global("c4AI_AutoPause_Skins","Global",0)~ + @203
		DO ~SetGlobal("c4AI_AutoPause_Skins","Global",0)~ FLAGS 512 GOTO AutoPauseDone
  + ~!Global("c4AI_AutoPause_Weapons","Global",1)~ + @204
		DO ~SetGlobal("c4AI_AutoPause_Weapons","Global",1)~ FLAGS 512 GOTO AutoPauseDone
  + ~!Global("c4AI_AutoPause_Weapons","Global",0)~ + @205
		DO ~SetGlobal("c4AI_AutoPause_Weapons","Global",0)~ FLAGS 512 GOTO AutoPauseDone
END

IF ~~ THEN BEGIN AutoPauseDone
  SAY @4
  IF ~~ THEN GOTO AutoPause
END

IF ~~ THEN BEGIN BuffSwitchDone
  SAY @4
  IF ~~ THEN GOTO MainMenu
END

IF ~~ THEN BEGIN BuffSetting
  SAY #-1
  ++ @3 GOTO MainMenu 
  ++ @501 GOTO Buff_Self
  ++ @601 GOTO Buff_Team
END

IF ~~ THEN BEGIN Buff_Self
  SAY @500
  ++ @3 GOTO MainMenu
  ++ @601 GOTO Buff_Team
  + ~False()~ + @411 GOTO Arcane_Self
  + ~False()~ + @412 GOTO Divine_Self
  + ~False()~ + @413 GOTO Innate_Self
  + ~False()~ + @414 GOTO Delay_Self
  + ~False()~ + @415 GOTO ResistArcane_Self
  + ~False()~ + @416 GOTO ResistDivine_Self
END

IF ~~ THEN BEGIN Buff_Team
  SAY @600
  ++ @3 GOTO MainMenu
  ++ @501 GOTO Buff_Self
  + ~False()~ + @411 GOTO Arcane_Team
  + ~False()~ + @412 GOTO Divine_Team
  + ~False()~ + @413 GOTO Innate_Team
  + ~False()~ + @414 GOTO Delay_Team
  + ~False()~ + @415 GOTO ResistArcane_Team
  + ~False()~ + @416 GOTO ResistDivine_Team
END

IF ~~ THEN BEGIN Arcane_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Divine_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Innate_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Delay_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN ResistArcane_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN ResistDivine_Self
  SAY #-1
  ++ @502 GOTO Buff_Self
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Arcane_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Divine_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Innate_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN Delay_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN ResistArcane_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END

IF ~~ THEN BEGIN ResistDivine_Team
  SAY #-1
  ++ @602 GOTO Buff_Team
  ++ @3 GOTO MainMenu
END
