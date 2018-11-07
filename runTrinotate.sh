#!/bin/bash -l

#SBATCH --job-name=3NAllium
#SBATCH --partition=savio
#SBATCH --account=fc_rothfels
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mem-per-cpu=5G
#SBATCH --cpus-per-task=10
#SBATCH --mail-type=ALL
#SBATCH --time=72:00:00 

cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Jesus/allium/trinity

/global/home/users/cmt2/trinityrnaseq-Trinity-v2.8.4/util/support_scripts/get_Trinity_gene_to_trans_map.pl Trinity.fasta > Trinity.fasta.gene_trans_map


module load blast
module load hmmer # this is a different version than what Chodon used (3.1b-intel)

cp /clusterfs/rosalind/users/chodon/databases/Trinotate.sqlite . #where is this? 

#edit lines below for fc_rothfels set up
/clusterfs/rosalind/users/chodon/calochortus/auto/autoTrinotate.pl  --Trinotate_sqlite /clusterfs/rosalind/users/chodon/calochortus/cama/trinity/Trinotate.sqlite --transcripts Trinity.fasta --gene_to_trans_map Trinity.fasta.gene_trans_map --conf /clusterfs/rosalind/users/chodon/calochortus/auto/conf.txt --CPU 10

/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite init --gene_trans_map Trinity.fasta.gene_trans_map --transcript_fasta Trinity.fasta --transdecoder_pep Trinity.fasta.transdecoder.pep
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_swissprot_blastx swissprot.blastx.outfmt6 
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_swissprot_blastp swissprot.blastp.outfmt6
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_pfam TrinotatePFAM.out
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_rnammer Trinity.fasta.rnammer.gff
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_tmhmm tmhmm.out
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite LOAD_signalp signalp.out
/global/home/users/chodon/bin/Trinotate-3.0.2/Trinotate Trinotate.sqlite report > Trinotate.xls
/global/home/users/chodon/bin/Trinotate-3.0.2/util/extract_GO_assignments_from_Trinotate_xls.pl --Trinotate_xls Trinotate.xls -T -I > Trinotate.xls.gene_ontology
/global/home/users/chodon/bin/Trinotate-3.0.2/util/annotation_importer/import_transcript_names.pl Trinotate.sqlite Trinotate.xls


exit
