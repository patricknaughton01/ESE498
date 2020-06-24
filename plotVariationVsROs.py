import argparse
import matplotlib.pyplot as plt
import re
import glob
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plots the response to challenges')
	parser.add_argument("path", type=str, help="file path to read from")
	parser.add_argument("-f", type=str, help="file prefix to read", default="")
	args = parser.parse_args()
	
	files = glob.glob(args.path + "/" + args.f + "*.txt")
	iter = 0
	x = []
	y = []
	for file in files:
		iter += 1
		f = open(file,'r').readlines()
		x.append(int(re.sub("[^0-9]", "", file)))
		avgs = []
		stds = []
		for line in f:
			a = line.split()
			avgs.append(int(a[1]))
			stds.append(np.sqrt(int(a[2])))
		y.append(np.std(avgs))
	plt.plot(x, y, 'bx', linewidth=0, )
	plt.title('Variation versus number of Ring Oscillators')
	plt.xlabel('Number of ROs')
	plt.ylabel('Variance across Challengess')
	plt.show()
	
	print(x[y.index(max(y))])

if __name__ == "__main__":
	main()
