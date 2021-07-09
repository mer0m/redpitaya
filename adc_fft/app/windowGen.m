pkg load signal
nb_coeff = 2**11 ; % here 2048 is an example for 2**COEFF_ADDR_SIZE
coeff_size = 16 ; % COEFF_SIZE
csvwrite('window.dat', round(hann(nb_coeff)*2^(coeff_size-1))); % generate float coefficients and convert to int16
