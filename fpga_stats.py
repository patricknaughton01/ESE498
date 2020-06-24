import argparse
import sys
import matplotlib.pyplot as plt
import numpy as np
import glob
import pickle

def main():
    parser = argparse.ArgumentParser(description='Plot TDC values')

    parser.add_argument("path", type=str, help="file path to read from")
    parser.add_argument("-f", type=str, help="file prefix to read", 
        default="")
    parser.add_argument("-l", action="store_true", help="log-scale")
    parser.add_argument("-x", action="store_true", help="x log-scale")
    parser.add_argument("-k", type=float, default=1.0, 
        help="standard deviation bar multiplier")
    parser.add_argument("-i", action="store_true", help="plot individually")
    parser.add_argument("-b", type=str, default="", help="baseline file")
    parser.add_argument("--histogram", action="store_true", help="plot histogram")
    parser.add_argument("--title", type=str, 
        default="Frequency Reponse", help="title")
    parser.add_argument("--leg", type=int, default=0, 
        help="which index of filename to take for legend")
    parser.add_argument("--roc", action="store_true", help="plot roc curve")

    args = parser.parse_args()
    
    responses = []
    files = glob.glob(args.path + "/" + args.f + "*.txt")
    files = sorted(files)
    if not args.b == "":
        files.insert(0, args.b)
    print("Found {} files".format(len(files)))
    for i, path in enumerate(files):
        try:
            with open(path, "r") as in_file:
                lines = in_file.readlines()
                x = []
                y = []
                std_dev = []
                for line in lines:
                    line = line.split(" ")
                    freq = int(line[0])
                    mean = int(line[1])
                    var = int(line[2])
                    x.append(freq)
                    y.append(mean)
                    std_dev.append((var)**0.5)
                x = np.array(x)
                y = np.array(y)
                std_dev = np.array(std_dev)
                if args.b and i > 0:
                    y -= responses[0][1]    # subtract off the baseline
                    y = np.abs(y)
                # Each challenge is run 128 times
                responses.append((x, y, std_dev, get_prefix(path, args.leg), 128))
        except IOError:
            print("Couldn't open file {}".format(args.filename))
            sys.exit()
            
    integrated_values = {}
    if args.b:
        base_response = responses[0]
        responses = responses[1:]
        if args.histogram:
            plt.figure(0)
            for r in responses:
                n, bins, _ = plt.hist(
                    r[1]/np.sqrt((np.power(base_response[2], 2)/base_response[4]) 
                        + (np.power(r[2], 2)/r[4])), 
                    histtype='step', label=r[3], density=True, bins=50)
                plt.xlabel('T-test Distance')
                plt.ylabel('Relative Frequency')
                plt.title("T-test Distances From Unmodified Response")
                plt.legend(loc='upper right', shadow=True)
                bin_width = bins[1] - bins[0]
                for int_start in range(30, 50 + 2, 10):
                    bin_start = int(int_start // bin_width)
                    int_value = 0
                    for i in range(bin_start, len(bins)-1):
                        int_value += n[i] * bin_width
                    if r[3] in integrated_values:
                        integrated_values[r[3]].append((int_start, int_value))
                    else:
                        integrated_values[r[3]] = [(int_start, int_value)]
    print(len(responses))
    if args.roc:
        print(integrated_values.keys())
        print(integrated_values)
        rocf = open("rocf.p", "wb")
        pickle.dump(integrated_values, rocf)
        rocf.close()
    plt.figure(1)
    for r in responses:
        if not args.i:
            plt.plot(r[0], r[1], label=r[3])
            plt.fill_between(r[0], r[1]-r[2], r[1]+r[2], alpha=0.5)
        else:
            plt.errorbar(r[0], r[1], yerr=r[2], fmt="x", label=r[3], capsize=3.0)
            #print(r[4], np.std(r[1]))
    if args.x:
        plt.xscale("log")
    plt.xlabel("Frequency (Hz)")
    y_label = "Energy response"
    if args.l:
        plt.yscale("log")
    plt.ylabel(y_label)
    plt.title(args.title)
    plt.legend(loc='upper left', shadow=True)
    
    plt.show()

def get_prefix(path, ind=0):
    filename = path.split("/")[-1]
    filename = filename.split("_")
    return filename[ind]

if __name__ == "__main__":
    main()