#!/usr/bin/env python

import struct

DATA_SIZE = 14
NB_INPUT = 2
NB_SAMPLE = 8192

with open("/dev/dataReal_to_ram_1", 'rb') as f:
    a = list(struct.unpack('%ih'%(NB_SAMPLE*2), f.read(NB_INPUT*NB_SAMPLE*2)))
    #print(a[0::NB_INPUT])
    print(*a[1::NB_INPUT*20], sep="\n")
