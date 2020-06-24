import serial
import argparse
import struct
import csv
import math

ROperG = 128

def intToString(num):
	mask = 255
	return chr(num&mask) + chr((num&(mask<<8))>>8) + chr((num&(mask<<16))>>16) + chr((num&(mask<<24))>>24)

def main():
	parser = argparse.ArgumentParser(description='Runs through challenges with different numbers of ROs')

	parser.add_argument("-f", type=str, default="output", help="what to save to")
	parser.add_argument("--start", type=int, default=1024, help="start(minimum)")
	parser.add_argument("--step", type=int, default=128, help="step size")
	parser.add_argument("-n", type=int, default=5, help="number of steps")
	parser.add_argument("-p", type=str, default="COM5", help="port to connect to")

	args = parser.parse_args()
	
	ser = serial.Serial()
	ser.baudrate = 115200
	ser.port = args.p
	ser.open()
	ser.reset_input_buffer()
	ser.reset_output_buffer()
	
	mask = 0
	for i in range(0, (int)(args.start/ROperG)):
		mask = mask << 1
		mask |= 1;
	
	mask_32 = []
	mask_32.append(mask & (2**32-1))
	mask_32.append((mask & ((2**32-1)<<32))>>32)
	mask_32.append((mask & ((2**32-1)<<64))>>64)
	mask_32.append((mask & ((2**32-1)<<96))>>96)
	
	responses = []
	for i in range(0, args.n):
		print("Iteration: " + (str)(i))
		responses.append([])
		# Assign which ring oscillators to use
		for j in range(0, 4):
			msg = bytearray(6)
			msg[0] = ord("m")
			msg[1] = j
			for k in range(0,4):
				msg[k+2] = (mask_32[j] & 255 << 8*k) >> 8*k
#			print(str(mask_32[j]) + str(msg))
			ser.write(msg)
		
		# Collect response
		ser.write("r".encode());
#		print(ser.readline().decode().strip())
		
		line = ser.readline().decode().strip()
		while line != "stop":
#			print(line)
			elements = line.split()
			if len(elements) >= 2:
				while(len(responses[i]) - 1 < (int)(elements[0])):
					responses[i].append([])
				responses[i][(int)(elements[0])].append((int)(elements[1]))
				responses[i][(int)(elements[0])].append((int)(elements[2]))
			line = ser.readline().decode().strip()
		
		# Go to next mask
		for j in range(0, (int)(args.step/ROperG)):
			mask = mask << 1
			mask |= 1;	
		mask_32[0] = mask & (2**32-1)
		mask_32[1] = (mask & ((2**32-1)<<32))>>32
		mask_32[2] = (mask & ((2**32-1)<<64))>>64
		mask_32[3] = (mask & ((2**32-1)<<96))>>96
		
	ser.close()
	
	for i in range(0,len(responses)):
		f = open(args.f+str(i*args.step+args.start)+'.txt','w')
		for j in range(0,len(responses[i])):
			row = str(j) + ' ' + str(responses[i][j][0]) + ' ' + str(responses[i][j][1])
			f.write(row+'\n')
#			print(str(row) + " end " + str(k) + " " + str(i) + " " + str(j))
		f.close()			

if __name__ == "__main__":
	main()
