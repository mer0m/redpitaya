#!/usr/bin/env python

import zmq, time

NB_INPUT = 2
NB_SAMPLE = 8192

context = zmq.Context()
sock = context.socket(zmq.PUB)
sock.bind("tcp://*:9901")

while True:
    time.sleep(0.1)
    with open('/dev/data2ram', 'rb') as f:
        sock.send(f.read(NB_INPUT*NB_SAMPLE*2))
