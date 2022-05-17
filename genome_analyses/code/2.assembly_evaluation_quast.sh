#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com
  
 
# Loading modules

module load bioinfo-tools 
module load quast

# Commands

quast.py /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
-r /home/mayaba/Maya/Maya-paper1/genome_analyses/data/reference_genome.fna.gz \
-o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data
