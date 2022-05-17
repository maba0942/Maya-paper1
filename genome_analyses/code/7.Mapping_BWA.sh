#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH --reservation=uppmax2022-2-5_12
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J RNA-Seq_reads_Mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user maya.baghdysar@outlook.com  

# Loading modules 
module load bioinfo-tools
module load bwa
module load samtools

# My Commands
# bwa index /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta

#// bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz | samtools view -b | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_BH_paired_ERR1797972.bam

#// bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz | samtools view -b | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_BH_paired_ERR1797973.bam


bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
/home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz \                                                                              
/home/mayaba/Maya/Maya-paper1/genome_analyses/trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_BH_paired_ERR1797974.bam

#// bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz | samtools view -b | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_Serum_paired_ERR1797969.bam

#// bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz | samtools view -b | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_Serum_paired_ERR1797970.bam

#// bwa mem /home/mayaba/Maya/Maya-paper1/genome_analyses/analyses/01_genome_assembly/genome_assembly.contigs.fasta \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz \
#// /home/mayaba/Maya/Maya-paper1/genome_analyses/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz | samtools view -b | samtools sort -o /home/mayaba/Maya/Maya-paper1/genome_analyses/output_data/RNA_mapping/RNA_mapping_Serum_paired_ERR1797971.bam
