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

#FastQC for trimmed-DNA

fastqc /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_forward_paired.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_forward_unpaired.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_reverse_paired.fq.gz /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/trimming_output/lane1_reverse_unpaired.fq.gz --outdir=/home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/FastQC_after_trimming_output


