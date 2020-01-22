#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N G1_P_rep2_homerPeaks.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer_peaks/G1_P_rep2_homer.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer_peaks/G1_P_rep2_homer.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer
# 2nd run with "-gsize 7e8"


#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt

# 3rd run with default "-size" and "-minDist"

#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt

#4th run with default "-size" and "-minDist" and "-style histone", don't think it will matter because of "-region", but give a try.

#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt

# 5th run with "-style histone" and peak size of 1000, minDist of 2500
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
#findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt


# 6th run with "-style histone" and peak size of 1000, minDist of 2500, and using the filtered bam files
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
##findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
##findPeaks G3_P_K27Ac_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27Ac_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt

# 7th run with 2 types of peaks, tight for H3K4me3 and broad for H3K27me3.
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_inp_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_inp_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_inp_rep2_homer.txt
#
#
#findPeaks G3_P_K27me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G3_P_K27me3_H3_rep2_homer.txt
#findPeaks G3_P_K4me3_rep2_tagDir -i G3_P_H3_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G3_P_K4me3_H3_rep2_homer.txt


#G1 P rep2
findPeaks G1_P_K27me3_rep2_tagDir -i G1_P_inp_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G1_P_K27me3_inp_rep2_homer.txt
findPeaks G1_P_K4me3_rep2_tagDir -i G1_P_inp_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G1_P_K4me3_inp_rep2_homer.txt
findPeaks G1_P_K27Ac_rep2_tagDir -i G1_P_inp_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G1_P_K27Ac_inp_rep2_homer.txt



findPeaks G1_P_K27me3_rep2_tagDir -i G1_P_H3_rep2_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks/G1_P_K27me3_H3_rep2_homer.txt
findPeaks G1_P_K4me3_rep2_tagDir -i G1_P_H3_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G1_P_K4me3_H3_rep2_homer.txt
findPeaks G1_P_K27Ac_rep2_tagDir -i G1_P_H3_rep2_tagDir -style histone -gsize 7e8 -o ../homer_peaks/G1_P_K27Ac_H3_rep2_homer.txt


