#!/bin/bash

./build_champsim.sh bimodal next_line next_line next_line srrip 8
./run_8core.sh bimodal-next_line-next_line-next_line-srrip-8core 1 10 0 600.perlbench_s-210B.champsimtrace.xz 602.gcc_s-734B.champsimtrace.xz 603.bwaves_s-3699B.champsimtrace.xz 607.cactuBSSN_s-2421B.champsimtrace.xz 621.wrf_s-575B.champsimtrace.xz 623.xalancbmk_s-700B.champsimtrace.xz 625.x264_s-18B.champsimtrace.xz 627.cam4_s-573B.champsimtrace.xz
python3 plotbar.py srrip_replacement
mv /home/sanju/ChampSim-master/srrip_replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/IPC_graphs/srrip_replacement.png 
rm -f ipc_data.txt
python3 calc_hitrate_plotbar.py srrip_replacement
mv /home/sanju/ChampSim-master/srrip_replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/Hitrate_graphs/srrip_replacement.png 
rm -f hitrate_data.txt 


./build_champsim.sh bimodal next_line next_line next_line lru 8
./run_8core.sh bimodal-next_line-next_line-next_line-lru-8core 1 10 0 600.perlbench_s-210B.champsimtrace.xz 602.gcc_s-734B.champsimtrace.xz 603.bwaves_s-3699B.champsimtrace.xz 607.cactuBSSN_s-2421B.champsimtrace.xz 621.wrf_s-575B.champsimtrace.xz 623.xalancbmk_s-700B.champsimtrace.xz 625.x264_s-18B.champsimtrace.xz 627.cam4_s-573B.champsimtrace.xz
python3 plotbar.py lru_Replacement
mv /home/sanju/ChampSim-master/lru_Replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/IPC_graphs/lru_Replacement.png 
rm -f ipc_data.txt
python3 calc_hitrate_plotbar.py lru_Replacement
mv /home/sanju/ChampSim-master/lru_Replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/Hitrate_graphs/lru_Replacement.png 
rm -f hitrate_data.txt 



./build_champsim.sh bimodal next_line next_line next_line drrip 8
./run_8core.sh bimodal-next_line-next_line-next_line-drrip-8core 1 10 0 600.perlbench_s-210B.champsimtrace.xz 602.gcc_s-734B.champsimtrace.xz 603.bwaves_s-3699B.champsimtrace.xz 607.cactuBSSN_s-2421B.champsimtrace.xz 621.wrf_s-575B.champsimtrace.xz 623.xalancbmk_s-700B.champsimtrace.xz 625.x264_s-18B.champsimtrace.xz 627.cam4_s-573B.champsimtrace.xz
python3 plotbar.py drrip_Replacement
mv /home/sanju/ChampSim-master/drrip_Replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/IPC_graphs/drrip_Replacement.png 
rm -f ipc_data.txt
python3 calc_hitrate_plotbar.py drrip_Replacement
mv /home/sanju/ChampSim-master/drrip_Replacement.png /home/sanju/ChampSim-master/Replacement_results_graph/Hitrate_graphs/drrip_Replacement.png 
rm -f hitrate_data.txt 

