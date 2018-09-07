#!/usr/bin/python3

import serial
from time import sleep
import sys

port = sys.argv[1]
files = sys.argv[2:]

print("Port: {}".format(port))

ser = serial.Serial(port, 115200, timeout=0.05)

def load_file(file):
    with open(file, 'r') as core:
        for line in core.readlines():
            if not line.strip():
                continue

            line = line.rstrip()
            # print(line)

            ser.write(line.encode())

            res = ser.read_until("\3").decode()
            print("result:\t", res)

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

try:
    while True:
        line = input()

        line += "\n"
        ser.write(line.encode())

        res = ser.read_until('\3').decode()

        res = res.split("\n")
        if res[0].strip() == line.strip():
            res.pop(0)
        print("\n".join(res))

except (EOFError) as err:
    readline.write_history_file(HISTORY_FILE)
    print("Goodbye.")

ser.close()


