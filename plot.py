import argparse
import sys
import matplotlib.pyplot as plt

def main():
	parser = argparse.ArgumentParser(description='Plot TDC values')

	parser.add_argument("filename", type=str, help="filename to read from")
	parser.add_argument("-f", type=str, help='"freq" to display')

	args = parser.parse_args()

	try:
		with open(args.filename, "r") as in_file:
			lines = in_file.readlines()
			traces = {}
			for line in lines:
				line = line.split(" ")
				freq = int(line[0])
				t = int(line[1])
				count = int(line[2])
				if freq in traces:
					traces[freq].append(count)
				else:
					traces[freq] = [count]
			if args.f is not None and "," in args.f:
				to_plot = args.f.split(",")
				for f in to_plot:
					if int(f) in traces:
						plt.plot(traces[int(f)], label="10^" + str(f))
			elif args.f is not None and int(args.f) in traces:
				plt.plot(traces[int(args.f)], label="10^" + args.f)
			else:
				# If they didn't display 
				for freq in traces:
					plt.plot(traces[freq], label="10^" + str(freq))
			plt.legend(loc='upper right', shadow=True)
			plt.xlabel('Time (clock ticks)')
			plt.ylabel('Delay line count')
			plt.show()
	except IOError:
		print("Couldn't open file {}".format(args.filename))
		sys.exit()

if __name__ == "__main__":
	main()
