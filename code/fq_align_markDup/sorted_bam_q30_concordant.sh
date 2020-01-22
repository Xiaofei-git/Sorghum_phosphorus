#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N bam_q30.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats/bam_q30.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats/bam_q30.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam

samtools view -f 2 -q 30 G1_P_H3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_H3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K27Ac_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K27Ac_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K27me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K27me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K4me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_K4me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_inp_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_P_inp_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_H3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_H3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K27Ac_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K27Ac_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K27me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K27me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K4me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_K4me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_inp_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G1_noP_inp_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_H3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_H3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K27Ac_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K27Ac_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K27me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K27me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K4me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_K4me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_inp_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_P_inp_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_H3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_H3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K27Ac_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K27Ac_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K27me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K27me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K4me3_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_K4me3_rep2.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_inp_rep1.sorted.bam | wc -l
samtools view -f 2 -q 30 G3_noP_inp_rep2.sorted.bam | wc -l
