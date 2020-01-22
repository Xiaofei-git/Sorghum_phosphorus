#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N genoCov_plot2.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l himem
#$ -l m_mem_free=300G
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=60:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats/genoCov/plot.err2
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats/genoCov/plot.out2

R CMD BATCH plot_genoCov_Sorg.R

