#!/bin/bash -l

#SBATCH --job-name=THemero
#SBATCH --partition=savio_bigmem
#SBATCH --account=fc_zingiber
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mem-per-cpu=25G
#SBATCH --cpus-per-task=20
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Jesus/hemero

Trinity --SS_lib_type RF --seqType fq --max_memory 400G --left hemero_1.fq --right hemero_2.fq --CPU 20 --output trinity

exit
