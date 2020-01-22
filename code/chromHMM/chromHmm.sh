#!/bin/bash
# specify BASH shell
#$ -S /bin/bash
#$ -N chip-seq_chromHMM.Sorg
# run job in the current working directory where qsub is executed from
#$ -cwd
# specify that the job requires 16GB of memory
#$ -l m_mem_free=4G
#$ -pe threads 8
# help scheduling if you know how long job will run (here: 2 hours, 30 min, zero secs)
#$ -l h_rt=30:30:0
#$ -e /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/err/chromHMM/chromHMM_allSmp_OneRun.err
#$ -o /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode/out/chromHMM/chromHMM_allSmp_OneRun.out

cd /sonas-hs/ware/hpc_norepl/data/xwang/sorghum_encode

#run with -f -- fold thresh hold

#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar BinarizeBam -f 6 ./ref/Sorbi1.31.chr.sizes Track_Files markFile.txt chipSeq_sorgState

#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar BinarizeBam ./ref/Sorbi1.31.chr.sizes sorted_bam_markDup markFile_noP_allSmp.txt chipSeq_sorgState_allSmp_noP
#
#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar BinarizeBam ./ref/Sorbi1.31.chr.sizes sorted_bam_markDup markFile_P_allSmp.txt chipSeq_sorgState_allSmp_P

java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar BinarizeBam ./ref/Sorbi1.31.chr.sizes sorted_bam_markDup markFile_allSmp.txt chipSeq_sorgState_allSmp

#Exception in thread "main" java.lang.IllegalArgumentException: On this data the INFORMATION initialization strategy can only support 4 states. Check if the binarization was done correctly, and if so use the RANDOM or LOAD options for more states
#at edu.mit.compbio.ChromHMM.ChromHMM.informationInitializeNested(ChromHMM.java:1651)
#at edu.mit.compbio.ChromHMM.ChromHMM.buildModel(ChromHMM.java:804)
#at edu.mit.compbio.ChromHMM.ChromHMM.main(ChromHMM.java:6412)


#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState chipSeq_sorgStateOut 10 Sorg

# so chnage state to 4 only with chip-seq data

#13 means version 1.3

#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState chipSeq_sorgStateOut 4 sorg13


#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState chipSeq_sorgStateOut 6 sorg13

#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState_allSmp_noP chipSeq_sorgState_allSmp_noP_out 4 sorg13
#java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState_allSmp_P chipSeq_sorgState_allSmp_P_out 4 sorg13

java -mx4000M -jar /sonas-hs/ware/hpc/home/xwang/software/ChromHMM/ChromHMM.jar learnModel -p 0 chipSeq_sorgState_allSmp chipSeq_sorgState_allSmp_out 4 sorg13




