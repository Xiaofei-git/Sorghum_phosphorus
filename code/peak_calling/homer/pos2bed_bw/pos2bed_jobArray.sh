#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N homer2bed.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 4
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=10:30:0
#$ -t 1-24
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/homer/homer2bed
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/homer/homer2bed


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/homer_peaks


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./pos2bed_homer.dat)

# the issue is that it won't output the original count for the 6th column no matter you use "-5" or not. I have already changed the code but also have another method to do this.
#pos2bed.pl -bed ${ARRAYFILE}



grep -v '#' ${ARRAYFILE}.txt | cut -f 1-6 | awk -v OFS='\t' '{print $2,$3-1,$4,$1,$6,$5}' > peakBed/${ARRAYFILE}.bed
