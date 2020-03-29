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
    parser.add_argument("--title", type=str, 
        default="Frequency Reponse", help="title")

    args = parser.parse_args()
    
    responses = []
    freq_data = []
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
                    count = int(line[1])
                    if freq in traces:
                        traces[freq].append(count)
                    else:
                        traces[freq] = [count]
                s_r = list(traces.items())
                s_r.sort(key=lambda i:i[0])
                s_r_x = np.array([i[0] for i in s_r])
                s_r_y = np.array([np.mean(i[1]) for i in s_r])
                std_r_y = np.array([args.k * np.std(i[1]) for i in s_r])
                responses.append((s_r_x, s_r_y, std_r_y, get_prefix(path)))
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
    
    plt.figure(1)
    for r in responses:
        plt.plot(r[0], r[1], label=r[3])
        plt.fill_between(r[0], r[1]-r[2], r[1]+r[2], alpha=0.5)
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
