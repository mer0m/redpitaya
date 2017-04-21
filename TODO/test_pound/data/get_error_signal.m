l=load("pscope_17_1.csv");
t_oscillo=l(:,1);
rf=l(:,2);

ts_oscillo=t_oscillo(end)-t_oscillo(end-1);
ts=ts_oscillo;
fs=1/ts
t=ts:ts:length(t_oscillo)*ts;

figure(1);
plot(t,rf)

%we are in V and fs = 500MHz
%oscillo == Agilent DSO-X 2014A (oscillo infinivision 100MHz, 2Gs/s
%comment retrouver le nb bits (8) ??

f_nco = 3e7;

phi0=0;
cosine=cos(2*pi*f_nco*t+phi0);       %In-phase term
sine=sin(2*pi*f_nco*t+phi0);
ibf=cosine.*rf';
qbf=sine.*rf';





%fil=load('fir_kaiser128_40_int16.dat');COEFF=length(fil);
fil=load('kaiser128_40');COEFF=length(fil);

iaf=filter(fil,1,ibf)(COEFF+1:end);
qaf=filter(fil,1,qbf)(COEFF+1:end);

%plot(iaf(1:10:end))
plot(qaf(1:10:end))

pscope_17_3 = load("pscope_17_3.csv");
plot(pscope_17_3(:,1),pscope_17_3(:,2))


plot(t(COEFF+1:end),qaf,'r',t(COEFF+1:end),pscope_17_3(:,2)(COEFF+1:end));








%figure(2);


