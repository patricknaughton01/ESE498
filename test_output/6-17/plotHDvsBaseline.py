import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plot Hamming Distance with bits removed for one board')
	parser.add_argument("-f", type=str, help="list of files to calculate HD from", default="")
	parser.add_argument("-b", type=int, help="the minimum number of bits to remove", default=0)
	parser.add_argument("-m", type=int, help="the maximum number of bits to remove", default=5)
	args = parser.parse_args()
	
	files = args.f.split()
	baseline = files[0]
	files = files[1:]
	
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
		f = open(file,'r').readlines()
		
		fStat.append([])
		for line in f:
			nums = line.split()
			while len(fStat[-1]) < int(nums[0])+1:
				fStat[-1].append([])
			fStat[-1][int(nums[0])].append(int(nums[0]))
			fStat[-1][int(nums[0])].append(int(nums[1]))
	
	dist = []
	xval = []
	for f in range(0,len(fStat)):
		temp = bStat
		dist.append([])
		for i in range(args.b, args.m):
			dist[-1].append(0)
			while len(xval) <= i-args.b:
				xval.append(i)
			for j in range(0,len(fStat[f])):
				dist[-1][-1] += HD(fStat[f][j][1],temp[fStat[f][j][0]][1])
				fStat[f][j][1] = fStat[f][j][1] >> 1
				temp[fStat[f][j][0]][1] = temp[fStat[f][j][0]][1] >> 1
			dist[-1][-1] /= len(fStat[f])
		plt.plot(xval,dist[-1],label=files[f])
	plt.xlabel('Number of Bits Removed')
	plt.ylabel('Average Hamming Distance')
	plt.title("Hamming Distances versus Bits Removed")
	plt.legend(loc='upper right', shadow=True)
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