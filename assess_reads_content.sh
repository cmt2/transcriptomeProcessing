#!/bin/bash
#SBATCH --partition=savio
#SBATCH --account=fc_rothfelslab
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00

module load bowtie2
cd /global/scratch/cmt2/trans_diff_analysis/quality_analysis/read_content/

# copy files
#cp /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Bomarea/bom_mult/bom_mult_* .
#cp /global/scratch/cmt2/trans_diff_analysis/Trinity.fasta . 

# run bowtie
bowtie2-build Trinity.fasta Trinity.fasta
bowtie2 -p 10 -q --no-unal -k 20 -x Trinity.fasta -1 bom_mult_1.fq -2 bom_mult_2.fq  \
   2>align_stats.txt| samtools view -@10 -Sb -o bowtie2.bam

cat 2>&1 align_stats.txt

