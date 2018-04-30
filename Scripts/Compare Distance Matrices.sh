#!/bin/bash --login
#PBS -l walltime=01:00:00
#PBS -l select=1:ncpus=2
#PBS -N 2017_cr_nojoin_no_golay_parallel
#PBS -A d411-training

cd $PBS_O_WORKDIR

module load miniconda/python2

# loading virtualenv
echo "loading virtualenv"

source activate qiime1

# setting temporary directory
mkdir -p ~/qiime_tmp
export TMPDIR=~/qiime_tmp

compare_distance_matrices.py --method mantel -i cdout1/bdiv_even605/weighted_unifrac_dm.txt,cdout1/bdiv_even605/unweighted_unifrac_dm.txt -o furtheranalysis/mantel_out -n 999

source deactivate
