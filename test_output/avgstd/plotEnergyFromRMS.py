import argparse
import matplotlib.pyplot as plt
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Takes RMS measurements and produces an energy graph')

	parser.add_argument("-f", type=str, default="", help="Files to plot")

	args = parser.parse_args()
	
	files = args.f.split()
	for f in files:
		lines = open(f,'r').readlines()
		nums = []
		avg = []
		std = []
		x = []
		for l in lines:
			chal = int(l.split()[0])
			out = int(l.split()[1])
			while len(nums) - 1 < chal:
				nums.append([])
			nums[chal].append(out)
		
		for a in range(0, len(nums)):
			x.append(a)
			avg.append(np.average(nums[a]))
			std.append(np.std(nums[a]))
		plt.errorbar(x, avg, yerr=std, fmt="x")
	plt.xlabel("Challenge")
	plt.ylabel("Energy")
	plt.title("Energy Response to Challenges")
	plt.show()
		

if __name__ == "__main__":
	main()
