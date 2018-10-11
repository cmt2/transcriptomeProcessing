#!/bin/bash -l
#SBATCH --job-name=Bomarea_transc_2
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_rothfelslab
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Bomarea

trim_galore -o outputdir36bp_retry --paired CSJM003D_S36_L006_R1_001.fastq.gz CSJM003D_S36_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp_retry --paired CSJM003F_S38_L006_R1_001.fastq.gz CSJM003F_S38_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp_retry --paired CSJM003G_S39_L006_R1_001.fastq.gz CSJM003G_S39_L006_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36



exit
