#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homer_makeTagDir.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -t 1-40
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./bam_names.dat)


#this is 2nd run with this option "-tbp 1"
#makeTagDirectory ../homer/${ARRAYFILE}_tagDir -tbp 1 -single ${ARRAYFILE}_markDup.sorted.bam


#this is 3rd run with this option "-tbp 1" and also used filtered BAM files
makeTagDirectory ../homer/${ARRAYFILE}_tagDir -tbp 1 -single ${ARRAYFILE}_markDup.sorted.bam
