#!/usr/bin/env python3
import zmq, struct, sys, time

PORT = int(sys.argv[1].encode('utf-8'))
NB_INPUT = int(sys.argv[2].encode('utf-8'))
NB_SAMPLE = int(sys.argv[3].encode('utf-8'))

context = zmq.Context()
sock = context.socket(zmq.SUB)
sock.setsockopt(zmq.SUBSCRIBE, bytes(0))
sock.setsockopt(zmq.CONFLATE, 1)
sock.connect("tcp://192.168.0.200:%i"%PORT)

print("tcp://192.168.0.200:%i"%PORT)
print("port:\t%i\nnb_input:\t%i\nnb_sample:\t%i\n"%(PORT, NB_INPUT, NB_SAMPLE))

i = 0
while True:
	i += 1
	message = sock.recv()
	print("buffer %i"%i)
	buff = list(struct.unpack('%ih'%(NB_SAMPLE*2), message))
	print(*buff[1::NB_INPUT], sep = "\n")
	time.sleep(0.5)
