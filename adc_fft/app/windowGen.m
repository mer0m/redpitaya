#!/usr/bin/octave-cli

pkg load signal

win = argv(){1};
nb_coeff = 2**eval(argv(){2}) ; % here 2048 is an example for 2**COEFF_ADDR_SIZE
coeff_size = eval(argv(){3}) ; % COEFF_SIZE

eval(char(strcat('csvwrite("', win, '.dat", round(', win, '(nb_coeff)*2^(coeff_size-1)));'))); % generate nb_coeff float coefficients and convert to coeff_size bits
