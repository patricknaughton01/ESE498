import serial

ser = serial.Serial()
ser.baudrate = 115200
ser.port = 'COM5'
ser.open()

msg = bytearray(6)
msg[0] = ord('m')
msg[1] = 2
msg[2] = 255
msg[3] = 255
msg[4] = 255
msg[5] = 255
#print(msg)
ser.write(msg)

line = ''
while line == '':
	line = ser.readline()
print(line)

ser.close()
