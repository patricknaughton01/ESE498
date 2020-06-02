import numpy as np
import argparse
import csv
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Plots the output of all challenges with different virus sizes')
	parser.add_argument("-f", type=str, default="output.csv", help="file to take input from")
	args = parser.parse_args()
	
	input = list(csv.reader(open(args.f, "r"), delimiter=","))
	
#	print(input)
	
	ROs = []
	for i in range(1, len(input[0])):
		temp = int(input[0][i], 16)
		counter = 0
		while temp > 0:
			counter += 1
			temp = temp >> 1
		ROs.append(counter*128)
#	print(ROs)
	
	challenges = []
	for i in range(1, len(input)):
		while  len(challenges) <= int(input[i][0]):
			challenges.append([])
		for j in range(1, len(input[i])):
			while len(challenges[int(input[i][0])]) <= j:
				challenges[int(input[i][0])].append([])
			challenges[int(input[i][0])][j].append(int(input[i][j]))
#	print(challenges)
	
	avgs = []
	stdev = []
	stdev2 = []
	for i in range(0, len(challenges)):
		while len(avgs) <= i:
			avgs.append([])
			stdev.append([])
			stdev2.append([])
		for j in range(1, len(challenges[i])):
			while len(avgs[i]) <= j:
				avgs[i].append([])
				stdev[i].append([])
				stdev2[i].append([])
			avgs[i][j] = np.mean(challenges[i][j])
			stdev[i][j] = np.std(challenges[i][j])
			sum = 0
			squares = 0
			for k in challenges[i][j]:
				sum += k
				squares += k*k
			stdev2[i][j] = np.sqrt(squares/len(challenges[i][j]) - sum/len(challenges[i][j]) * sum/len(challenges[i][j]))
		if [] in avgs[i]:
			avgs[i].remove([])
		if [] in stdev[i]:
			stdev[i].remove([])
		if [] in stdev2[i]:
			stdev2[i].remove([])
	if [] in avgs:
		avgs.remove([])
	if [] in stdev:
		stdev.remove([])
	if [] in stdev2:
		stdev2.remove([])
#	print(avgs)
#	print(stdev)
#	print(stdev2)

	f1 = open('averages.csv', 'w')
	f2 = open('standarddeviations.csv', 'w')
	f3 = open('standarddeviations2.csv', 'w')
	row = 'Challenge\\Number of ROs'
	for i in range(0,len(ROs)):
		row += ','+str(ROs[i])
	f1.write(row+'\n')
	f2.write(row+'\n')
	f3.write(row+'\n')
	for i in range(0, len(avgs)):
		row = str(i)
		for j in range(0, len(avgs[i])):
			row += ',' + str(avgs[i][j])
		f1.write(row+'\n')
	for i in range(0, len(stdev)):
		row = str(i)
		for j in range(0, len(avgs[i])):
			row += ',' + str(stdev[i][j])
		f2.write(row+'\n')
	for i in range(0, len(stdev2)):
		row = str(i)
		for j in range(0, len(avgs[i])):
			row += ',' + str(stdev2[i][j])
		f3.write(row+'\n')
	f1.close()
	f2.close()
	f3.close()
	
	for i in range(0,len(avgs)):
		plt.plot(ROs, avgs[i], label='challenge '+str(i))
	plt.ylabel('Energy Response (without DC)')
	plt.xlabel('Number of Ring Oscillatoris in Power Virus')
	plt.legend()
	plt.show()
	
	
if __name__ == "__main__":
	main()