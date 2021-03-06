#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerPeakAnno_v3.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -t 1-8
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/homerAnno
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/homerAnno


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer_peaks_V3/peakBed


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./overlap_peak.dat)

#intersectBed -u -f 0.50 -a ${ARRAYFILE}_pooled_homer.bed -b ${ARRAYFILE}_rep1_homer.bed | intersectBed -u -f 0.50 -a stdin -b ${ARRAYFILE}_rep2_homer.bed | sort -k1,1n -k2,2n > ${ARRAYFILE}_commonPeak.bed

#intersectBed -u -f 0.50 -a ${ARRAYFILE}_rep1_homer.bed -b ${ARRAYFILE}_rep2_homer.bed | sort -k1,1 -k2,2n > ${ARRAYFILE}_commonPeak.bed


annotatePeaks.pl ${ARRAYFILE}_commonPeak.bed ../../ref/V3_Phytozome12/Sbicolor_454_v3.0.1_chr.fa -gff3 ../../ref/V3_Phytozome12/Sbicolor_454_v3.1.1.gene_exons.gff3 > ${ARRAYFILE}_commonPeakAnno.txt

