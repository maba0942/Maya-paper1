#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J genome_assembling
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com
# Load modules
module load bioinfo-tools
module load canu
# Your commands
canu -d /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/ -p genome_assembly genomeSize=3m -pacbio-raw /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/genomics_data/PacBio/*.fastq.gz
