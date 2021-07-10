#!/usr/bin/octave-cli

nb_coeff = 2**eval(argv(){1}) ; % here 2048 is an example for 2**COEFF_ADDR_SIZE
coeff_size = eval(argv(){2}) ; % COEFF_SIZE

IM(1:nb_coeff/2)=sin(linspace(0,nb_coeff/2,nb_coeff/2)/nb_coeff*2*pi)*2**(coeff_size-1);
IM(nb_coeff/2+1:nb_coeff)=0;

RE(1:nb_coeff/2)=cos(linspace(0,nb_coeff/2,nb_coeff/2)/nb_coeff*2*pi)*2**(coeff_size-1);
RE(nb_coeff/2+1:nb_coeff)=0;

csvwrite('fft_im.dat', round(transpose(IM)))
csvwrite('fft_re.dat', round(transpose(RE)))
