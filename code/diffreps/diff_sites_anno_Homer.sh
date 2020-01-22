#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerDiffSitesAnno.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -t 1-4
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/diffreps/annoDiffSites
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/diffreps/annoDiffSites


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/diffReps/diff_site_bed


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./diff_sites.dat)

#intersectBed -u -f 0.50 -a ${ARRAYFILE}_pooled_homer.bed -b ${ARRAYFILE}_rep1_homer.bed | intersectBed -u -f 0.50 -a stdin -b ${ARRAYFILE}_rep2_homer.bed | sort -k1,1n -k2,2n > ${ARRAYFILE}_commonPeak.bed


annotatePeaks.pl ${ARRAYFILE}.bed ../../ref/Sorbi1.31.chr.reNm.fa -gff3 ../../ref/Sorbi1.31.chr.gff3 -go ./ -genomeOntology ./ > ${ARRAYFILE}_diffSites_Anno.txt
