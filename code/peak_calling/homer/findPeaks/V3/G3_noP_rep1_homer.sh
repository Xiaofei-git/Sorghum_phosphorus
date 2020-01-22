#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N G3_noP_rep1_homerPeaks_V3_3rd.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer_peaks_V3/G3_noP_rep1_homer_3rd.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer_peaks_V3/G3_noP_rep1_homer_3rd.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer_V3



#keep consistent with G3 for parameters


findPeaks G3_noP_K27me3_rep1_tagDir -i G3_noP_H3_rep1_tagDir -region -size 1000 -minDist 2500 -gsize 7e8 -o ../homer_peaks_V3/G3_noP_K27me3_H3_rep1_homer.txt
findPeaks G3_noP_K4me3_rep1_tagDir -i G3_noP_H3_rep1_tagDir -style histone -gsize 7e8 -o ../homer_peaks_V3/G3_noP_K4me3_H3_rep1_homer.txt

