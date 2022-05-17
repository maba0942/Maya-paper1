#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com


# Loading modules

module load bioinfo-tools
module load trimmomatic

# My commands

trimmomatic PE /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz  /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz \
/home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_forward_paired.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_forward_unpaired.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_reverse_paired.fq.gz \
/home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 \
TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

