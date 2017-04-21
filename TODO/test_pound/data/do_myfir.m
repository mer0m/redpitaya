fc=1e6
fs=125e6
 wfir=fc/fs/2
b=fir1(127,wfir);
plot(b)
fd = fopen("myfird.dat","w");
fprintf(fd,"%f\n",b);
fclose(fd);

fd = fopen("myfir.dat","w");
fprintf(fd,"%d\n",round(b*2^16));
fclose(fd)

