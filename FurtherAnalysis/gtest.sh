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
export TMPDIR=~/qiime_tmp

group_significance.py -i otus/otu_table.biom -m map.tsv -c SamplePh -s g_test -o ~/2018_02_smb/StatisticalTests/G-Test/G-TestPh -n 999

source deactivate
