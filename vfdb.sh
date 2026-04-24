#!/bin/bash
#SBATCH -o vf.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J vf
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
source activate bacterial-genomics-tutorial

#cd vfdb
#makeblastdb -in sequences -title sequences -dbtype nucl
#cd ..
#abricate --datadir ./ --db vfdb ragtag.scaffold.fasta > vfdb_out.tab


makeblastdb -in ./vir/sequences -title sequences -dbtype nucl
abricate --minid 90 --mincov 50 --datadir ./ --db vir seqs/*.fasta > vir_out2.tab


makeblastdb -in ./metal_re/sequences -title sequences -dbtype nucl
abricate --minid 90 --mincov 50 --datadir ./ --db metal_re seqs/*.fasta > metal_re_out2.tab

makeblastdb -in ./arg/sequences -title sequences -dbtype nucl
abricate --minid 90 --mincov 50 --datadir ./ --db arg seqs/*.fasta > arg_out2.tab
