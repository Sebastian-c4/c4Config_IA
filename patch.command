command_path=${0%/*}
cd "$command_path"
./weidu CDTWEAKS/SETUP-CDTWEAKS.TP2 --force-install 4140 --language 9
./weidu c4Config_IA/c4Config_IA.TP2 --force-install-list 1 2
