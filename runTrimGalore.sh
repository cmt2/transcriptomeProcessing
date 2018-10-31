#!/bin/bash -l
#SBATCH --job-name=Jesus_transc
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_zingiber
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=50G
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Jesus
mkdir outputdir36bp

trim_galore -o outputdir36bp --paired CSJM004A_S45_L007_R1_001.fastq.gz CSJM004A_S45_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004B_S46_L007_R1_001.fastq.gz CSJM004B_S46_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004C_S47_L007_R1_001.fastq.gz CSJM004C_S47_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004D_S48_L007_R1_001.fastq.gz CSJM004D_S48_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004E_S49_L007_R1_001.fastq.gz CSJM004E_S49_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004F_S50_L007_R1_001.fastq.gz CSJM004F_S50_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004G_S51_L007_R1_001.fastq.gz CSJM004G_S51_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004H_S52_L007_R1_001.fastq.gz CSJM004H_S52_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004I_S53_L007_R1_001.fastq.gz CSJM004I_S53_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004J_S54_L007_R1_001.fastq.gz CSJM004J_S54_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004L_S56_L007_R1_001.fastq.gz CSJM004L_S56_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM004k_S55_L007_R1_001.fastq.gz CSJM004k_S55_L007_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005A_S57_L008_R1_001.fastq.gz CSJM005A_S57_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005B_S58_L008_R1_001.fastq.gz CSJM005B_S58_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005C_S59_L008_R1_001.fastq.gz CSJM005C_S59_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005D_S60_L008_R1_001.fastq.gz CSJM005D_S60_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005E_S61_L008_R1_001.fastq.gz CSJM005E_S61_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005F_S62_L008_R1_001.fastq.gz CSJM005F_S62_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005G_S63_L008_R1_001.fastq.gz CSJM005G_S63_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005H_S64_L008_R1_001.fastq.gz CSJM005H_S64_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005I_S65_L008_R1_001.fastq.gz CSJM005I_S65_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005J_S66_L008_R1_001.fastq.gz CSJM005J_S66_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005L_S68_L008_R1_001.fastq.gz CSJM005L_S68_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36
trim_galore -o outputdir36bp --paired CSJM005k_S67_L008_R1_001.fastq.gz CSJM005k_S67_L008_R2_001.fastq.gz --retain_unpaired --dont_gzip --length 36



exit
