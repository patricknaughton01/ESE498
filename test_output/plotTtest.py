import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plot T Statistic Values')
	parser.add_argument("-f", type=str, help="files to read, space separated list, first file will be used as a baseline", default="")
	args = parser.parse_args()
	
	files = args.f.split()
	baseline = files[0]
	files = files[1:]
	
	b = open(baseline,'r').readlines()
#	lists = []
#	for line in b:
#		nums = line.split()
#		while int(nums[0]) >= len(lists):
#			lists.append([])
#		lists[int(nums[0])].append(int(nums[1]))
	
	bStat = []
	for line in b:
		nums = line.split()
		while len(bStat) < int(nums[0])+1:
			bStat.append([])
		bStat[int(nums[0])].append(int(nums[0]))
		bStat[int(nums[0])].append(int(nums[1]))
		bStat[int(nums[0])].append(np.sqrt(int(nums[2])))
#	print(bStat)
	
	fStat = []
	for file in files:
		fStat.append([])
		f = open(file,'r').readlines()
		lists = []
#		for line in f:
#			nums = line.split()
#				lists.append([])
#			lists[int(nums[0])].append(int(nums[1]))
		
		for line in f:
			nums = line.split()
			while len(fStat[-1]) < int(nums[0])+1:
				fStat[-1].append([])
			fStat[-1][int(nums[0])].append(int(nums[0]))
			fStat[-1][int(nums[0])].append(int(nums[1]))
			fStat[-1][int(nums[0])].append(np.sqrt(int(nums[2])))
#	print(fStat)
	
	iter = 0
	for i in fStat:
		temp = []
		for j in i:
			temp.append(np.absolute(bStat[j[0]][1]-j[1])/np.sqrt(np.power(bStat[j[0]][2], 2)/128 + np.power(j[2], 2)/128))
		plt.hist(temp, histtype='step', label=files[iter], density=True, bins=50)
		iter+=1
	plt.xlabel('T-test Distance')
	plt.ylabel('Relative Frequency')
	plt.title("T-test Distances, baseline="+baseline)
	plt.legend(loc='upper right', shadow=True)
	plt.show()
	
if __name__ == "__main__":
    main()