e#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerOverlapPeak.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -t 1-8
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/homerOverlap
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/homerOverlap


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer_peaks/peakBed_w_count


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ../overlap_peak.dat)

intersectBed -u -f 0.50 -a ${ARRAYFILE}_pooled_homer.bed -b ${ARRAYFILE}_rep1_homer.bed | intersectBed -u -f 0.50 -a stdin -b ${ARRAYFILE}_rep2_homer.bed | sort -k1,1n -k2,2n > ${ARRAYFILE}_commonPeak.bed
