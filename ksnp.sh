#!/bin/bash
#SBATCH -o ksnp.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J ksnp
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

echo $PATH


kSNP4 -in inputfile.txt -k 17 -outdir output2025
