#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N gunzip_chip.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=32G
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l d_rt=20:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/gunzip/gunzip.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/gunzip/gunzip.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/chip_fq
cp /sonas-hs/ware/hpc_norepl/data/sorghum_data_sets/Chip_seq/renamed_files/*gz .

gunzip *.gz

