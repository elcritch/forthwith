#!/usr/bin/env python3

import serial
from time import sleep
import sys, select
import getopt
import asyncio
from aioconsole import ainput

optlist, args = getopt.getopt(sys.argv[1:], '', ['port=', 'baud='])
optmap = dict(optlist)

print("optmap:", optmap)
port = optmap.get("--port", "/dev/ttyO2")
baud = optmap.get("--baud", 38400)

files = args[:]

print("Port: {} Baud: {}, Forth Files: {}".format(port, baud, " ".join(files)))

line_ending = "\6".encode()

ser = serial.Serial(port, baudrate=baud, timeout=0.2)

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
    # print("res: ", res)
    res = res.decode().strip('\6')
    res = [ r.strip() for r in res.split("\n") if r.strip() ]

    # if len(res) > 0 and res[0].strip() == line.strip():
        # res.pop(0)
    print("\n".join(res))
    ser.flush()

def getinput():
    # line = input()
    hasinput, _, _ = select.select( [sys.stdin], [], [], 0.2 )

    if hasinput:
        lines = sys.stdin.readline()
        line = "".join(lines)
        # print("local|  read line: ", [ l for l in line ])
        return line
    else:
        return ""

# init promptloop = asyncio.get_event_loop()
ser.write("\n".encode())

async def doreadserial():
    try:
        while True:
            await asyncio.sleep(0.1)
            while ser.in_waiting:
                read_serial_prompt()
    except Exception as err:
        return

async def doreadinput():
    try:
        while True:
            await asyncio.sleep(0.1)

            line =  input()
            line += "\n"
            print("local| input: ", line.encode())
            if line:
                # line += "\n"
                # print("local| writing line:", [ l for l in line ])
                ser.write(line.encode())


    except (EOFError) as err:
        readline.write_history_file(HISTORY_FILE)
        print("Goodbye.")

    ser.close()


loop = asyncio.get_event_loop()
tasks = [
    asyncio.ensure_future(doreadserial()),
    asyncio.ensure_future(doreadinput())]
loop.run_until_complete(asyncio.wait(tasks))
loop.close()

