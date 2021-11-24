clc;
clear all;
%define consts
threshold=1000;%can be changed as desired
T=1;%[sec]
rate=2;%[#/sec]%can be changed as desired
bound=floor(threshold);
pe=0;
for n=0:bound
    pe=pe+(((rate*T).^n).*exp(-rate.*T))./factorial(n);
end
pe=0.5*pe;%calculated error probability as wished
