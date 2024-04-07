#!/bin/bash
#SBATCH -p barbun
#SBATCH -A dcakal
#SBATCH -N 1
#SBATCH -n 20

/truba/home/dcakal/miniconda3/envs/rna-seq-env/bin/htseq-count -f bam -r pos -t exon -i gene_id -s yes --order-name /truba/scratch/dcakal/aligned_trimmed_SRR25488114.bam /truba/home/dcakal/hg38.knownGene.gtf > /truba/scratch/dcakal/counts_SRR25488114.txt
