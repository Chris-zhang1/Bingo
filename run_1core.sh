TRACE_DIR=~/traces/
binary=${1}
n_warm=${2}
n_sim=${3}
num=${4}

trace1=`sed -n ''$num'p' sim_list/1core_workloads.txt | awk '{print $1}'`

mkdir -p results_1core
(./bin/${binary} -warmup_instructions ${n_warm}000000 -simulation_instructions ${n_sim}000000 -traces ${TRACE_DIR}/${trace1}.champsimtrace.xz) &> results_1core/${trace1}-${binary}.txt
