#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N subsetData_fq.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -t 1-8
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/subsetData/fq
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/subsetData/fq


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./subset.dat)


#samtools index $ARRAYFILE.sorted.bam

samtools view -hb $ARRAYFILE.sorted.bam 8 > ${ARRAYFILE}_chr8.sorted.bam

samtools sort -n ${ARRAYFILE}_chr8.sorted.bam  ${ARRAYFILE}_chr8_nm.sorted

bedtools bamtofastq -i ${ARRAYFILE}_chr8_nm.sorted.bam -fq ../subsetData/${ARRAYFILE}_chr8_R1.fq -fq2 ../subsetData/${ARRAYFILE}_chr8_R2.fq
