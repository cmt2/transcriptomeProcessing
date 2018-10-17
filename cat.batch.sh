#!/bin/bash -l
#SBATCH --job-name=moveL2
#SBATCH --partition=savio2_htc
#SBATCH --account=fc_rothfelslab
#SBATCH --qos=savio_normal
#SBATCH --mail-user=cmt2@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=30G
#SBATCH --time=72:00:00 

bash catForTrinity.sh

exit
