#PBS -N 01_CA_cont_macs2.Yoshi
#PBS -l nodes=1:ppn=8,mem=80g,walltime=20:00:00
#PBS -q default
#PBS -M xfwang@ku.edu   
#PBS -m abe
#PBS -d /kinbre/xiaofei/Yoshi/fq/Sample_01_CA_cont
#PBS -e /kinbre/xiaofei/Yoshi/err/peakCalling/01_CA_cont_macs2.err
#PBS -o /kinbre/xiaofei/Yoshi/out/peakCalling/01_CA_cont_macs2.out

module unload htseq/0.6.1p1
module load macs2/2.1.0

samtools view -q 10 01_CA_cont.sorted.bam > 01_CA_cont_q10.sorted.bam || exit 1

macs2 callpeak -t 01_CA_cont_q10.sorted.bam -n 01_CA_cont_macs2 --outdir 01_CA_cont_macs2 -B -f BAMPE -g 2.2e9 -q 0.05 --broad || exit 1
