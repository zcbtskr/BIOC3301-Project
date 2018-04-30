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

compare_alpha_diversity.py -i cdout1/arare_max605/alpha_div_collated/PD_whole_tree.txt -m map.tsv -c SamplePh -o furtheranalysis/comparealphaPHPD

compare_alpha_diversity.py -i cdout1/arare_max605/alpha_div_collated/PD_whole_tree.txt -m map.tsv -c SamplePhosphorus -o furtheranalysis/comparealphaPPD

source deactivate
