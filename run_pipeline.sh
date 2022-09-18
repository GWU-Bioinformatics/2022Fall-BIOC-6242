#!/bin/bash
#
#SBATCH -p defq # partition (queue)
#SBATCH -c 1 # number of cores
#SBATCH --mem 1024 # memory pool for all cores
#SBATCH -t 2:00 # time (D-HH:MM)
#SBATCH -o pipeline.%N.%j.out # STDOUT
#SBATCH -e pipeline.%N.%j.err # STDERR
module load R/4.2.1_bioc6242
time ./analysis_pipeline.sh

