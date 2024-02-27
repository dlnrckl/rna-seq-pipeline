#!/bin/bash
#SBATCH -p barbun
#SBATCH -A dcakal
#SBATCH -N 1
#SBATCH -n 20

java -jar /truba/home/dcakal/Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 24 -trimlog trimlog.txt /truba/home/dcakal/PROJE/SRR25488138_2.fastq /truba/scratch/dcakal/trimmed_SRR25488138_2.fastq ILLUM$



