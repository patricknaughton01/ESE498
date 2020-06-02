import argparse
import matplotlib.pyplot as plt
import numpy as np
import csv

def main():
	parser = argparse.ArgumentParser(description='Runs through challenges with different numbers of ROs')

	parser.add_argument("-a", type=str, default="averages.csv", help="averages file")
	parser.add_argument("-s", type=str, default="standarddeviations.csv", help="standard deviation file")

	args = parser.parse_args()
	
	fA = list(csv.reader(open(args.a, "r"), delimiter=","))
	fS = list(csv.reader(open(args.s, "r"), delimiter=","))
#	print(fA)
	
	tDis = []
	for i in range(2, len(fA[0])):
		tDis.append([])
		maxi = 0
		maxv = 0
		for j in range(1, len(fA)):
			if maxv < float(fA[j][i]):
				maxv = float(fA[j][i])
				maxi = j
		
		for j in range(1, len(fA)):
			if j != maxi:
				tDis[i-2].append((float(fA[maxi][i])-float(fA[j][i]))/np.sqrt((np.power(float(fS[maxi][i]), 2)/100) + (np.power(float(fS[j][i]), 2)/100)))
		
		plt.hist(tDis[i-2], histtype='step', label=str(fA[0][i]) + ' ROs', density=True, bins=50)
	plt.xlabel('T-test Distance')
	plt.ylabel('Relative Frequency')
	plt.title("T-test Distances with PRBS")
	plt.legend(loc='upper right', shadow=True)
	plt.show()
	
if __name__ == "__main__":
	main()
