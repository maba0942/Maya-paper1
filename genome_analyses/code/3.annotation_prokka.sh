#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J annotation_prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com


# Loading modules
module load bioinfo-tools
module load prokka


# Commands

prokka \
--outdir /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/annotation_output_data \
--force \
--prefix annotation_output_data_prokka \
--genus Enterococcus \
--species faecium \
--strain E745 \
--gram +/pos \
/home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta
