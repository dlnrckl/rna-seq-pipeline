#!/bin/sh
#SBATCH -p hamsi
#SBATCH -c 28
#SBATCH --time


/truba/home/dcakal/bowtie2-2.5.2-linux-x86_64/bowtie2 -x /truba/home/dcakal/hg38.fa -U /truba/home/dcakal/trimmed_SRR5059329.fastq -S /truba/home/dcakal/aligned_trimmed_SRR25488114_1.sam
