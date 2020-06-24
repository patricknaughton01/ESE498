import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plot T Statistic Values')
	parser.add_argument("-f", type=str, help="file to read", default="")
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
			bStat[int(nums[0])].append(np.sqrt(int(nums[2])))
	#	print(bStat)
		
		yval = []
		for i in range(0,len(bStat)):
			yval.append(bStat[i][1])
		
		plt.plot(yval)
	plt.xlabel('Run')
	plt.ylabel('Response')
	plt.title("Response versus Run")
	plt.show()
	
if __name__ == "__main__":
    main()