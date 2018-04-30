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

#Demultiplexing the sequencing data
split_libraries_fastq.py -m map_incomplete.tsv -i joined1/seqprep_assembled.fastq.gz -b joined1/seqprep_assembled.fastq_barcodes.fastq -o dem1 -q 19 --rev_comp_barcode --rev_comp_mapping_barcodes

source deactivate
