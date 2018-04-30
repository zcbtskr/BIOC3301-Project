#!/bin/bash --login
#PBS -l walltime=01:00:00
#PBS -l select=1:ncpus=2
#PBS -N 2017_cr_iiinojoin_no_golay_parallel
#PBS -A d411-training

cd $PBS_O_WORKDIR

module load miniconda/python2

# loading virtualenv
echo "loading virtualenv"

source activate qiime1

# setting temporary directory
mkdir -p ~/qiime_tmp
export TMPDIR=~/qiime_tmp

#Running core diversity analysis
core_diversity_analyses.py --recover_from_failure -i otus/otu_table.biom -m map_incomplete.tsv -t otus/97_otus.tree -o cdout1 -e 605

source deactivate
