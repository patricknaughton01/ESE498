import numpy as np
import argparse
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Plots the output of all challenges with different virus sizes')
	parser.add_argument("-f", type=str, default="output.txt", help="file to take input from")
	parser.add_argument("-o", type=str, default="avgstd.txt", help="file to output the average and standard deviations to")
	args = parser.parse_args()
	
	input = open(args.f,'r').readlines()
	
	lists = []
	for line in input:
		nums = [int(line.split()[0]), int(line.split()[1])]
		while len(lists) < nums[0] + 1:
			lists.append([])
		lists[nums[0]].append(nums[1])
	
	avg = []
	stdev = []
	out = open(args.o,'w')
	for i in range(0, len(lists)):
		out.write(str(i) + ' ' + str(int(round(np.average(lists[i])))) + ' ' + str(int(round(np.std(lists[i])))) + '\n')

	
if __name__ == "__main__":
	main()