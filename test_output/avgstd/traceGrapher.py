import argparse
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Plots the TDC response from raw TDC values')

	parser.add_argument("-f", type=str, default="", help="space separated list of files to parse")
	args = parser.parse_args()
	
	files = args.f.split()
	
	vals = []
	for i in range(0, len(files)):
		vals.append([])
		lines = open(files[i],'r').readlines()
		for l in lines:
			j = int(l.split()[0])
			y = int(l.split()[1])
			
			while len(vals[i]) < j+1:
				vals[i].append(0)
				
			vals[i][j] = y
		plt.plot(vals[i], label=files[i])
	plt.title("TDC Output from Challenges")
	plt.xlabel("Clock Cycle")
	plt.ylabel("TDC Value")
	plt.legend(loc='upper left', shadow=True)
	plt.show()
	
if __name__ == "__main__":
	main()
