#!/usr/bin/env python

import struct
import sys

DATA_SIZE = int(sys.argv[2].encode('utf-8'))
NB_INPUT = int(sys.argv[3].encode('utf-8'))
NB_SAMPLE = int(sys.argv[4].encode('utf-8'))

with open(sys.argv[1].encode('utf-8'), 'rb') as f:
    a = list(struct.unpack('%ih'%(NB_SAMPLE*2), f.read(NB_INPUT*NB_SAMPLE*2)))
    #print(a[0::NB_INPUT])
    print(*a[1::NB_INPUT*20], sep="\n")
