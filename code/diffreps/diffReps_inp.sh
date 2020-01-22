#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N diffReps_inp.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=8G
#$ -pe threads 4
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=10:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/diffreps/diffReps_inp.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/diffreps/diffReps_inp.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bed_markDup


# G1_H3K27me3_inp
diffReps.pl --treatment G1_noP_K27me3_rep1_markDup.sorted.bed G1_noP_K27me3_rep2_markDup.sorted.bed --control G1_P_K27me3_rep1_markDup.sorted.bed G1_P_K27me3_rep2_markDup.sorted.bed --btr G1_noP_inp_rep1_markDup.sorted.bed G1_noP_inp_rep2_markDup.sorted.bed --bco G1_P_inp_rep1_markDup.sorted.bed  G1_P_inp_rep2_markDup.sorted.bed --chrlen ../ref/Sorbi1.31.chr.sizes --report ../diffReps/G1_H3K27me3_inp_diff_nb.txt

# G3_H3K27me3_inp
diffReps.pl --treatment G3_noP_K27me3_rep1_markDup.sorted.bed G3_noP_K27me3_rep2_markDup.sorted.bed --control G3_P_K27me3_rep1_markDup.sorted.bed G3_P_K27me3_rep2_markDup.sorted.bed --btr G3_noP_inp_rep1_markDup.sorted.bed G3_noP_inp_rep2_markDup.sorted.bed --bco G3_P_inp_rep1_markDup.sorted.bed  G3_P_inp_rep2_markDup.sorted.bed --chrlen ../ref/Sorbi1.31.chr.sizes --report ../diffReps/G3_H3K27me3_inp_diff_nb.txt


# G1_H3K4me3_inp
diffReps.pl --treatment G1_noP_K4me3_rep1_markDup.sorted.bed G1_noP_K4me3_rep2_markDup.sorted.bed --control G1_P_K4me3_rep1_markDup.sorted.bed G1_P_K4me3_rep2_markDup.sorted.bed --btr G1_noP_inp_rep1_markDup.sorted.bed G1_noP_inp_rep2_markDup.sorted.bed --bco G1_P_inp_rep1_markDup.sorted.bed  G1_P_inp_rep2_markDup.sorted.bed --chrlen ../ref/Sorbi1.31.chr.sizes --report ../diffReps/G1_H3K4me3_inp_diff_nb.txt

# G3_H3K4me3_inp
diffReps.pl --treatment G3_noP_K4me3_rep1_markDup.sorted.bed G3_noP_K4me3_rep2_markDup.sorted.bed --control G3_P_K4me3_rep1_markDup.sorted.bed G3_P_K4me3_rep2_markDup.sorted.bed --btr G3_noP_inp_rep1_markDup.sorted.bed G3_noP_inp_rep2_markDup.sorted.bed --bco G3_P_inp_rep1_markDup.sorted.bed  G3_P_inp_rep2_markDup.sorted.bed --chrlen ../ref/Sorbi1.31.chr.sizes --report ../diffReps/G3_H3K4me3_inp_diff_nb.txt

