#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N fastqc.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=8G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -t 1-40
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/fastqc
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/fastqc


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/chip_fq


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $1; };}' ./smp_names.dat)


fastqc -o ../fastqc_out ${ARRAYFILE}_1.fq.gz ${ARRAYFILE}_2.fq.gz