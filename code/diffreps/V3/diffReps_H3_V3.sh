#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N diffReps_H3_V3.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=8G
#$ -pe threads 4
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/diffreps/diffReps_H3_V3.err2
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/diffreps/diffReps_H3_V3.out2

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bed_markDup_V3

## G1_H3K27me3_H3
#diffReps.pl --mode block --treatment G1_noP_K27me3_rep1_markDup.sorted.bed G1_noP_K27me3_rep2_markDup.sorted.bed --control G1_P_K27me3_rep1_markDup.sorted.bed G1_P_K27me3_rep2_markDup.sorted.bed --btr G1_noP_H3_rep1_markDup.sorted.bed G1_noP_H3_rep2_markDup.sorted.bed --bco G1_P_H3_rep1_markDup.sorted.bed  G1_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G1_H3K27me3_H3_diff_nb.txt
#
## G3_H3K27me3_H3
#diffReps.pl --mode block --treatment G3_noP_K27me3_rep1_markDup.sorted.bed G3_noP_K27me3_rep2_markDup.sorted.bed --control G3_P_K27me3_rep1_markDup.sorted.bed G3_P_K27me3_rep2_markDup.sorted.bed --btr G3_noP_H3_rep1_markDup.sorted.bed G3_noP_H3_rep2_markDup.sorted.bed --bco G3_P_H3_rep1_markDup.sorted.bed  G3_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G3_H3K27me3_H3_diff_nb.txt
#
#
## G1_H3K4me3_H3
#diffReps.pl --window 500 --treatment G1_noP_K4me3_rep1_markDup.sorted.bed G1_noP_K4me3_rep2_markDup.sorted.bed --control G1_P_K4me3_rep1_markDup.sorted.bed G1_P_K4me3_rep2_markDup.sorted.bed --btr G1_noP_H3_rep1_markDup.sorted.bed G1_noP_H3_rep2_markDup.sorted.bed --bco G1_P_H3_rep1_markDup.sorted.bed  G1_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G1_H3K4me3_H3_diff_nb.txt
#
## G3_H3K4me3_H3
#diffReps.pl --window 500 --treatment G3_noP_K4me3_rep1_markDup.sorted.bed G3_noP_K4me3_rep2_markDup.sorted.bed --control G3_P_K4me3_rep1_markDup.sorted.bed G3_P_K4me3_rep2_markDup.sorted.bed --btr G3_noP_H3_rep1_markDup.sorted.bed G3_noP_H3_rep2_markDup.sorted.bed --bco G3_P_H3_rep1_markDup.sorted.bed  G3_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G3_H3K4me3_H3_diff_nb.txt


#2nd run with --pval 0.001
# G1_H3K27me3_H3
diffReps.pl --pval 0.001 --mode block --treatment G1_noP_K27me3_rep1_markDup.sorted.bed G1_noP_K27me3_rep2_markDup.sorted.bed --control G1_P_K27me3_rep1_markDup.sorted.bed G1_P_K27me3_rep2_markDup.sorted.bed --btr G1_noP_H3_rep1_markDup.sorted.bed G1_noP_H3_rep2_markDup.sorted.bed --bco G1_P_H3_rep1_markDup.sorted.bed  G1_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G1_H3K27me3_H3_diff_nb.txt

# G3_H3K27me3_H3
diffReps.pl --pval 0.001 --mode block --treatment G3_noP_K27me3_rep1_markDup.sorted.bed G3_noP_K27me3_rep2_markDup.sorted.bed --control G3_P_K27me3_rep1_markDup.sorted.bed G3_P_K27me3_rep2_markDup.sorted.bed --btr G3_noP_H3_rep1_markDup.sorted.bed G3_noP_H3_rep2_markDup.sorted.bed --bco G3_P_H3_rep1_markDup.sorted.bed  G3_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G3_H3K27me3_H3_diff_nb.txt


# G1_H3K4me3_H3
diffReps.pl --pval 0.001 --window 500 --treatment G1_noP_K4me3_rep1_markDup.sorted.bed G1_noP_K4me3_rep2_markDup.sorted.bed --control G1_P_K4me3_rep1_markDup.sorted.bed G1_P_K4me3_rep2_markDup.sorted.bed --btr G1_noP_H3_rep1_markDup.sorted.bed G1_noP_H3_rep2_markDup.sorted.bed --bco G1_P_H3_rep1_markDup.sorted.bed  G1_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G1_H3K4me3_H3_diff_nb.txt

# G3_H3K4me3_H3
diffReps.pl --pval 0.001 --window 500 --treatment G3_noP_K4me3_rep1_markDup.sorted.bed G3_noP_K4me3_rep2_markDup.sorted.bed --control G3_P_K4me3_rep1_markDup.sorted.bed G3_P_K4me3_rep2_markDup.sorted.bed --btr G3_noP_H3_rep1_markDup.sorted.bed G3_noP_H3_rep2_markDup.sorted.bed --bco G3_P_H3_rep1_markDup.sorted.bed  G3_P_H3_rep2_markDup.sorted.bed --chrlen ../ref/V3_Phytozome12/Sorbi3.0.chr.sizes --report ../diffReps_V3/G3_H3K4me3_H3_diff_nb.txt
