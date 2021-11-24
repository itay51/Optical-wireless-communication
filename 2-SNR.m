clc;
close all;
clear all;
nsp=1:0.001:4;
f=(1257671.798)./nsp;


plot(nsp,f);
title('SNRout as a Function of Nsp ')
xlabel('Nsp');
ylabel('SNRout');
grid minor