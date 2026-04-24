#!/bin/bash
#SBATCH -o mobsuite.%j.out
#SBATCH -A free
#SBATCH -p freecpuQ
#SBATCH -q normal
#SBATCH -J mobsuite
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8

source /public/home/hpc222075/anaconda3/etc/profile.d/conda.sh
conda activate mob_suite

mob_recon --infile ../virulence/seqs/16HNA049LM.fasta --outdir 11_mobsuite_out_dir/16HNA049LM
mob_recon --infile ../virulence/seqs/16HNA060LM.fasta --outdir 11_mobsuite_out_dir/16HNA060LM
mob_recon --infile ../virulence/seqs/16HNA062LM.fasta --outdir 11_mobsuite_out_dir/16HNA062LM
mob_recon --infile ../virulence/seqs/16HNA067LM.fasta --outdir 11_mobsuite_out_dir/16HNA067LM
mob_recon --infile ../virulence/seqs/16HNA068LM.fasta --outdir 11_mobsuite_out_dir/16HNA068LM
mob_recon --infile ../virulence/seqs/16HNA077LM.fasta --outdir 11_mobsuite_out_dir/16HNA077LM
mob_recon --infile ../virulence/seqs/16HNA082LM.fasta --outdir 11_mobsuite_out_dir/16HNA082LM
mob_recon --infile ../virulence/seqs/16HNA137LM.fasta --outdir 11_mobsuite_out_dir/16HNA137LM
mob_recon --infile ../virulence/seqs/16HNA138LM.fasta --outdir 11_mobsuite_out_dir/16HNA138LM
mob_recon --infile ../virulence/seqs/16HNA149LM.fasta --outdir 11_mobsuite_out_dir/16HNA149LM
mob_recon --infile ../virulence/seqs/16HNA151LM.fasta --outdir 11_mobsuite_out_dir/16HNA151LM
mob_recon --infile ../virulence/seqs/16HNA158LM.fasta --outdir 11_mobsuite_out_dir/16HNA158LM
mob_recon --infile ../virulence/seqs/16HNA177LM.fasta --outdir 11_mobsuite_out_dir/16HNA177LM
mob_recon --infile ../virulence/seqs/16HNA186LM.fasta --outdir 11_mobsuite_out_dir/16HNA186LM
mob_recon --infile ../virulence/seqs/16HNA189LM.fasta --outdir 11_mobsuite_out_dir/16HNA189LM
mob_recon --infile ../virulence/seqs/16HNA190LM.fasta --outdir 11_mobsuite_out_dir/16HNA190LM
mob_recon --infile ../virulence/seqs/16HNA223LM.fasta --outdir 11_mobsuite_out_dir/16HNA223LM
mob_recon --infile ../virulence/seqs/16HNA225LM.fasta --outdir 11_mobsuite_out_dir/16HNA225LM
mob_recon --infile ../virulence/seqs/16HNA226LM.fasta --outdir 11_mobsuite_out_dir/16HNA226LM
mob_recon --infile ../virulence/seqs/16HNA227LM.fasta --outdir 11_mobsuite_out_dir/16HNA227LM
mob_recon --infile ../virulence/seqs/16HNA230LM.fasta --outdir 11_mobsuite_out_dir/16HNA230LM
mob_recon --infile ../virulence/seqs/16HNA231LM.fasta --outdir 11_mobsuite_out_dir/16HNA231LM
mob_recon --infile ../virulence/seqs/17HNA014LM.fasta --outdir 11_mobsuite_out_dir/17HNA014LM
mob_recon --infile ../virulence/seqs/17HNA017LM.fasta --outdir 11_mobsuite_out_dir/17HNA017LM
mob_recon --infile ../virulence/seqs/17HNA032LM.fasta --outdir 11_mobsuite_out_dir/17HNA032LM
mob_recon --infile ../virulence/seqs/17HNA044LM.fasta --outdir 11_mobsuite_out_dir/17HNA044LM
mob_recon --infile ../virulence/seqs/17HNA075LM.fasta --outdir 11_mobsuite_out_dir/17HNA075LM
mob_recon --infile ../virulence/seqs/17HNA083LM.fasta --outdir 11_mobsuite_out_dir/17HNA083LM
mob_recon --infile ../virulence/seqs/17HNA088LM.fasta --outdir 11_mobsuite_out_dir/17HNA088LM
mob_recon --infile ../virulence/seqs/17HNA089LM.fasta --outdir 11_mobsuite_out_dir/17HNA089LM
mob_recon --infile ../virulence/seqs/17HNA092LM.fasta --outdir 11_mobsuite_out_dir/17HNA092LM
mob_recon --infile ../virulence/seqs/17HNA110LM.fasta --outdir 11_mobsuite_out_dir/17HNA110LM
mob_recon --infile ../virulence/seqs/17HNA113LM.fasta --outdir 11_mobsuite_out_dir/17HNA113LM
mob_recon --infile ../virulence/seqs/17HNA115LM.fasta --outdir 11_mobsuite_out_dir/17HNA115LM
mob_recon --infile ../virulence/seqs/17HNA120LM.fasta --outdir 11_mobsuite_out_dir/17HNA120LM
mob_recon --infile ../virulence/seqs/17HNA126LM.fasta --outdir 11_mobsuite_out_dir/17HNA126LM
mob_recon --infile ../virulence/seqs/17HNA129LM.fasta --outdir 11_mobsuite_out_dir/17HNA129LM
mob_recon --infile ../virulence/seqs/17HNA160LM.fasta --outdir 11_mobsuite_out_dir/17HNA160LM
mob_recon --infile ../virulence/seqs/17HNA168LM.fasta --outdir 11_mobsuite_out_dir/17HNA168LM
mob_recon --infile ../virulence/seqs/17HNA190LM.fasta --outdir 11_mobsuite_out_dir/17HNA190LM
mob_recon --infile ../virulence/seqs/17HNA195LM.fasta --outdir 11_mobsuite_out_dir/17HNA195LM
mob_recon --infile ../virulence/seqs/17HNA198LM.fasta --outdir 11_mobsuite_out_dir/17HNA198LM
mob_recon --infile ../virulence/seqs/17HNC029LM.fasta --outdir 11_mobsuite_out_dir/17HNC029LM
mob_recon --infile ../virulence/seqs/17HNC052LM.fasta --outdir 11_mobsuite_out_dir/17HNC052LM
mob_recon --infile ../virulence/seqs/17HNC056LM.fasta --outdir 11_mobsuite_out_dir/17HNC056LM
mob_recon --infile ../virulence/seqs/17HNC063LM.fasta --outdir 11_mobsuite_out_dir/17HNC063LM
mob_recon --infile ../virulence/seqs/17HNC072LM.fasta --outdir 11_mobsuite_out_dir/17HNC072LM
mob_recon --infile ../virulence/seqs/17HNC087LM.fasta --outdir 11_mobsuite_out_dir/17HNC087LM
mob_recon --infile ../virulence/seqs/17HNC090LM.fasta --outdir 11_mobsuite_out_dir/17HNC090LM
mob_recon --infile ../virulence/seqs/18HNC001LM.fasta --outdir 11_mobsuite_out_dir/18HNC001LM
mob_recon --infile ../virulence/seqs/18HNC007LM.fasta --outdir 11_mobsuite_out_dir/18HNC007LM
mob_recon --infile ../virulence/seqs/18HNC029LM.fasta --outdir 11_mobsuite_out_dir/18HNC029LM
mob_recon --infile ../virulence/seqs/18HNC030LM.fasta --outdir 11_mobsuite_out_dir/18HNC030LM
mob_recon --infile ../virulence/seqs/18HNC069LM.fasta --outdir 11_mobsuite_out_dir/18HNC069LM
mob_recon --infile ../virulence/seqs/18HNC163LM.fasta --outdir 11_mobsuite_out_dir/18HNC163LM
mob_recon --infile ../virulence/seqs/18HNC194LM.fasta --outdir 11_mobsuite_out_dir/18HNC194LM
mob_recon --infile ../virulence/seqs/18HNC223LM.fasta --outdir 11_mobsuite_out_dir/18HNC223LM


