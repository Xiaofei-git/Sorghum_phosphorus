#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N bam2bed_Array_V3.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 4
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -t 1-24
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/diffreps
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/diffreps

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_V3_markDup

ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./bam_names.dat)


bedtools bamtobed -i ${ARRAYFILE}_markDup.sorted.bam > ../sorted_bed_markDup_V3/${ARRAYFILE}_markDup.sorted.bed
