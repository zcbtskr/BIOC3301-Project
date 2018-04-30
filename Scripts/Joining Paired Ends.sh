#!/bin/bash --login
#PBS -l walltime=01:00:00
#PBS -l select=1:ncpus=1
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

#Joining the paired ends
join_paired_ends.py -m SeqPrep -f Read1.fastq.gz -r Read2.fastq.gz -b Index.fastq.gz -o joined1

source deactivate
