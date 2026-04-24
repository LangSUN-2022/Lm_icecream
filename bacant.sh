#!/bin/bash
#SBATCH -o bacant.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J bacant
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
conda activate bacant


cd ../virulence/seqs

# Run 8 files in parallel, one job per file
ls *.fasta | parallel -j 8 \
    'OUTDIR=../../mobile_gene_element/bacant_output/{/.}; \
     mkdir -p $OUTDIR; \
     bacant -n {} -o $OUTDIR'
