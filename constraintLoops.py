import argparse
import os

parser = argparse.ArgumentParser(
    description="Automatically generate constraints to allow combo loops"
)

parser.add_argument("n", type=int, help="Number of loops")
#parser.add_argument("g", type=int, help="Number of virus groups")
#parser.add_argument("s", type=int, help="Size of each group")

args = parser.parse_args()

#prefix = "tdc.srcs/constrs_1/new/"
path = "loops.xdc"

#if not os.path.exists(prefix):
#    os.makedirs(prefix)

with open(path, "w") as f:
    for i in range(args.n):
        f.write("set_property ALLOW_COMBINATORIAL_LOOPS TRUE "
        "[get_nets design_1_i/top_0/inst/virus1/genblk1[{}].ringOsc/out];\n".format(i))
print("Wrote {} ROs constraints "
      "to {}".format(args.n, path))

