import serial
import argparse
import math
import time

ROperG = 128

def intToString(num):
	mask = 255
	return chr(num&mask) + chr((num&(mask<<8))>>8) + chr((num&(mask<<16))>>16) + chr((num&(mask<<24))>>24)

def main():
	parser = argparse.ArgumentParser(description='Runs through challenges at uniform time intervals')

	parser.add_argument("-d", type=int, default=60, help="delay between each run in seconds")
	parser.add_argument("-t", type=int, default=3600, help="how long to run in seconds")
	parser.add_argument("-p", type=str, default="COM5", help="port to connect to")

	args = parser.parse_args()
	
	ser = serial.Serial()
	ser.baudrate = 115200
	ser.port = args.p
	ser.open()
	ser.reset_input_buffer()
	ser.reset_output_buffer()
	
	for c in range(0, math.floor(args.t/args.d)):
		f = open('run'+str(c)+'.txt', 'w')
		
		lastRun = time.time()
		
		ser.write("r".encode())
		
		line = ser.readline().decode().strip()
		while line != "stop":
#			print(line)
			elements = line.split()
			if len(elements) >= 2:
				f.write(line+'\n')
			line = ser.readline().decode().strip()
		f.close()
		
		while(time.time() - lastRun < args.d):
			time.sleep(1)
		
	ser.close()

if __name__ == "__main__":
	main()
