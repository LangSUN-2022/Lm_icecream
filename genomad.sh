#!/bin/bash
#SBATCH -o genomad.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J genomad
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
conda activate genomad

cd ../virulence/seqs

# Run 8 files in parallel, one job per file
ls *.fasta | parallel -j 8 \
    'OUTDIR=../../mobile_gene_element/genomad_output/{/.}; \
     mkdir -p $OUTDIR; \
     genomad end-to-end --cleanup --splits 8 \
     {} \
     $OUTDIR \
     ../../mobile_gene_element/genomad/genomad_db'
