#!/usr/bin/python3 

import serial
from time import sleep
import sys

port = sys.argv[1]
file = sys.argv[2]

print("Port: {}, File: {}".format(port, file))

ser = serial.Serial(port, 115200, timeout=0.1)

with open(file, 'r') as core:
    for line in core.readlines():
        if not line.strip():
            continue

        line = line.rstrip()
        print(line)

        ser.write(line.encode())

        res = ser.read_until("\3").decode()
        print("result:\n", res)

# while True:
#     data = ser.read(9999)
#     if len(data) > 0:
#         print 'Got:', data

#     sleep(0.5)
#     print 'not blocked'

ser.close()


