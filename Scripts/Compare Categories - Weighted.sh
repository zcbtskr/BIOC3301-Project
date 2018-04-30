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

#Running ANOSIM statistical tests for weighted pH and nutrients PCoA plots
compare_categories.py --method anosim -i pcoaUPDATED/weighted_unifrac_dm.txt -m map.tsv -c SamplePhosphorus -o ~/2018_02_smb/StatisticalTests/WEIGHTEDanosim/weightedanosimP -n 999

compare_categories.py --method anosim -i pcoaUPDATED/weighted_unifrac_dm.txt -m map.tsv -c SamplePotassium -o ~/2018_02_smb/StatisticalTests/WEIGHTEDanosim/weightedanosimK -n 999

compare_categories.py --method anosim -i pcoaUPDATED/weighted_unifrac_dm.txt -m map.tsv -c SampleNitrogen -o ~/2018_02_smb/StatisticalTests/WEIGHTEDanosim/weightedanosimN -n 999

compare_categories.py --method anosim -i pcoaUPDATED/weighted_unifrac_dm.txt -m map.tsv -c SampleDepth -o ~/2018_02_smb/StatisticalTests/WEIGHTEDanosim/weightedanosimDepth -n 999

compare_categories.py --method anosim -i pcoaUPDATED/weighted_unifrac_dm.txt -m map.tsv -c SamplePh -o ~/2018_02_smb/StatisticalTests/WEIGHTEDanosim/weightedanosimPh -n 999

source deactivate
