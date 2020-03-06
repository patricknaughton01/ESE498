import argparse
import sys
import matplotlib.pyplot as plt
import numpy as np
import glob

def main():
    parser = argparse.ArgumentParser(description='Plot TDC values')

    parser.add_argument("path", type=str, help="file path to read from")
    parser.add_argument("-f", type=str, help="file prefix to read", default="")
    parser.add_argument("-l", action="store_true", help="log-scale")
    parser.add_argument("-x", action="store_true", help="x log-scale")
    parser.add_argument("--title", type=str, default="", help="title information")

    args = parser.parse_args()
    
    responses = []
    files = glob.glob(args.path + "/" + args.f + "*.txt")
    print("Found {} files".format(len(files)))
    for path in files:
        try:
            with open(path, "r") as in_file:
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
                p = {k:(np.absolute(np.fft.fft(np.array(v)))[1:len(v)//2])**2 
                    for (k, v) in traces.items() }
                total = {k:sum(v) for (k, v) in p.items()}
                if args.l:
                    p = {k:np.log10(v) for (k, v) in p.items()}
                    total = {k:np.log10(v) for (k, v) in total.items()}
                
                s_r = list(total.items())
                s_r.sort(key=lambda i:i[0])
                s_r_x = np.array([i[0] for i in s_r])
                s_r_y = np.array([i[1] for i in s_r])
                responses.append((s_r_x, s_r_y))
        except IOError:
            print("Couldn't open file {}".format(args.filename))
            sys.exit()
    for r in responses:
        plt.plot(r[0], r[1])
    if args.x:
        plt.xscale("log")
    plt.xlabel("Frequency (Hz)")
    y_label = "Power response"
    if args.l:
        y_label += " (log)"
    plt.ylabel(y_label)
    plt.title(
        "Frequency power response ({})".format(args.title))
    plt.show()

if __name__ == "__main__":
    main()
