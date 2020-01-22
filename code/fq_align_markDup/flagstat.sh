#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N flagstat.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=16G
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l d_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/flagstats.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/flagstats.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam

samtools flagstat G1_P_H3_rep1.sorted.bam 
samtools flagstat G1_P_H3_rep2.sorted.bam 
samtools flagstat G1_P_K27Ac_rep1.sorted.bam 
samtools flagstat G1_P_K27Ac_rep2.sorted.bam 
samtools flagstat G1_P_K27me3_rep1.sorted.bam 
samtools flagstat G1_P_K27me3_rep2.sorted.bam 
samtools flagstat G1_P_K4me3_rep1.sorted.bam 
samtools flagstat G1_P_K4me3_rep2.sorted.bam 
samtools flagstat G1_P_inp_rep1.sorted.bam 
samtools flagstat G1_P_inp_rep2.sorted.bam 
samtools flagstat G1_noP_H3_rep1.sorted.bam 
samtools flagstat G1_noP_H3_rep2.sorted.bam 
samtools flagstat G1_noP_K27Ac_rep1.sorted.bam 
samtools flagstat G1_noP_K27Ac_rep2.sorted.bam 
samtools flagstat G1_noP_K27me3_rep1.sorted.bam 
samtools flagstat G1_noP_K27me3_rep2.sorted.bam 
samtools flagstat G1_noP_K4me3_rep1.sorted.bam 
samtools flagstat G1_noP_K4me3_rep2.sorted.bam 
samtools flagstat G1_noP_inp_rep1.sorted.bam 
samtools flagstat G1_noP_inp_rep2.sorted.bam 
samtools flagstat G3_P_H3_rep1.sorted.bam 
samtools flagstat G3_P_H3_rep2.sorted.bam 
samtools flagstat G3_P_K27Ac_rep1.sorted.bam 
samtools flagstat G3_P_K27Ac_rep2.sorted.bam 
samtools flagstat G3_P_K27me3_rep1.sorted.bam 
samtools flagstat G3_P_K27me3_rep2.sorted.bam 
samtools flagstat G3_P_K4me3_rep1.sorted.bam 
samtools flagstat G3_P_K4me3_rep2.sorted.bam 
samtools flagstat G3_P_inp_rep1.sorted.bam 
samtools flagstat G3_P_inp_rep2.sorted.bam 
samtools flagstat G3_noP_H3_rep1.sorted.bam 
samtools flagstat G3_noP_H3_rep2.sorted.bam 
samtools flagstat G3_noP_K27Ac_rep1.sorted.bam 
samtools flagstat G3_noP_K27Ac_rep2.sorted.bam 
samtools flagstat G3_noP_K27me3_rep1.sorted.bam 
samtools flagstat G3_noP_K27me3_rep2.sorted.bam 
samtools flagstat G3_noP_K4me3_rep1.sorted.bam 
samtools flagstat G3_noP_K4me3_rep2.sorted.bam 
samtools flagstat G3_noP_inp_rep1.sorted.bam 
samtools flagstat G3_noP_inp_rep2.sorted.bam 
