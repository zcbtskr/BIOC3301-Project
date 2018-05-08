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

make_otu_heatmap.py -i cdout1/taxa_plots/table_mc605_sorted_L2.biom -o heatmap.pdf --color_scheme YlOrRd --suppress_row_clustering

source deactivate

