import argparse
import sys
import matplotlib.pyplot as plt
import numpy as np
import glob

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

    args = parser.parse_args()
    
    responses = []
    freq_data = []
    files = glob.glob(args.path + "/" + args.f + "*.txt")
    if not args.b == "":
        files.insert(0, args.b)
    print("Found {} files".format(len(files)))
    for i, path in enumerate(files):
        try:
            with open(path, "r") as in_file:
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
                s_r = list(traces.items())
                s_r.sort(key=lambda i:i[0])
                s_r_x = np.array([i[0] for i in s_r])
                s_r_y = np.array([np.mean(i[1]) for i in s_r])
                if args.b and i > 0:
                    s_r_y -= responses[0][1]    # subtract off the baseline
                    s_r_y = np.abs(s_r_y)
                std_r_y = np.array([args.k * np.std(i[1]) for i in s_r])
                responses.append((s_r_x, s_r_y, std_r_y, get_prefix(path), len(s_r[0][1])))
                freq_data.append(traces)
        except IOError:
            print("Couldn't open file {}".format(args.filename))
            sys.exit()
            
    """plt.figure(0)
    for i, (k, v) in enumerate(freq_data[0].items()):
        plt.hist(v, histtype='step', label=str(k))
        if i == 4:
            break
    plt.legend(loc='upper right', shadow=True)
    plt.xlabel('Energy')
    plt.ylabel('Frequency')
    plt.title('Histogram of Energy Responses')"""

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
                plt.xlabel('Energy (t-test statistic)')
                plt.ylabel('Frequency')
                plt.title('Histogram of distance (std dev) from baseline ' 
                    'response to different challenges')
                plt.legend(loc='upper right', shadow=True)
                bin_width = bins[1] - bins[0]
                int_start = 10
                bin_start = int(int_start / bin_width)
                int_value = 0
                for i in range(bin_start, len(bins)-1):
                    int_value += n[i] * bin_width
                print(f"Integrated value ({r[3]}) : ", int_value)
    
    plt.figure(1)
    for r in responses:
        if not args.i:
            plt.plot(r[0], r[1], label=r[3])
            plt.fill_between(r[0], r[1]-r[2], r[1]+r[2], alpha=0.5)
        else:
            plt.errorbar(r[0], r[1], yerr=r[2], fmt="x", label=r[3], capsize=3.0)
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

def get_prefix(path):
    filename = path.split("/")[-1]
    filename = filename.split("_")
    return filename[0]

if __name__ == "__main__":
    main()
