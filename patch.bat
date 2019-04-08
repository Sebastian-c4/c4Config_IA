@echo off

weidu.exe --update-all

cls

weidu.exe CDTWEAKS/SETUP-CDTWEAKS.TP2 --force-install 4140 --language 9

weidu.exe c4Config_IA/c4Config_IA.TP2 --force-install-list 1

start https://github.com/Sebastian-c4/mods_collection/blob/master/BG2EE_IA_c4Customize.md

REM del "%~f0"