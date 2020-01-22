#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N bam_rmDup_counts.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats/bam_rmDup_counts.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats/bam_rmDup_counts.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup

samtools view G1_P_H3_rep1_markDup.sorted.bam | wc -l
samtools view G1_P_H3_rep2_markDup.sorted.bam | wc -l
samtools view G1_P_K27Ac_rep1_markDup.sorted.bam | wc -l
samtools view G1_P_K27Ac_rep2_markDup.sorted.bam | wc -l
samtools view G1_P_K27me3_rep1_markDup.sorted.bam | wc -l
samtools view G1_P_K27me3_rep2_markDup.sorted.bam | wc -l
samtools view G1_P_K4me3_rep1_markDup.sorted.bam | wc -l
samtools view G1_P_K4me3_rep2_markDup.sorted.bam | wc -l
samtools view G1_P_inp_rep1_markDup.sorted.bam | wc -l
samtools view G1_P_inp_rep2_markDup.sorted.bam | wc -l
samtools view G1_noP_H3_rep1_markDup.sorted.bam | wc -l
samtools view G1_noP_H3_rep2_markDup.sorted.bam | wc -l
samtools view G1_noP_K27Ac_rep1_markDup.sorted.bam | wc -l
samtools view G1_noP_K27Ac_rep2_markDup.sorted.bam | wc -l
samtools view G1_noP_K27me3_rep1_markDup.sorted.bam | wc -l
samtools view G1_noP_K27me3_rep2_markDup.sorted.bam | wc -l
samtools view G1_noP_K4me3_rep1_markDup.sorted.bam | wc -l
samtools view G1_noP_K4me3_rep2_markDup.sorted.bam | wc -l
samtools view G1_noP_inp_rep1_markDup.sorted.bam | wc -l
samtools view G1_noP_inp_rep2_markDup.sorted.bam | wc -l
samtools view G3_P_H3_rep1_markDup.sorted.bam | wc -l
samtools view G3_P_H3_rep2_markDup.sorted.bam | wc -l
samtools view G3_P_K27Ac_rep1_markDup.sorted.bam | wc -l
samtools view G3_P_K27Ac_rep2_markDup.sorted.bam | wc -l
samtools view G3_P_K27me3_rep1_markDup.sorted.bam | wc -l
samtools view G3_P_K27me3_rep2_markDup.sorted.bam | wc -l
samtools view G3_P_K4me3_rep1_markDup.sorted.bam | wc -l
samtools view G3_P_K4me3_rep2_markDup.sorted.bam | wc -l
samtools view G3_P_inp_rep1_markDup.sorted.bam | wc -l
samtools view G3_P_inp_rep2_markDup.sorted.bam | wc -l
samtools view G3_noP_H3_rep1_markDup.sorted.bam | wc -l
samtools view G3_noP_H3_rep2_markDup.sorted.bam | wc -l
samtools view G3_noP_K27Ac_rep1_markDup.sorted.bam | wc -l
samtools view G3_noP_K27Ac_rep2_markDup.sorted.bam | wc -l
samtools view G3_noP_K27me3_rep1_markDup.sorted.bam | wc -l
samtools view G3_noP_K27me3_rep2_markDup.sorted.bam | wc -l
samtools view G3_noP_K4me3_rep1_markDup.sorted.bam | wc -l
samtools view G3_noP_K4me3_rep2_markDup.sorted.bam | wc -l
samtools view G3_noP_inp_rep1_markDup.sorted.bam | wc -l
samtools view G3_noP_inp_rep2_markDup.sorted.bam | wc -l
