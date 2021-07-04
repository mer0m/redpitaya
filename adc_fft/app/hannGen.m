nb_coeff = 2048 ; % here 2048 is an example for 2**COEFF_ADDR_SIZE
coeff_size = 16 ; % COEFF_SIZE
csvwrite('hann.dat', round(hanning(nb_coeff)*2^(coeff_size-1))); % generate float coefficients and convert to int16
