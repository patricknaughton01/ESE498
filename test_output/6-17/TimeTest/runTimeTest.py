import serial
import argparse
import math
import time

def main():
	parser = argparse.ArgumentParser(description='Runs through challenges at uniform time intervals')

	parser.add_argument("-d", type=int, default=60, help="delay between each run in seconds")
	parser.add_argument("-i", type=int, default=10, help="number of iterations")
	parser.add_argument("-s", type=int, default=0, help="initial time to wait")
	parser.add_argument("-p", type=str, default="COM5", help="port to connect to")

	args = parser.parse_args()
	
	ser = serial.Serial()
	ser.baudrate = 115200
	ser.port = args.p
	ser.open()
	ser.reset_input_buffer()
	ser.reset_output_buffer()
	
	time.sleep(args.s)
	
	for c in range(0, args.i):
		f = open('run'+str(c)+'.txt', 'w')
		
		print('run ' + str(c))
		
		ser.write("r".encode())
		
		line = ser.readline().decode().strip()
		while line != "stop":
#			print(line)
			elements = line.split()
			if len(elements) >= 2:
				f.write(line+'\n')
			line = ser.readline().decode().strip()
		f.close()
		
		lastRun = time.time()
		
		while(time.time() - lastRun < args.d):
			time.sleep(1)
		
	ser.close()

if __name__ == "__main__":
	main()
