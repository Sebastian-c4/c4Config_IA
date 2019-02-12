@echo off

weidu.exe --update-all

cls

weidu.exe c4Config_IA/c4Config_IA.TP2 --force-install 2

start https://github.com/Sebastian-c4/mods_collection/blob/master/BG2EE_IA_c4Customize_Update.md

REM del "%~f0"