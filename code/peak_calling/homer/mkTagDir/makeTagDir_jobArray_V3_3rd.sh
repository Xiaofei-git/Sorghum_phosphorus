#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homer_makeTagDir_V3_3rd.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -t 1-24
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/V3
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/V3


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_V3_markDup


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./bam_names.dat)

# without "-tbp 1" because it has been remove the duplicates.
#makeTagDirectory ../homer_V3/${ARRAYFILE}_tagDir -single ${ARRAYFILE}_markDup.sorted.bam


# with "-tbp 1" for new version of homer.
makeTagDirectory ../homer_V3/${ARRAYFILE}_tagDir -tbp 1 -single ${ARRAYFILE}_markDup.sorted.bam
