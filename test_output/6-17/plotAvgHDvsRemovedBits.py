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
	for f in files:
		b = open(f,'r').readlines()
		
		bStat = []
		for line in b:
			nums = line.split()
			while len(bStat) < int(nums[0])+1:
				bStat.append([])
			bStat[int(nums[0])].append(int(nums[0]))
			bStat[int(nums[0])].append(int(nums[1]))
			
		for i in range(0, len(bStat)):
			bStat[i][1] = bStat[i][1] >> 1
			
		dist = []
		xval = []
		for i in range(args.b, args.m):
			xval.append(i)
			dist.append(0)
			for j in range(1,len(bStat)):
				dist[-1] += HD(bStat[0][1],bStat[j][1])
				bStat[j][1] = bStat[j][1] >> 1
			bStat[0][1] = bStat[0][1] >> 1
			dist[-1] /= len(bStat)
		plt.plot(xval, dist, label=f)
		
	plt.xlabel('Number of Bits Removed')
	plt.ylabel('Average Hamming Distance')
	plt.title("Hamming Distance Between Challenges")
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