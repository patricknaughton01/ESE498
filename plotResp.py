import argparse
import matplotlib.pyplot as plt
import re
import glob
import numpy as np

def main():
	parser = argparse.ArgumentParser(description='Plots the response to challenges')
	parser.add_argument("path", type=str, help="file path to read from")
	parser.add_argument("-f", type=str, help="file prefix to read", default="")
	parser.add_argument("-g", type=int, help="number to graph at once", default=10000)
	args = parser.parse_args()
	
	files = glob.glob(args.path + "/" + args.f + "*.txt")
	iter = 0
	for file in files:
		iter += 1
		f = open(file,'r').readlines()
		temp = file
		temp = re.sub("[^0-9]", "", temp)
		x = []
		y = []
		ystd = []
		for line in f:
			a = line.split()
			x.append(int(a[0]))
			y.append(int(a[1]))
			ystd.append(np.sqrt(int(a[2])))
		plt.errorbar(x, y, yerr=ystd, fmt="x", label=str(temp)+" ROs")
		if iter % args.g == 0:
			plt.title('Response to Challenges')
			plt.xlabel('Challenge')
			plt.ylabel('Response')
			plt.legend(loc='upper right', shadow=True)
			plt.show()
			plt.figure()
	plt.title('Response to Challenges')
	plt.xlabel('Challenge')
	plt.ylabel('Response')
	plt.legend(loc='upper right', shadow=True)
	plt.show()

if __name__ == "__main__":
	main()
