#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N G1_noP_pooled_homerPeaks.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer_peaks/G1_noP_pooled_homer.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer_peaks/G1_noP_pooled_homer.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer

#parameters: refer to Predicting the human epigenome from dnA motifs


# run with "-style histone" and peak size of 1000, minDist of 2500, and using the filtered bam files
#findPeaks G3_noP_K27me3_pooled -i G3_noP_inp_pooled -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K27me3_inp_pooled_homer.txt
#findPeaks G3_noP_K4me3_pooled -i G3_noP_inp_pooled -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K4me3_inp_pooled_homer.txt
#
#
#findPeaks G3_noP_K27me3_pooled -i G3_noP_H3_pooled -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K27me3_H3_pooled_homer.txt
#findPeaks G3_noP_K4me3_pooled -i G3_noP_H3_pooled -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K4me3_H3_pooled_homer.txt

# 7th run with 2 types of peaks, tight for H3K4me3 and broad for H3K27me3, in fact it is 2nd run but to keep consistent with each rep run.
#findPeaks G3_noP_K27me3_pooled -i G3_noP_inp_pooled -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K27me3_inp_pooled_homer.txt
#findPeaks G3_noP_K4me3_pooled -i G3_noP_inp_pooled -style histone -gsize 7e8 -o ../homer_peaks/G3_noP_K4me3_inp_pooled_homer.txt
#
#
#findPeaks G3_noP_K27me3_pooled -i G3_noP_H3_pooled -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_noP_K27me3_H3_pooled_homer.txt
#findPeaks G3_noP_K4me3_pooled -i G3_noP_H3_pooled -style histone -gsize 7e8 -o ../homer_peaks/G3_noP_K4me3_H3_pooled_homer.txt

#G1 noP pooled

findPeaks G1_noP_K27me3_pooled -i G1_noP_inp_pooled -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G1_noP_K27me3_inp_pooled_homer.txt
findPeaks G1_noP_K4me3_pooled -i G1_noP_inp_pooled -style histone -gsize 7e8 -o ../homer_peaks/G1_noP_K4me3_inp_pooled_homer.txt
findPeaks G1_noP_K27Ac_pooled -i G1_noP_inp_pooled -style histone -gsize 7e8 -o ../homer_peaks/G1_noP_K27Ac_inp_pooled_homer.txt


findPeaks G1_noP_K27me3_pooled -i G1_noP_H3_pooled -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G1_noP_K27me3_H3_pooled_homer.txt
findPeaks G1_noP_K4me3_pooled -i G1_noP_H3_pooled -style histone -gsize 7e8 -o ../homer_peaks/G1_noP_K4me3_H3_pooled_homer.txt
findPeaks G1_noP_K27Ac_pooled -i G1_noP_H3_pooled -style histone -gsize 7e8 -o ../homer_peaks/G1_noP_K27Ac_H3_pooled_homer.txt
