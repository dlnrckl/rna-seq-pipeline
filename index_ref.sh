#!/bin/bash
#SBATCH -M truba
#SBATCH -p hamsi
#SBATCH -N 1
#SBATCH --tasks=1
#SBATCH -c 28
#SBATCH --time=24:00:00

/truba/home/dcakal/bowtie2-2.5.2-linux-x86_64/bowtie2 -x /truba/home/dcakal/hg38.fa -U /truba/home/dcakal/trimmed_SRR25488114_1.fastq -S /truba/home/dcakal/aligned_trimmed_SRR25488114_1.sam
