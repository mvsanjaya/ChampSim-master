#!/bin/bash

#./build_champsim.sh bimodal no no no lru 8
#./run_8core.sh bimodal-no-no-no-lru-8core 1 10 0 600.perlbench_s-210B.champsimtrace.xz 602.gcc_s-734B.champsimtrace.xz 603.bwaves_s-3699B.champsimtrace.xz 607.cactuBSSN_s-2421B.champsimtrace.xz 621.wrf_s-575B.champsimtrace.xz 623.xalancbmk_s-700B.champsimtrace.xz 625.x264_s-18B.champsimtrace.xz 627.cam4_s-573B.champsimtrace.xz
#python3 plotbar.py no_prefetching
#mv /home/sanju/ChampSim-master/no_prefetching.png /home/sanju/ChampSim-master/Prefetching_results/no_prefetching.png 
#rm -f ipc_data.txt 


./build_champsim.sh bimodal next_line next_line next_line lru 8
./run_8core.sh bimodal-next_line-next_line-next_line-lru-8core 1 10 0 600.perlbench_s-210B.champsimtrace.xz 602.gcc_s-734B.champsimtrace.xz 603.bwaves_s-3699B.champsimtrace.xz 607.cactuBSSN_s-2421B.champsimtrace.xz 621.wrf_s-575B.champsimtrace.xz 623.xalancbmk_s-700B.champsimtrace.xz 625.x264_s-18B.champsimtrace.xz 627.cam4_s-573B.champsimtrace.xz
python3 plotbar.py nextline_all_prefetching
mv /home/sanju/ChampSim-master/nextline_all_prefetching.png /home/sanju/ChampSim-master/Prefetching_results/nexxtline_all_prefetching.png 
rm -f ipc_data.txt 

