clear all;
clc;
%define consts
Ptr=1e-3;%[W]
dist=100e3;%[m]
tetta=-pi/2:pi/(180*180):pi/2;%[rad]
Gtr=(1e7).*exp((-1e7).*tetta.^2);%also equals 0 when (tetta>pi/2 ||tetta<-pi/2) from definition
Gr=1e7;
lambda=1.55e-6;%[m]
la=(-5e-5)*dist;%[dB]
LFS=(lambda/(4*pi*dist))^2;
q=1.6e-19;%[Cb]
h=6.6e-34;
c=3e8;%[m/sec]
etta=0.8;
B=1e9;%[Hz]
f_tetta=1/(pi);% for any tetta between -pi/2:pi/2
v=c/lambda;
R=(etta*q)/(h*v);
%calculate recieved power in dB
pt= 10*log10(Ptr);
gt=10*log10(Gtr);
gr=10*log10((Gr));
lfs=10*log10(LFS);
eta=10*log10(etta);
Pr=gt+gr+pt+lfs+eta+la;
%back to Watt
pr_wat=10.^(Pr./10);
SNR1=pr_wat./(2*q*R*B);
avgsnr=mean(SNR1)% includes snr=int(snr*dx)