#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N align_markDup_chip.SM
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -t 1-40
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/trim_align_mark
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/trim_align_mark


cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/chip_fq


ARRAYFILE=$(awk -v line=$SGE_TASK_ID '{if (NR == line) { print $0; };}' ./smp_names.dat)

# did n't use scythe because it showed there is no adapter contamination from the QC and also I don't I don't know what adapters are used for sequencing.
#sickle-1.33
#sickle pe -t sanger -l 50 -f ${ARRAYFILE}_1.fq -r ${ARRAYFILE}_2.fq -o ss.${ARRAYFILE}_R1.fq -p ss.${ARRAYFILE}_R2.fq -s ss.${ARRAYFILE}_single.fq

# BWA: Version: 0.7.10-r789
# samtools: Version: 0.1.19-44428cd
# try to re-run with "-f 2 -q 30" (11.22.16)
bwa mem -t 8 -M ../ref/Sorbi1.31.chr.reNm.fa ss.${ARRAYFILE}_R1.fq ss.${ARRAYFILE}_R2.fq | samtools view -f 2 -q 30 -ubS - | samtools sort - ../sorted_bam/$ARRAYFILE.sorted

#samtools index ../sorted_bam_noExit/$ARRAYFILE.sorted.bam

#Without "|| exit 1", the jobs are completed normally, no stuck/sleeping, so "sorted_bam" are including the bams of "sorted_bam_noExit". Also, the bams are same as "sorted_bam_sge_task_id". So, remove those folders and juste keep "sorted_bam"

#If there are some errors about sorting, try add "AS=TURE"

java -jar /sonas-hs/ware/hpc/home/xwang/software/Picard_2.7.0/picard.jar MarkDuplicates I=../sorted_bam/$ARRAYFILE.sorted.bam O=../sorted_bam_markDup/${ARRAYFILE}_markDup.sorted.bam M=../markDup_matrics/${ARRAYFILE}_markDup_metrics.txt VALIDATION_STRINGENCY=LENIENT REMOVE_DUPLICATES=TRUE

samtools index ../sorted_bam_markDup/${ARRAYFILE}_markDup.sorted.bam

