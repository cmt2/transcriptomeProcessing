#!/bin/bash -l
#SBATCH --job-name=Bomarea_transc_2
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_rothfelslab
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mem-per-cpu=35G
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Bomarea

trim_galore -o outputdir36bp_retry --paired CSJM003A_S33_L006_R1_001.fastq.gz CSJM003A_S33_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp_retry --paired CSJM003B_S34_L006_R1_001.fastq.gz CSJM003B_S34_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp_retry --paired CSJM003k_S43_L006_R1_001.fastq.gz CSJM003k_S43_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36



exit
