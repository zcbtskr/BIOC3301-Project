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

#Creating unweighted 2d PCoA plots from 3d
make_2d_plots.py -i cdout1/bdiv_even605/unweighted_unifrac_pc.txt -m map.tsv -o 2d_plots/

source deactivate
