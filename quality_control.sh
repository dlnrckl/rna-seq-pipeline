#!/bin/sh
#SBATCH -p hamsi
#SBATCH -c 28
#SBATCH -n 1
#SBATCH -N 1
#SBATCH —time
#SBATCH -J molport

/truba/home/dcakal/FastQC/fastqc /truba/home/dcakal/SRR25488115_1.fastq
