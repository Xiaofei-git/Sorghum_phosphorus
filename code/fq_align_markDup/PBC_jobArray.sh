#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N pbc_Array.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=2G
#$ -pe threads 4
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=10:30:0
#$ -t 1-40
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/stats
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/stats

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/sorted_bam

ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./bam_names.dat)

#1st run
#bedtools bamtobed -i ${ARRAYFILE}.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n","${ARRAYFILE}.sorted.bam",mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}' >> sorted_bam_pbc.txt



#2nd run, does not work out.
#bedtools bamtobed -i ${ARRAYFILE}.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk 'BEGIN{mt=0;m0=0;m1=0;m2=0;ARRAYFILE=$ARRAYFILE.sorted.bam} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n",ARRAYFILE,mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}' >> sorted_bam_pbc.txt2

#3rd run works but forgot "-bedpe"
#bedtools bamtobed -i ${ARRAYFILE}.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$3,$6}' | sort | uniq -c | awk -v ARRAYFILE=${ARRAYFILE}.sorted.bam 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n",ARRAYFILE,mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}' >> sorted_bam_pbc.txt3

# 4th run, if use "-bedpe", have to sort by read name
samtools view -ub -f 2 -q 30 ${ARRAYFILE}.sorted.bam | samtools sort -n - ${ARRAYFILE}.Filt.rdNm.sorted
bedtools bamtobed -bedpe -i ${ARRAYFILE}.Filt.rdNm.sorted.bam | awk 'BEGIN{OFS="\t"}{print $1,$2,$4,$6,$9,$10}' | sort | uniq -c | awk -v ARRAYFILE=${ARRAYFILE}.Filt.rdNm.sorted.bam 'BEGIN{mt=0;m0=0;m1=0;m2=0} ($1==1){m1=m1+1} ($1==2){m2=m2+1} {m0=m0+1} {mt=mt+$1} END{printf"%s\t%d\t%d\t%d\t%d\t%f\t%f\t%f\n",ARRAYFILE,mt,m0,m1,m2,m0/mt,m1/m0,m1/m2}' >> sorted_bam_pbc.txt4
