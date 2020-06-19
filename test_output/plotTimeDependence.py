import argparse
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Plot T Statistic Values')
	parser.add_argument("-f", type=str, help="files to read, space separated list", default="")
	parser.add_argument("-c", type=int, help="total number of challenges used", default=1000)
	args = parser.parse_args()
	
	files = args.f.split()
	
	x = []
	y = []
	for c in range(0, args.c):
		y.append([])
#		first = True
#		prev = 0
		for file in files:
			f = open(file,'r').readlines()
			for line in f:
				if int(line.split()[0]) == c:
#					if first:
#						prev = int(line.split()[1])
#						first = False
#					else:
					y[c].append(int(line.split()[1]))
#						prev = int(line.split()[1])
					if c == 0:
						temp = file
						for i in temp:
							if not i.isdigit():
								temp = temp.replace(i,'')
						x.append(int(temp))
					break
		plt.plot(x,y[c])

	plt.xlabel('Time (minutes)')
	plt.ylabel('Change in Response')
	plt.title("Change Since Previous Response")
	plt.show()
	
	plt.figure()
	avgs = []
	for i in range(0, len(y)):
		for j in range(0, len(y[i])):
			while len(avgs) - 1 < j:
				avgs.append(0)
			avgs[j] += y[i][j]
	for i in range(0, len(avgs)):
		avgs[i] /= len(y)
	plt.plot(x,avgs)
	plt.xlabel('Time (minutes)')
	plt.ylabel('Change in Response')
	plt.title('Average Change since Previous Response over 1000 Challenges')
	plt.show()
	
if __name__ == "__main__":
    main()