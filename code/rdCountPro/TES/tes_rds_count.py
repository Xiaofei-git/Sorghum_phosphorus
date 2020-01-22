#!/usr/bin/env python 
# Created by: Xiaofei Wang
# Date: 11/16/2016
# Descript: This code is to count the read counts for selected regions, which are the up- and down- stream
# of TSS

# Inputs: a txt file for TSS positions info, bam file for alignment files, also a fa file for referece for 
# coverage_binned

# Usage: python ******.py TSS.txt my.bam 
# Example: python tss_rds_count.py tss_test.txt ../../TSS/G3_noP_H3_rep2_markDup.sorted.bam testOut2.txt 20 20


import sys
import os
import pysam
import pysamstats

#===========================================================================================================
# Functions:

tssInput = open(sys.argv[1], 'rU')
# give the path for bam file in the second argument
myBam = pysam.AlignmentFile(sys.argv[2])

rdOutput=open(sys.argv[3], 'w')

header=['chr', 'TES_pos']

upstream=int(sys.argv[4])
downstream=int(sys.argv[5])

print upstream, downstream

tesList=[]

# for i in range(-20,21): # should be -1.5 to 1.5k
for i in range(-upstream,downstream+1): # should be -1.5 to 1.5k
	header.append(str(i))
print header

rdOutput.write("\t".join(header)+"\n")

for idx, line in enumerate(tssInput):
	if idx >1:
		cols = line.replace('\n', '').split('\t')
		print cols
		chromosome=cols[0]
		pos=cols[1]
		strand=cols[2]

		if [chromosome,pos,strand] not in tesList:
			tesList.append([chromosome,pos,strand])

			start=int(cols[1])-upstream #should be 1500
			# print start
			end=int(cols[1])+downstream+1 # should be 1501
			# print end
			outList=[chromosome,cols[1]]
			for rec in pysamstats.stat_coverage(myBam, chrom=chromosome, start=start, end=end,truncate=True,pad=True):
				# print rec
				# print rec['chrom'], rec['pos'], rec['reads_all'], rec['reads_pp']
				# print len(rec['chrom'])
				outList.append(str(rec['reads_all']))
			# print outList

				


			if cols[2]=='1':
				rdOutput.write("\t".join(outList)+"\n")
			elif cols[2]=='-1':
				outList2=[chromosome,cols[1]]
				needRev=outList[2:]
				needRev.reverse()
				outList2.extend(needRev)
				# print outList2
				rdOutput.write("\t".join(outList2)+"\n")
			else:
				print "Strand info is incorrect: %s" %(cols[2])

print 'Done!!!'





