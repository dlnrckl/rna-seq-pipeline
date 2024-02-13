#!/bin/sh
#SBATCH -p hamsi
#SBATCH -c 28
#SBATCH -n 1
#SBATCH -N 1
#SBATCH —time
#SBATCH -J molport

/truba/home/dcakal/sratoolkit.3.0.10-centos_linux64/bin/fasterq-dump.3.0.10 SRR25488115
