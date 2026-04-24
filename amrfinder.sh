#!/bin/bash
#SBATCH -o amrfinder.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J amrfinder
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
conda activate amrfinder


amrfinder -n ../virulence/seqs/16HNA049LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA060LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA062LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA067LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA068LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA077LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA082LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA137LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA138LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA149LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA151LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA158LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA177LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA186LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA189LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA190LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA223LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA225LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA226LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA227LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA230LM.fasta --plus
amrfinder -n ../virulence/seqs/16HNA231LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA014LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA017LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA032LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA044LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA075LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA083LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA088LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA089LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA092LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA110LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA113LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA115LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA120LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA126LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA129LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA160LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA168LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA190LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA195LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNA198LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC029LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC052LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC056LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC063LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC072LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC087LM.fasta --plus
amrfinder -n ../virulence/seqs/17HNC090LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC001LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC007LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC029LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC030LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC069LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC163LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC194LM.fasta --plus
amrfinder -n ../virulence/seqs/18HNC223LM.fasta --plus
