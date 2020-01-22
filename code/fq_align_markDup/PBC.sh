#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N PBC.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l d_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats/pbc.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats/pbc.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam

bedtools bamtobed -i G1_P_H3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_H3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_H3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_H3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K27Ac_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K27Ac_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K27Ac_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K27Ac_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K27me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K27me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K27me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K27me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K4me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K4me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_K4me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_K4me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_inp_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_inp_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_P_inp_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_P_inp_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_H3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_H3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_H3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_H3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K27Ac_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K27Ac_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K27Ac_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K27Ac_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K27me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K27me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K27me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K27me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K4me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K4me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_K4me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_K4me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_inp_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_inp_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G1_noP_inp_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G1_noP_inp_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_H3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_H3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_H3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_H3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K27Ac_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K27Ac_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K27Ac_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K27Ac_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K27me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K27me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K27me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K27me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K4me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K4me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_K4me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_K4me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_inp_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_inp_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_P_inp_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_P_inp_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_H3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_H3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_H3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_H3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K27Ac_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K27Ac_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K27Ac_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K27Ac_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K27me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K27me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K27me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K27me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K4me3_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K4me3_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_K4me3_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_K4me3_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_inp_rep1.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_inp_rep1.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'

bedtools bamtobed -i G3_noP_inp_rep2.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","G3_noP_inp_rep2.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}'



