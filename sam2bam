#!/bin/sh
#SBATCH -p hamsi
#SBATCH -c 28
#SBATCH -n 1
#SBATCH -N 1
#SBATCH —time
#SBATCH -J molport

# Convert sam into bam
/truba/home/dcakal/samtools-1.19/samtools view -bS /truba/scratch/dcakal/trimmed_SRR25488138_2.sam > /truba/scratch/dcakal/trimmed_SRR25488138_2.bam

# sort 
/truba/home/dcakal/samtools-1.19/samtools sort /truba/scratch/dcakal/trimmed_SRR25488138_2.bam -o /truba/scratch/dcakal/trimmed_SRR25488138_2_sorted.bam

#index 
/truba/home/dcakal/samtools-1.19/samtools index /truba/scratch/dcakal/trimmed_SRR25488138_2_sorted.bam
