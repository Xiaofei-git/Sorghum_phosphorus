#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerTrack.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=10:30:0
#$ -t 1-6
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/homer_track
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/homer_track


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./homer_track.dat)

# makeUCSCfile ${ARRAYFILE} -o auto

cd ${ARRAYFILE}
# gunzip *gz

# sort -k1,1 -k2,2n ${ARRAYFILE}.ucsc.bedGraph > ${ARRAYFILE}.sorted.bdg


# remove last line

head -n -1 ${ARRAYFILE}.sorted.bdg > ${ARRAYFILE}_WOlastLine.sorted.bdg

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig  ${ARRAYFILE}_WOlastLine.sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes ${ARRAYFILE}.sorted.bw









