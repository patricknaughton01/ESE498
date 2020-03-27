import argparse
import sys
import matplotlib.pyplot as plt
import numpy as np

def main():
    parser = argparse.ArgumentParser(description='Plot FR')

    parser.add_argument("filename", type=str, help="filename to read from")
    parser.add_argument("-l", action="store_true", help="log-scale")
    parser.add_argument("-x", action="store_true", help="x log-scale")
    parser.add_argument("-m", type=str, default="p", help="mode")
    parser.add_argument("-t", type=str, default="Pk-Pk", help="title")
    
    args = parser.parse_args()

    try:
        with open(args.filename, "r") as in_file:
            lines = in_file.readlines()
            traces = {}
            for line in lines:
                line = line.split(" ")
                freq = int(line[0])
                count = int(line[1])
                if freq in traces:
                    traces[freq].append(count)
                else:
                    traces[freq] = [count]
            to_plot = traces
            plt.figure(1)
            s_r = list(traces.items())
            s_r.sort(key=lambda i:i[0])
            s_r_x = np.array([i[0] for i in s_r])
            s_r_y = np.array([i[1] for i in s_r])
            plt.plot(s_r_x, s_r_y)
            if args.x:
                plt.xscale("log")
            if args.l:
                plt.yscale("log")
            plt.title("Frequency response ({})".format(args.t))
            plt.show()
    except IOError:
        print("Couldn't open file {}".format(args.filename))
        sys.exit()

if __name__ == "__main__":
    main()
