#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N tssRdCount_Array.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=16G
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=10:30:0
#$ -t 1-40
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats/tss_rdCount
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats/tss_rdCount

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup

ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./bam_names.dat)

python /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/codes/fq_align_markDup/TSS/tss_rds_count.py goodtss2.txt ${ARRAYFILE}_markDup.sorted.bam ../tss_count/${ARRAYFILE}_goodtss2_rdCount.txt 1500 1500
