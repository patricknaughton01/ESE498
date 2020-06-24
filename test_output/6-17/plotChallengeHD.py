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
			
		dist = []
		xval = []
		for i in range(args.b, args.m):
			dist.append([])
			for j in range(0,len(bStat)):
				if j == 100:
					continue
				t = HD(bStat[100][1],bStat[j][1])
				while t >= len(dist[-1]):
					dist[-1].append(0)
				while t >= len(xval):
					xval.append(len(xval))
				dist[-1][t] += 1
			for j in range(0, len(bStat)):
				bStat[j][1] = bStat[j][1] >> 1
#			plt.bar(xval,dist[-1], label=str(i)+' Bits Removed')
		x = np.arange(len(xval))
		width=.05
		rects = []
		fig, ax = plt.subplots()
		for i in range(0, len(dist)):
			vals = []
			for j in range(0, len(xval)):
				if len(dist[i]) > j:
					vals.append(dist[i][j])
				else:
					vals.append(0)
			rects.append(ax.bar(x-(len(dist)/2-i)*width, vals, width, label=str(i) + ' Bits Removed'))
		fig.tight_layout()
		ax.set_xlabel('Hamming Distance')
		ax.set_ylabel('Number of Occurences')
		ax.set_title("Hamming Distances for " + f)
		ax.legend(loc='upper right', shadow=True)
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