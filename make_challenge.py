import random
import argparse

hex_values="0123456789ABCDEF"

def main():
    parser = argparse.ArgumentParser("Generate random 128-bit challenges")
    parser.add_argument("n", type=int, default=1, 
        help="number of challenges to generate")
    
    args = parser.parse_args()
    out = f"#define NUM_CHAL {args.n}\nint32_t challenges[NUM_CHAL][4] = {{\n"
    for i in range(args.n):
        entry = "{"
        for j in range(128//32):
            num = "0x"
            for k in range(32//4):
                num += random.choice(hex_values)
            entry += num
            if j < 3:
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
