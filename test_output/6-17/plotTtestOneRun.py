import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plot T Statistic Values')
	parser.add_argument("-f", type=str, help="file to read", default="")
	args = parser.parse_args()
	
	b = open(args.f,'r').readlines()
	
	bStat = []
	for line in b:
		nums = line.split()
		while len(bStat) < int(nums[0])+1:
			bStat.append([])
		bStat[int(nums[0])].append(int(nums[0]))
		bStat[int(nums[0])].append(int(nums[1]))
		bStat[int(nums[0])].append(np.sqrt(int(nums[2])))
#	print(bStat)
	
	baseline = bStat[0]
	tDist = []
	xval = []
	for i in range(1,len(bStat)):
#		xval.append(i)
		tDist.append(np.absolute(baseline[1]-bStat[i][1])/np.sqrt(np.power(baseline[2], 2)/128 + np.power(bStat[i][2], 2)/128))
	
	plt.hist(tDist, histtype='step',density=True, bins=50)
	plt.xlabel('T-test Distance')
	plt.ylabel('Relative Frequency')
	plt.title("T-test Distances")
	plt.show()
	
if __name__ == "__main__":
    main()