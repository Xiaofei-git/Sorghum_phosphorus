#PBS -N 01_CA_cont_bwa.Yoshi
#PBS -l nodes=1:ppn=8,mem=4g,walltime=10:00:00
#PBS -q default
#PBS -M xfwang@ku.edu   
#PBS -m abe
#PBS -d /kinbre/xiaofei/Yoshi/fq/Sample_01_CA_cont
#PBS -e /kinbre/xiaofei/Yoshi/err/bwa/bwa_mappedRds.err5
#PBS -o /kinbre/xiaofei/Yoshi/out/bwa/bwa_mappedRds.out5


# bwa mem -t 8 -M ../../ref/LAEVIS_7.1.repeatMasked.fa ss_01_CA_cont_R1.fq ss_01_CA_cont_R2.fq | samtools view -ubS - | samtools sort - 01_CA_cont.sorted || exit 1
# samtools flagstat 01_CA_cont.sorted.bam > 01_CA_cont_flagstat.txt || exit 1
# err2
# samtools index 01_CA_cont.sorted.bam || exit 1
# samtools idxstats 01_CA_cont.sorted.bam > 01_CA_cont_idxstat.txt || exit 1
# err3
# bedtools genomecov -d -split -ibam 01_CA_cont.sorted.bam > 01_CA_cont_genCov.txt || exit 1

# cut -f 3 01_CA_cont_genCov.txt | sort | uniq -c > 01_CA_cont_genCov_UniqSorted.txt || exit 1

# awk -F'\t' '{if ($3>2000)print $0}' 01_CA_cont_genCov.txt > 01_CA_cont_genCov_g2k.txt || exit 1

# 5th run (err5)
bedtools genomecov -split -bg -ibam 01_CA_cont.sorted.bam > ../../bedtools_bg/01_CA_cont_genCov.bedGraph || exit 1



