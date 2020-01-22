#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N bdg2bw_macs2.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=3G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/track
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/track



# used pileup bdg file from genomeCov, then used macs2 to generate fold enrichment track file


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/genoCov

macs2 bdgcmp -t G3_P_K4me3_pooled_markDup.sorted.bam_pileup.bdg -c G3_P_H3_pooled_markDup.sorted.bam_pileup.bdg -o ../macs2_track_pileup/G3_P_K4me3_pooled_FE.bdg -m FE -p 0.00001


macs2 bdgcmp -t G3_P_K27me3_pooled_markDup.sorted.bam_pileup.bdg -c G3_P_H3_pooled_markDup.sorted.bam_pileup.bdg -o ../macs2_track_pileup/G3_P_K27me3_pooled_FE.bdg -m FE -p 0.00001



cd ../macs2_track_pileup/

sort -k1,1 -k2,2n G3_P_K4me3_pooled_FE.bdg > G3_P_K4me3_pooled_FE_sorted.bdg
sort -k1,1 -k2,2n G3_P_K27me3_pooled_FE.bdg > G3_P_K27me3_pooled_FE_sorted.bdg



/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K4me3_pooled_FE_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K4me3_pooled_FE_sorted.bw

/sonas-hs/ware/hpc/home/xwang/software/bg2bigwig/bedGraphToBigWig G3_P_K27me3_pooled_FE_sorted.bdg /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/ref/Sorbi1.31.chr.sizes G3_P_K27me3_pooled_FE_sorted.bw


