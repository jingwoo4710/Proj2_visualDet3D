# !/bin/bash
set -e
if [[ "$1" == "" ]];then
    echo -e "--------------------Precomputation for depth estimation script------------------"
    echo -e "One argument is needed. Usage: \n"
    echo -e "   ./det_precompute_mono.sh <ConfigPath(str)>\n"
    echo -e "exiting"
    echo -e "------------------------------------------------------------------"
    exit 1
fi
CONFIG_PATH=$1
 
echo -e "Precomputation"
python3 scripts/depth_precompute.py --config=$CONFIG_PATH