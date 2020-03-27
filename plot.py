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
    parser.add_argument("-t", type=str, default="TDC Run", help="plot title")

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
                    traces[freq]['y'].append(count)
                    traces[freq]['x'].append(t/100)
                else:
                    traces[freq] = {'x':[t/100], 'y':[count]}
            to_plot = traces
            f_response = None
            if args.m == "f":
                ft = {k:{'x':[i*10000 for i in range(1, len(v['y'])//2)], 'y':np.absolute(np.fft.fft(np.array(v['y'])))[1:len(v['y'])//2]} 
                    for (k, v) in traces.items() }
                """if args.l:
                    ft = {k:np.log10(v) for (k, v) in ft.items()}"""
                to_plot = ft
            elif args.m == "p":
                p = {k:{'x':[i*10000 for i in range(1, len(v['y'])//2)], 'y':(np.absolute(np.fft.fft(np.array(v['y'])))[1:len(v['y'])//2])**2} 
                    for (k, v) in traces.items() }
                total = {k:sum(v['y']) for (k, v) in p.items()}
                """if args.l:
                    p = {k:np.log10(v) for (k, v) in p.items()}
                    total = {k:np.log10(v) for (k, v) in total.items()}"""
                to_plot = p
                if args.r:
                    f_response = total
            
            if not args.r:
                plt.figure(0)    
                if args.f is not None and "," in args.f:
                    fs = args.f.split(",")
                    for f in fs:
                        if int(f) in to_plot:
                            plt.plot(to_plot[int(f)]['x'], to_plot[int(f)]['y'], label=str(f))
                elif args.f is not None and int(args.f) in to_plot:
                    plt.plot(to_plot[int(args.f)]['x'], to_plot[int(args.f)]['y'], label=args.f)
                else:
                    # If they didn't display 
                    for freq in to_plot:
                        plt.plot(to_plot[freq]['x'],to_plot[freq]['y'], label=str(freq))
                plt.legend(loc='upper right', shadow=True)
                x_label = "Time (us)"
                if args.m != "t":
                    x_label = "Frequency (Hz)"
                if args.x:
                    x_label += " (log-scale)"
                    plt.xscale("log")
                plt.xlabel(x_label)
                y_label = args.m
                if y_label == "t":
                    y_label = "Propagation Depth"
                if args.l:
                    plt.yscale("log")
                    y_label += " (log-scale)"
                plt.ylabel(y_label)
                plt.title(args.t)
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
