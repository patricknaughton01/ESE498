import subprocess as sp
import argparse

def main():
	parser = argparse.ArgumentParser(description='Go from raw output to graphs')
	parser.add_argument("-n", type=int, help="number of runs", default=10)
	args = parser.parse_args()
	
	list = ""
	for i in range(0, args.n):
		sp.call(["python", "outputToAvgStd.py", "-f", "run"+str(i)+".txt", "-o", "runas"+str(i)+".txt"])
		list += "runas"+str(i)+".txt "
	list = list[:-1]
	
	sp.call(["python", "plotTimeDependence.py", "-f", list])
	sp.call(["python", "plotTtest.py", "-f", list])
	
if __name__ == "__main__":
    main()