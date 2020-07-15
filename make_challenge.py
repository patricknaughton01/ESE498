import random
import argparse

hex_values="0123456789ABCDEF"

def main():
    parser = argparse.ArgumentParser("Generate random b-bit challenges")
    parser.add_argument("n", type=int, default=1, 
        help="number of challenges to generate")
    parser.add_argument("-b", type=int, default=128,
        help="bits of challenge, rounds down to nearest multiple of 32")
    
    args = parser.parse_args()
    out = (f"#define NUM_CHAL {args.n}\nint32_t "
        f"challenges[NUM_CHAL][{args.b//32}] = {{\n")
    for i in range(args.n):
        entry = "{"
        for j in range(args.b//32):
            num = "0x"
            for k in range(32//4):
                num += random.choice(hex_values)
            entry += num
            if j < args.b//32 - 1:
                entry += ","
            else:
                entry += "}"
        if i < args.n - 1:
            entry += ",\n"
        else:
            entry += "\n};"
        out += entry
    print(out)

if __name__ == "__main__":
    main()
