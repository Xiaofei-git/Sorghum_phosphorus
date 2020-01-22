#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N G3_P_rep1_macs2.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/macs2/G3_P_rep1_macs2.err2
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/macs2/G3_P_rep1_macs2.out2

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam_markDup

macs2 callpeak -t G3_P_K27me3_rep1_markDup.sorted.bam -c G3_P_inp_rep1_markDup.sorted.bam -n G3_P_K27me3_inp_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05

#macs2 callpeak -t G3_P_K27Ac_rep1_markDup.sorted.bam -c G3_P_inp_rep1_markDup.sorted.bam -n G3_P_K27Ac_inp_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05

macs2 callpeak -t G3_P_K4me3_rep1_markDup.sorted.bam -c G3_P_inp_rep1_markDup.sorted.bam -n G3_P_K4me3_inp_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05


macs2 callpeak -t G3_P_K27me3_rep1_markDup.sorted.bam -c G3_P_H3_rep1_markDup.sorted.bam -n G3_P_K27me3_H3_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05

#macs2 callpeak -t G3_P_K27Ac_rep1_markDup.sorted.bam -c G3_P_H3_rep1_markDup.sorted.bam -n G3_P_K27Ac_H3_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05

macs2 callpeak -t G3_P_K4me3_rep1_markDup.sorted.bam -c G3_P_H3_rep1_markDup.sorted.bam -n G3_P_K4me3_H3_rep1_macs2 --outdir ../macs2_peaks -B -f BAMPE -g 7.38e8 -q 0.05 --broad --broad-cutoff 0.05


