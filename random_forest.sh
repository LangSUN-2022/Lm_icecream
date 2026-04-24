#!/bin/bash
#SBATCH -o random_forest.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J random_forest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
conda activate sklearn-env

python rf_persistence2.py
