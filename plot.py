import argparse
import sys
import matplotlib.pyplot as plt
import numpy as np

def main():
    parser = argparse.ArgumentParser(description='Plot TDC values')

    parser.add_argument("filename", type=str, help="filename to read from")
    parser.add_argument("-f", type=str, help='"freq" to display')
    parser.add_argument("-m", type=str, default="t", help="mode [t, f, p]")
    parser.add_argument("-l", action="store_true", help="log-scale")
    parser.add_argument("-x", action="store_true", help="x log-scale")
    parser.add_argument("-r", action="store_true", 
        help="plot response, only used if -m=p")

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
            to_plot = traces
            f_response = None
            if args.m == "f":
                ft = {k:np.absolute(np.fft.fft(np.array(v)))[1:len(v)//2] 
                    for (k, v) in traces.items() }
                if args.l:
                    ft = {k:np.log10(v) for (k, v) in ft.items()}
                to_plot = ft
            elif args.m == "p":
                p = {k:(np.absolute(np.fft.fft(np.array(v)))[1:len(v)//2])**2 
                    for (k, v) in traces.items() }
                total = {k:sum(v) for (k, v) in p.items()}
                if args.l:
                    p = {k:np.log10(v) for (k, v) in p.items()}
                    total = {k:np.log10(v) for (k, v) in total.items()}
                to_plot = p
                if args.r:
                    f_response = total
            
            if not args.r:
                plt.figure(0)    
                if args.f is not None and "," in args.f:
                    fs = args.f.split(",")
                    for f in fs:
                        if int(f) in to_plot:
                            plt.plot(to_plot[int(f)], label=str(f))
                elif args.f is not None and int(args.f) in to_plot:
                    plt.plot(to_plot[int(args.f)], label=args.f)
                else:
                    # If they didn't display 
                    for freq in to_plot:
                        plt.plot(to_plot[freq], label=str(freq))
                plt.legend(loc='upper right', shadow=True)
                x_label = "Time (clock ticks)"
                if args.m != "t":
                    x_label = "Frequency (bins)"
                if args.x:
                    x_label += " (log-scale)"
                    plt.xscale("log")
                plt.xlabel(x_label)
                y_label = args.m
                if args.l:
                    y_label += " (log-scale)"
                plt.ylabel(y_label)
                plt.title("TDC runs")
                plt.show()
            
            if args.r and f_response is not None:
                plt.figure(1)
                s_r = list(f_response.items())
                s_r.sort(key=lambda i:i[0])
                s_r_x = np.array([i[0] for i in s_r])
                s_r_y = np.array([i[1] for i in s_r])
                if args.x:
                    s_r_x = np.log10(s_r_x)
                plt.plot(s_r_x, s_r_y)
                plt.title("Individual frequency response")
                plt.show()
    except IOError:
        print("Couldn't open file {}".format(args.filename))
        sys.exit()

if __name__ == "__main__":
    main()
