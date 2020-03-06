import argparse
import serial
import sys
import datetime
import os
from serial.tools import list_ports

def main():
	parser = argparse.ArgumentParser(
		description="Program to read values output to serial port"
	)
	parser.add_argument(
		"-d", type=str, default="/dev/ttyACM0", help="device to connect to"
	)
	parser.add_argument(
		"-b", type=int, default=115200, help="baud rate"
	)
	default_output = "tdc_out"
	parser.add_argument(
		"-o", type=str, default=default_output, 
		help="output file prefix, no spaces"
	)
	
	prefix = "output/"
	if not os.path.isdir(prefix):
		os.mkdir(prefix)
	
	args = parser.parse_args()
	if " " in args.o or args.o == "":
		args.o = default_output
	
	# Open a serial port. Start with cmd line arg, then try any available
	# port if that fails
	s = None
	try:
		s = serial.Serial(args.d, baudrate=args.b, timeout=None)
		print("Opened port at {}".format(args.d))
	except serial.SerialException:
		print("Couldn't open port at {}".format(args.d))
		available_port_names = [str(p.device) for p in list_ports.comports()]
		for name in available_port_names:
			try:
				s = serial.Serial(name, baudrate=args.b, timeout=None)
			except serial.SerialException:
				print("Couldn't open port at {}".format(name))
		if s is None:
			print("Couldn't find an avaiable serial port, exiting...")
			sys.exit()
	assert (s is not None), "Couldn't open a serial port"
	
	# Clear the input buffer so that we read cleanly
	while(s.in_waiting > 0):
	    s.reset_input_buffer()
	
	timestamp = datetime.datetime.now().strftime("%Y_%m_%d_%H_%M_%S")
	filename = prefix + "/" + args.o + "_" + timestamp + ".txt"
	out_file = open(filename, "w")
	values_read = 0
	try:
		if not s.is_open:
			s.open()
		# C program on the Zynq won't start until we send it some byte
		s.write(b'c')
		print("Collecting data")
		print("Press Ctrl-C to stop and save current data")
		while True:
			value = s.read_until(b'\n').decode("utf-8")
			out_file.write(value)
			values_read += 1
			sys.stdout.write("\033[K")
			print("\rRead {} values".format(values_read), end="")
	except KeyboardInterrupt:
		if values_read > 0:
			print("\nSaving data")
			s.close()
		else:
			print("\nNothing read, deleting file")


if __name__ == "__main__":
	main()
