#PBS -N 01_CA_cont_homer.Yoshi
#PBS -l nodes=1:ppn=8,mem=10g,walltime=12:00:00
#PBS -q default
#PBS -M xfwang@ku.edu   
#PBS -m abe
#PBS -d /kinbre/xiaofei/Yoshi/fq/Sample_01_CA_cont
#PBS -e /kinbre/xiaofei/Yoshi/err/homer/01_CA_cont_homer.err3
#PBS -o /kinbre/xiaofei/Yoshi/out/homer/01_CA_cont_homer.out3

# 1st run
#makeTagDirectory 01_CA_cont_homer -single 01_CA_cont.sorted.bam || exit 1
#findPeaks 01_CA_cont_homer -region -F 0 -C 0 -o 01_CA_cont_homer/01_CA_cont_peaks.txt || exit 1

# 3rd run
findPeaks 01_CA_cont_homer -region -size 1000 -minDist 2500 -F 0 -C 0 -o 01_CA_cont_homer/01_CA_cont_peaks_broader.txt || exit 1


# 2nd run
#makeTagDirectory 01_CA_cont_homer_2ndRun -tbp 1 -single 01_CA_cont.sorted.bam || exit 1
#findPeaks 01_CA_cont_homer_2ndRun -region -F 0 -C 0 -o 01_CA_cont_homer_2ndRun/01_CA_cont_peaks_2ndRuns.txt || exit 1