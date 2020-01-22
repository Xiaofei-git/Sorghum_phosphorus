#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N sigPeakAnno.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -t 1-4
#$ -e /sonas-hs/ware/hpc/data/xiaofei/Sorghum/RNAseq/err/diffreps_RNAseq
#$ -o /sonas-hs/ware/hpc/data/xiaofei/Sorghum/RNAseq/out/diffreps_RNAseq


cd /sonas-hs/ware/hpc/data/xiaofei/Sorghum/RNAseq/diffreps_RNAseq


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $1; };}' sig_peaks.dat)
geneExp=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $2; };}' sig_peaks.dat)




annotatePeaks.pl ${ARRAYFILE}_header.bed /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.reNm.fa -gff3 /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.gff3 -gene ${geneExp} > ${ARRAYFILE}_sigPeakAnno.txt

