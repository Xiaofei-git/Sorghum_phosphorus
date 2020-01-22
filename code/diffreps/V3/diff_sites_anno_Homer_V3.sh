#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homerDiffSitesAnno_V3.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -t 1-4
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/diffreps/annoDiffSites
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/diffreps/annoDiffSites


#cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/diffReps_2nd/diff_site_bed
cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/diffReps_V3/diff_site_bed


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./diff_sites_V3.dat)


# wrong gff3.
#annotatePeaks.pl ${ARRAYFILE}.bed ../../ref/V3_Phytozome12/Sbicolor_454_v3.0.1_chr.fa -gff3 ../../ref/V3_Phytozome12/Sbicolor_454_v3.1.1.repeatmasked_assembly_v3.0.1_chr.gff3 -go ./ -genomeOntology ./ -gsize 7e8 > ${ARRAYFILE}_Anno.txt


annotatePeaks.pl ${ARRAYFILE}.bed SorgV3 > ${ARRAYFILE}_Anno.txt
