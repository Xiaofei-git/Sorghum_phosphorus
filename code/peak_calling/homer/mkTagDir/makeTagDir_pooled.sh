#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homer_makeTagDir_pooled.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/pooled_makeTag.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/pooled_makeTag.out


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup



#run with option "-tbp 1" and also used the filtered_pooled BAM files
makeTagDirectory ../homer/G3_noP_K27me3_pooled -tbp 1 -single G3_noP_K27me3_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_noP_inp_pooled -tbp 1 -single G3_noP_inp_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_noP_K4me3_pooled -tbp 1 -single G3_noP_K4me3_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_noP_H3_pooled -tbp 1 -single G3_noP_H3_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_P_K27me3_pooled -tbp 1 -single G3_P_K27me3_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_P_inp_pooled -tbp 1 -single G3_P_inp_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_P_K4me3_pooled -tbp 1 -single G3_P_K4me3_pooled_markDup.sorted.bam
makeTagDirectory ../homer/G3_P_H3_pooled -tbp 1 -single G3_P_H3_pooled_markDup.sorted.bam


