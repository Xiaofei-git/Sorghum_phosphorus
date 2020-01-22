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
import numpy as np

#===========================================================================================================
# Functions:

tssInput = open(sys.argv[1], 'rU')
# give the path for bam file in the second argument
myBam = pysam.AlignmentFile(sys.argv[2])

rdOutput=open(sys.argv[3], 'w')

tssOut=open('exonTssOut.txt','w')

header=['chr', 'TSS_pos']

# upstream=int(sys.argv[4])
# downstream=int(sys.argv[5])

interpPoint=int(sys.argv[4])

# interpList=[]

# interpList=range(1,interpPoint+1) #wrong for the quary list, should be 1500 points between start and end (sum of exons length)

# for i in range(1,interpPoint+1):
# 	interpList.append(i)

# print upstream, downstream

# for i in range(-20,21): # should be -1.5 to 1.5k
for i in range(1,interpPoint+1): # should be -1.5 to 1.5k
	header.append(str(i))
# print header

rdOutput.write("\t".join(header)+"\n")

ExonCovDic={}

ExonLenDic={}

DicKeys=[]



for idx, line in enumerate(tssInput):

	if idx >0:
		cols = line.replace('\n', '').split(' ')
		# print cols
		chromosome=cols[0]
		strand=cols[1] # for previous tss_rds_count.py, need to flip over if strand is "-" but donot 
		# need do this time because the coordinates is not right like it should be, e.g.
		# 1 -1 68198134 68197132 68197132 68198134 1, it should be
		# 1 -1 68198134 68197132 68198134 68197132 1
		TSS=int(cols[2])
		TES=int(cols[3])
		ExonStart=int(cols[4])
		ExonEnd=int(cols[5])
		rank=int(cols[6])

		if (chromosome,TSS,TES,strand) not in ExonCovDic:
			ExonCovDic[(chromosome,TSS,TES,strand)]=[]
		# different dic with above ExonCovDic
		if (chromosome,TSS,TES,strand) not in ExonLenDic: 
			ExonLenDic[(chromosome,TSS,TES,strand)]=[]
		ExonLenDic[(chromosome,TSS,TES,strand)].append(ExonEnd-ExonStart+1)

		if (chromosome,TSS,TES,strand) not in DicKeys:
			DicKeys.append((chromosome,TSS,TES,strand))

		# print ExonCovDic

		if strand=='1':

			for rec in pysamstats.stat_coverage(myBam, chrom=chromosome, start=ExonStart, end=ExonEnd+1,truncate=True,pad=True):
				ExonCovDic[(chromosome,TSS,TES,strand)].append(rec['reads_all'])
				# print ExonCovDic


		elif strand=='-1':
			outList=[]
			for rec in pysamstats.stat_coverage(myBam, chrom=chromosome, start=ExonStart, end=ExonEnd+1,truncate=True,pad=True):
				outList.append(rec['reads_all'])
			# print outList
			outList.reverse()
			# print outList
			ExonCovDic[(chromosome,TSS,TES,strand)].extend(outList)


# print ExonCovDic

# print ExonCovDic.keys()

# print ExonLenDic


for key in DicKeys:

	exonLenSum=sum(ExonLenDic[key])
	outList2=[key[0],str(key[1])]
	# print outList2
	interpList=(np.linspace(1,exonLenSum,num=interpPoint)).tolist()
	# print interpList


	if key[3]=='1':
		xp=range(1,exonLenSum+1)
		fp=ExonCovDic[key]
		# print len(xp), len(fp), fp
		covInterp=np.interp(interpList,xp,fp)
		covInterp=covInterp.tolist()
		covInterp=map(str,covInterp)
		outList2.extend(covInterp)
		rdOutput.write("\t".join(outList2)+"\n")
		# print "covInterp", covInterp, type(covInterp), outList2
	else:
		ExonCovDic[key].reverse()
		xp=range(1,exonLenSum+1)
		fp=ExonCovDic[key]
		covInterp=np.interp(interpList,xp,fp)
		covInterp=covInterp.tolist()
		covInterp=map(str,covInterp)
		outList2.extend(covInterp)
		rdOutput.write("\t".join(outList2)+"\n")
		# print "covInterp", covInterp,type(covInterp), outList2

# print ExonCovDic
# print ExonLenDic
# print DicKeys
print len(DicKeys)

print 'Done!!!'

lenPro=[]
for item in DicKeys:
	lenPro.append([item[0],str(item[2])])
	# tssOut.write("\t".join([item[0],str(item[2])]+"\n")

print len(lenPro)
# print lenPro


for item in lenPro:
	tssOut.write("\t".join(item) + "\n")





