import argparse

parser = argparse.ArgumentParser(
    description="Automatically generate constraints to allow combo loops"
)

parser.add_argument("n", type=int, help="Number of loops")

args = parser.parse_args()

path = "tdc.srcs/constrs_1/new/loops.xdc"

with open(path, "w") as f:
    for i in range(args.n):
        f.write("set_property ALLOW_COMBINATORIAL_LOOPS TRUE "
        "[get_nets design_1_i/top_0/inst/virus1/genblk1[{}]."
        "ringOsc/out];\n".format(i))
print("Wrote {} loop constraints to {}".format(args.n, path))

