#!/bin/bash
#SBATCH -o cfsan.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J cfsan
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4


source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
source activate bacterial-genomics-tutorial

cfsan_snp_pipeline run -s cluster2_2025 ref_cluster2/16HNA230LM.fasta -o cluster2_2025_output
cfsan_snp_pipeline run -s cluster3_2025 ref_cluster3/18HNC194LM.fasta -o cluster3_2025_output 
cfsan_snp_pipeline run -s cluster4_2025 ref_cluster4/16HNA062LM.fasta -o cluster4_2025_output
cfsan_snp_pipeline run -s cluster1_2025 ref_cluster1/17HNC052LM.fasta -o cluster1_2025_output
cfsan_snp_pipeline run -s cluster1_sub_2025 ref_cluster1_sub/17HNC087LM.fasta -o cluster1_sub_2025_output
cfsan_snp_pipeline run -s cluster2_sub_2025 ref_cluster2/16HNA230LM.fasta -o cluster2_sub_2025_output
