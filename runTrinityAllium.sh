#!/bin/bash -l

#SBATCH --job-name=TAllium
#SBATCH --partition=savio_bigmem
#SBATCH --account=fc_zingiber
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mem-per-cpu=25G
#SBATCH --cpus-per-task=20
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Jesus/allium

Trinity --SS_lib_type RF --seqType fq --max_memory 400G --left allium_1.fq --right allium_2.fq --CPU 20 --output trinity

exit
