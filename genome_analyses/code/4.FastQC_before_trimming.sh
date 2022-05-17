#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J FastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com


#Dowloading modules

module load bioinfo-tools
module load FastQC

#FastQC for not assembled-DNA (before trimming)

fastqc /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz --outdir=/home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/FastQC_before_trimming_output

