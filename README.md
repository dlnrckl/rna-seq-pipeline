# RNA-Seq Pipeline on Linux

This project implements an end-to-end RNA-Seq pipeline for analyzing the temporal dynamics of immunity to a viral infection in the early weeks and months of life, based on the study [“Systems biological assessment of the temporal dynamics of immunity to a viral infection in the first weeks and months of life”](https://doi.org/10.1101/2023.01.28.23285133). The pipeline analyzes RNA-Seq data obtained from COVID-19 (Omicron variant) and healthy samples.

## Table of Contents
- [Introduction](#introduction)
- [Pipeline Steps](#pipeline-steps)
- [Tools Used](#tools-used)
- [Dataset](#dataset)
- [Results](#results)
- [Installation and Usage](#installation-and-usage)
- [Authors](#authors)
- [References](#references)

## Introduction
In this project, RNA-Seq data from NCBI SRA is used to compare gene expression between COVID-19 (Omicron) samples and healthy controls.

## Pipeline Steps
1. **Data Download:**  
   - Download data from NCBI SRA using the SRA Toolkit (SRR25488114, SRR25488115 for COVID-19 and SRR25488138, SRR25488139 for healthy samples).

2. **Quality Control:**  
   - Perform quality control on raw FASTQ files using FastQC to evaluate per-base quality scores, GC content, and other metrics.

3. **Trimming:**  
   - Use Trimmomatic to trim approximately 15 bases from the beginning of the reads due to observed quality issues.

4. **Post-Trimming Quality Control:**  
   - Re-assess the quality of trimmed reads using FastQC to ensure suitability for downstream analysis.

5. **Reference Genome Download and Indexing:**  
   - Download the hg38 reference genome from the UCSC Genome Browser and index it using Bowtie2.

6. **Alignment:**  
   - Align the trimmed RNA-Seq reads to the hg38 reference genome using Bowtie2, generating SAM files.

7. **Conversion from SAM to BAM:**  
   - Convert SAM files to BAM format using Samtools for subsequent steps.

8. **Sorting and Indexing BAM Files:**  
   - Sort and index BAM files using Samtools.

9. **Downloading GTF Files:**  
   - Download GTF files for all genes as well as for protein-coding genes.

10. **Gene Expression Counting:**  
    - Perform gene expression quantification using htseq-count with the GTF and BAM files to generate count files.

11. **Differential Expression Analysis:**  
    - Use the DESeq2 package in R to calculate log2 fold changes between COVID-19 and healthy samples, filtering for genes with p-value < 0.05 and LFC > 1.5.

12. **Data Visualization:**  
    - Visualize the results in R using Volcano plots, heatmaps, clustering, and PCA analyses.

## Tools Used
- **SRA Toolkit:** Data download  
- **FastQC:** Quality control  
- **Trimmomatic:** Read trimming  
- **Bowtie2:** Alignment and indexing  
- **Samtools:** SAM/BAM conversion, sorting, and indexing  
- **htseq-count:** Gene expression quantification  
- **DESeq2:** Differential expression analysis  
- **R:** Data visualization (Volcano plots, heatmaps, PCA, clustering)

## Dataset
- **COVID-19 Samples:** SRR25488114, SRR25488115  
- **Healthy Samples:** SRR25488138, SRR25488139  
- **Reference Genome:** hg38 (downloaded from the UCSC Genome Browser)

## Results
- Differential gene expression between COVID-19 and healthy samples was observed.
- Upregulated and downregulated genes were identified using DESeq2.
- Visualizations such as Volcano plots, heatmaps, clustering, and PCA highlight the differences in gene expression between the two groups.

## Installation and Usage
1. **Requirements:**  
   - Linux operating system  
   - SRA Toolkit, FastQC, Trimmomatic, Bowtie2, Samtools, htseq-count  
   - R (with the DESeq2 package)

2. **Steps:**  
   - Download the SRR data from NCBI SRA.
   - Follow the pipeline steps outlined above for data processing and analysis.
   - Use the generated count files for further analysis in DESeq2 and visualize the results in R.


## References
- [Original Study: Systems biological assessment of the temporal dynamics of immunity to a viral infection in the first weeks and months of life](https://doi.org/10.1101/2023.01.28.23285133)
- UCSC Genome Browser  
- NCBI SRA
