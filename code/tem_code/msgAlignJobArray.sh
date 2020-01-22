#PBS -N map_MSG_jobArrays.SJM
#PBS -l nodes=1:ppn=4,mem=2000m,walltime=10:00:00
#PBS -q default
#PBS -M xfwang@ku.edu
#PBS -m a
#PBS -t 1-1152
#PBS -d /kinbre/xiaofei/SJM_data/32way_multiparentalPopAna/MSG/demul_MSG_5lanes/
#PBS -e /kinbre/xiaofei/SJM_data/32way_multiparentalPopAna/err/MSG_align/map_MSG_jobArray.err
#PBS -o /kinbre/xiaofei/SJM_data/32way_multiparentalPopAna/out/MSG_align/map_MSG_jobArray.out

ARRAYFILE=$(awk -v line=${PBS_ARRAYID} '{if (NR == line) { print $0; };}' ${PBS_O_WORKDIR}/data.dat)


scythe -a ../illumina_adapters_MSG.fa -o sc.$ARRAYFILE.fq $ARRAYFILE.fq || exit 1
sickle se -f sc.$ARRAYFILE.fq -l 50 -t sanger -o ss.$ARRAYFILE.fq || exit 1
bwa mem -t 4 -M /kinbre/xiaofei/SJM_data/32way_multiparentalPopAna/ref/dmel_5.55_bsk.fasta ss.$ARRAYFILE.fq | samtools view -ubS - | samtools sort - ../sorted_bam/$ARRAYFILE.MSG.sorted || exit 1
java -Xmx1024m -jar /scratch/xiaofei/softwares/picard/picard-tools-1.102/AddOrReplaceReadGroups.jar I=../sorted_bam/$ARRAYFILE.MSG.sorted.bam O=../RG/$ARRAYFILE.MSG.sorted.bam SO=coordinate RGID=SeqRUN# RGLB=$ARRAYFILE.MSG.sorted.bam RGPL=illumina RGPU=$ARRAYFILE.MSG.sorted.bam RGSM=$ARRAYFILE.MSG.sorted.bam VALIDATION_STRINGENCY=LENIENT || exit 1
samtools index ../RG/$ARRAYFILE.MSG.sorted.bam ../RG/$ARRAYFILE.MSG.sorted.bam.bai || exit 1
