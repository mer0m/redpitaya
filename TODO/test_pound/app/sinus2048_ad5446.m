%0->2.5V
%0->65535
l=load("sin2048.dat");
sinad5446 = round((l*4)/65536)*65535;
save -text sinus2048_ad5446.dat sinad5446

