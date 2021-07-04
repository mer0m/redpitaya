#!/usr/bin/env python

import zmq, time, sys

NB_INPUT = int(sys.argv[2].encode('utf-8'))
NB_SAMPLE = int(sys.argv[3].encode('utf-8'))

context = zmq.Context()
sock = context.socket(zmq.PUB)
sock.bind("tcp://*:%i"%(int(sys.argv[4].encode('utf-8'))))

while True:
	time.sleep(0.1)
	with open(sys.argv[1].encode('utf-8'), 'rb') as f:
		sock.send(f.read(NB_INPUT*NB_SAMPLE*2))
