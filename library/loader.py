#!/usr/bin/env python3

import serial
from time import sleep
import sys
import getopt

optlist, args = getopt.getopt(sys.argv[1:], '', ['port=', 'baud='])
optmap = dict(optlist)

print("optmap:", optmap)
port = optmap.get("--port", "/dev/ttyO2")
baud = optmap.get("--baud", 38400)

files = args[:]

print("Port: {} Baud: {}, Forth Files: {}".format(port, baud, " ".join(files)))

line_ending = "\6".encode()

ser = serial.Serial(port, 38400)

def load_file(file):
    with open(file, 'r') as core:
        for line in core.readlines():
            if not line.strip():
                continue

            line = line.rstrip() + "\n"
            print(line)

            ser.write(line.encode())

            res = ser.read_until(line_ending).decode()
            print("result:\t", res.rstrip())

for file in files:
    print("Loading File: ", file)
    load_file(file)

import os
import sys
import readline
import code
import atexit
from pathlib import Path

HISTORY_FILE = str(Path.home() / ".forthwith-history")

if not os.path.isfile(HISTORY_FILE):
    with open(HISTORY_FILE, 'w') as hs:
        hs.write('')

# bind tab as a completion trigger
if "libedit" in readline.__doc__ :
        readline.parse_and_bind( "bind ^I rl_complete" )
else:
        readline.parse_and_bind( "tab: complete" )


readline.read_history_file(HISTORY_FILE)

def read_serial_prompt():
    res = ser.read_until(line_ending)
    res = res.decode().strip('\6')
    res = [ r.strip() for r in res.split("\n") if r.strip() ]

    # if len(res) > 0 and res[0].strip() == line.strip():
        # res.pop(0)
    print("\n".join(res))
    ser.flush()

try:
    while True:
        sleep(0.1)
        while ser.in_waiting:
            read_serial_prompt()

        line = input().strip()
        line += "\n"
        #print("input: ", line.encode())
        ser.write(line.encode())


except (EOFError) as err:
    readline.write_history_file(HISTORY_FILE)
    print("Goodbye.")

ser.close()



