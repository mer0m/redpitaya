nbcoeff = 2**11;
coef_size = 16;

IM(1:nbcoeff/2)=sin(linspace(0,nbcoeff/2,nbcoeff/2)/nbcoeff*2*pi)*2**(coef_size-1);
IM(nbcoeff/2+1:nbcoeff)=0;

RE(1:nbcoeff/2)=cos(linspace(0,nbcoeff/2,nbcoeff/2)/nbcoeff*2*pi)*2**(coef_size-1);
RE(nbcoeff/2+1:nbcoeff)=0;

csvwrite('fft_im.dat', round(transpose(IM)))
csvwrite('fft_re.dat', round(transpose(RE)))
