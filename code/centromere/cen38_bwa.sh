#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N cen38_map.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=6:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/centromere
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/centromere


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/centromere




# BWA: Version: 0.7.10-r789
# samtools: Version: 0.1.19-44428cd
bwa mem -t 8 -a -M ../ref/Sorbi1.31.chr.reNm.fa cen38.fa | samtools view -ubS - | samtools sort - cen38_map.sorted

samtools index cen38_map.sorted.bam



