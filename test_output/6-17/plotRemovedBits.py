import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plot Hamming Distance with bits removed')
	parser.add_argument("-f", type=str, help="baseline files to read, space separated list, first file will be used as a baseline", default="")
	parser.add_argument("-c", type=str, help="capacitor files to read, space separated list", default="")
	parser.add_argument("-b", type=int, help="the minimum number of bits to remove", default=0)
	parser.add_argument("-m", type=int, help="the maximum number of bits to remove", default=5)
	args = parser.parse_args()
	
	files = args.f.split()
	baseline = files[0]
	files = files[1:]
	cFiles = args.c.split()
	
	b = open(baseline,'r').readlines()
	
	bStat = []
	for line in b:
		nums = line.split()
		while len(bStat) < int(nums[0])+1:
			bStat.append([])
		bStat[int(nums[0])].append(int(nums[0]))
		bStat[int(nums[0])].append(int(nums[1]))
	
	fStat = []
	for file in files:
		fStat.append([])
		f = open(file,'r').readlines()
		lists = []
		
		for line in f:
			nums = line.split()
			while len(fStat[-1]) < int(nums[0])+1:
				fStat[-1].append([])
			fStat[-1][int(nums[0])].append(int(nums[0]))
			fStat[-1][int(nums[0])].append(int(nums[1]))
	
	cStat = []
	for file in cFiles:
		cStat.append([])
		f = open(file,'r').readlines()
		lists = []
		
		for line in f:
			nums = line.split()
			while len(cStat[-1]) < int(nums[0])+1:
				cStat[-1].append([])
			cStat[-1][int(nums[0])].append(int(nums[0]))
			cStat[-1][int(nums[0])].append(int(nums[1]))
	
	for j in range(0, len(bStat)):
		bStat[j][1] = bStat[j][1] >> args.b
	for j in range(0, len(fStat)):
		for k in range(0, len(fStat[j])):
			fStat[j][k][1] = fStat[j][k][1] >> args.b
	for j in range(0, len(cStat)):
		for k in range(0, len(cStat[j])):
			cStat[j][k][1] = cStat[j][k][1] >> args.b
	
	fDist = []
	cDist = []
	for k in range(args.b, args.m):
		fDist.append(0)
		cDist.append(0)
		num = 0
		for i in fStat:
			for j in i:
				num += 1
				fDist[-1] += HD(bStat[j[0]][1],j[1])
		fDist[-1] /= num
		counter = 0
		num = 0
		for i in cStat:
			for j in i:
				num += 1
				cDist[-1] += HD(bStat[j[0]][1],j[1])
		cDist[-1] /= num
		if (k == 15) or (k == 16):
			print(cDist[-1])
		for j in range(0, len(bStat)):
			bStat[j][1] = bStat[j][1] >> 1
		for j in range(0, len(fStat)):
			for k in range(0, len(fStat[j])):
				fStat[j][k][1] = fStat[j][k][1] >> 1
		for j in range(0, len(cStat)):
			for k in range(0, len(cStat[j])):
				cStat[j][k][1] = cStat[j][k][1] >> 1
	plt.plot(fDist, label="Group 1")
	plt.plot(cDist, label="Group 2")
	plt.xlabel("Number of Bits removed")
	plt.ylabel("Average Hamming Distance")
	plt.title("Average Hamming Distance versus Number of Least Significant Bits Removed")
	plt.legend(loc='upper right', shadow=True)
	
	prop = []
	for i in range(0, len(fDist)):
		if (fDist[i] == 0):
			if (cDist[i] == 0):
				prop.append(0)
			else:
				prop.append(-1)
		else:
			prop.append(cDist[i]/fDist[i])
	plt.figure()
	plt.plot(prop)
	plt.title("Avg Group 2/Avg Group 1 Hamming Distance")
	plt.xlabel("Number of Bits removed")
	plt.show()
	
	
	
def HD(x, y):
	ans = 0
	while (x != 0 or y != 0):
		b1 = x & 1
		b2 = y & 1
		ans+= not(b1==b2)
		x = x >> 1
		y = y >> 1
	return ans
	
if __name__ == "__main__":
    main()
