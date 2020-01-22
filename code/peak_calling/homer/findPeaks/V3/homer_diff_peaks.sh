#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerDiffPeaks_V3.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer_peaks_V3/homerDiffPeaks_V3.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer_peaks_V3/homerDiffPeaks_V3.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer_V3

getDifferentialPeaksReplicates.pl -t G1_P_K4me3_rep1_tagDir G1_P_K4me3_rep2_tagDir -b G1_noP_K4me3_rep1_tagDir G1_noP_K4me3_rep2_tagDir -i G1_P_H3_rep1_tagDir G1_P_H3_rep2_tagDir -genome SorgV3  -style histone -gsize 7e8 > G1_K4me3_diffPeaks.txt
getDifferentialPeaksReplicates.pl -t G3_P_K4me3_rep1_tagDir G3_P_K4me3_rep2_tagDir -b G3_noP_K4me3_rep1_tagDir G3_noP_K4me3_rep2_tagDir -i G3_P_H3_rep1_tagDir G3_P_H3_rep2_tagDir -genome SorgV3  -style histone -gsize 7e8 > G3_K4me3_diffPeaks.txt

getDifferentialPeaksReplicates.pl -t G1_P_K27me3_rep1_tagDir G1_P_K27me3_rep2_tagDir -b G1_noP_K27me3_rep1_tagDir G1_noP_K27me3_rep2_tagDir -i G1_P_H3_rep1_tagDir G1_P_H3_rep2_tagDir -genome SorgV3 -region -size 1000 -minDist 2500 -gsize 7e8 > G1_K27me3_diffPeaks.txt
getDifferentialPeaksReplicates.pl -t G3_P_K27me3_rep1_tagDir G3_P_K27me3_rep2_tagDir -b G3_noP_K27me3_rep1_tagDir G3_noP_K27me3_rep2_tagDir -i G3_P_H3_rep1_tagDir G3_P_H3_rep2_tagDir -genome SorgV3 -region -size 1000 -minDist 2500 -gsize 7e8 > G3_K27me3_diffPeaks.txt
