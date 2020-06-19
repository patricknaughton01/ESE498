import argparse
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Takes traces and produces an energy graph')

	parser.add_argument("-f", type=str, default="", help="space separated list of files")
	parser.add_argument("-d", action="store_true", help="subtract DC")

	args = parser.parse_args()
	
	files = args.f.split()
	
	energy = []
	for f in files:
		energy.append([])
		lines = open(f,'r').readlines()
		sum = []
		count = []
		for l in lines:
			chal = int(l.split()[0])
			while chal >= len(energy[-1]):
				energy[-1].append(0)
				sum.append(0)
				count.append(0)
			count[chal] += 1
			temp = int(l.split()[2])
			energy[-1][chal] += temp * temp
			if args.d:
				sum[chal] += temp
		for i in range(0, len(energy[-1])):
			energy[-1][i] /= count[i]
			energy[-1][i] -= sum[i]*sum[i]/(count[i]*count[i])
		plt.plot(energy[-1])
	plt.xlabel("Challenge")
	plt.ylabel("Energy")
	plt.title("Energy Response to Challenges")
	plt.show()

if __name__ == "__main__":
	main()
