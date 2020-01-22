#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N bdg2bw_macs2_Peaks.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=3G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/macs2/bdg2bw_macs2_Peaks.err2
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/macs2/bdg2bw_macs2_Peaks.out2



cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/macs2_peaks

#macs2 bdgcmp -t G3_noP_K27Ac_inp_rep1_macs2_treat_pileup.bdg -c G3_noP_K27Ac_inp_rep1_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_noP_K27Ac_inp_rep1.bdg -m FE
#
#macs2 bdgcmp -t G3_noP_K27Ac_H3_rep1_macs2_treat_pileup.bdg -c G3_noP_K27Ac_H3_rep1_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_noP_K27Ac_H3_rep1.bdg -m FE
#
#macs2 bdgcmp -t G3_noP_K27Ac_inp_rep2_macs2_treat_pileup.bdg -c G3_noP_K27Ac_inp_rep2_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_noP_K27Ac_inp_rep2.bdg -m FE
#
#macs2 bdgcmp -t G3_P_K27Ac_inp_rep1_macs2_treat_pileup.bdg -c G3_P_K27Ac_inp_rep1_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_P_K27Ac_inp_rep1.bdg -m FE
#
#
#macs2 bdgcmp -t G3_P_K27Ac_inp_rep2_macs2_treat_pileup.bdg -c G3_P_K27Ac_inp_rep2_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_P_K27Ac_inp_rep2.bdg -m FE
#
#macs2 bdgcmp -t G3_noP_K27Ac_H3_rep2_macs2_treat_pileup.bdg -c G3_noP_K27Ac_H3_rep2_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_noP_K27Ac_H3_rep2.bdg -m FE
#
#macs2 bdgcmp -t G3_P_K27Ac_H3_rep1_macs2_treat_pileup.bdg -c G3_P_K27Ac_H3_rep1_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_P_K27Ac_H3_rep1.bdg -m FE
#
#macs2 bdgcmp -t G3_P_K27Ac_H3_rep2_macs2_treat_pileup.bdg -c G3_P_K27Ac_H3_rep2_macs2_control_lambda.bdg -o ./K27Ac_bigwig/G3_P_K27Ac_H3_rep2.bdg -m FE

cd K27Ac_bigwig/

#sort -k1,1 -k2,2n G3_noP_K27Ac_inp_rep1.bdg > G3_noP_K27Ac_inp_rep1_sorted.bdg
#sort -k1,1 -k2,2n G3_noP_K27Ac_H3_rep1.bdg > G3_noP_K27Ac_H3_rep1_sorted.bdg
#sort -k1,1 -k2,2n G3_noP_K27Ac_inp_rep2.bdg > G3_noP_K27Ac_inp_rep2_sorted.bdg
#sort -k1,1 -k2,2n G3_P_K27Ac_inp_rep1.bdg > G3_P_K27Ac_inp_rep1_sorted.bdg
#sort -k1,1 -k2,2n G3_P_K27Ac_inp_rep2.bdg > G3_P_K27Ac_inp_rep2_sorted.bdg
#sort -k1,1 -k2,2n G3_noP_K27Ac_H3_rep2.bdg > G3_noP_K27Ac_H3_rep2_sorted.bdg
#sort -k1,1 -k2,2n G3_P_K27Ac_H3_rep1.bdg > G3_P_K27Ac_H3_rep1_sorted.bdg
#sort -k1,1 -k2,2n G3_P_K27Ac_H3_rep2.bdg > G3_P_K27Ac_H3_rep2_sorted.bdg


/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_noP_K27Ac_inp_rep1_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_noP_K27Ac_inp_rep1_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_noP_K27Ac_H3_rep1_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_noP_K27Ac_H3_rep1_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_noP_K27Ac_inp_rep2_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_noP_K27Ac_inp_rep2_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K27Ac_inp_rep1_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K27Ac_inp_rep1_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K27Ac_inp_rep2_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K27Ac_inp_rep2_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_noP_K27Ac_H3_rep2_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_noP_K27Ac_H3_rep2_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K27Ac_H3_rep1_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K27Ac_H3_rep1_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K27Ac_H3_rep2_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K27Ac_H3_rep2_sorted.bw




