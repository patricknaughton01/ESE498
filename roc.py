import argparse
import pickle
import numpy as np
import scipy.stats
import matplotlib.pyplot as plt

def main():
    parser = argparse.ArgumentParser(description="Plot ROC curves")
    parser.add_argument("file", type=str, help="file with ROC data")
    parser.add_argument("bkey", type=str, help="baseline key value")
    parser.add_argument("-r", type=int, default=100, help="number of challenges tested")
    args = parser.parse_args()

    f = open(args.file, "rb");
    roc = pickle.load(f)
    f.close()
    baseline = roc[args.bkey]
    for k, v in roc.items():
        if k != args.bkey:
            for i in range(len(v)):
                print(k, i, " "*10, end='\r')
                # For each perturbation to the board, create an roc for each
                # possible choice of the t-threshold. v holds an array of
                # (threshold, prob. mass) tuples for each perturbation
                true_pos = np.zeros(args.r + 1)
                false_pos = np.zeros(args.r + 1)
                for qstar in range(args.r + 1):
                    alpha = 1.0 - scipy.stats.binom.cdf(
                        qstar, args.r, min(baseline[i][1], 1.0)) 
                    beta = scipy.stats.binom.cdf(qstar, args.r, min(v[i][1], 1.0))
                    true_pos[qstar] = 1.0 - beta
                    false_pos[qstar] = alpha
                plt.plot(false_pos, true_pos, label=(k + str(v[i][0])))
            break;
    plt.legend(loc='lower right')
    plt.xlabel('False Positive Rate')
    plt.ylabel('True Positive Rate')
    plt.title('ROC curves')
    plt.show()
    print()


if __name__ == "__main__":
    main()

