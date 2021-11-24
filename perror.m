clc;
clear all;
%define consts
T=1;%[sec]
for rate=1:5
for threshold=1:5
pe(rate,threshold)=0;
for n=0:threshold
    pe(rate,threshold)=pe(rate,threshold)+(((rate*T).^n).*exp(-rate.*T))./factorial(n);
end
end
end
pe=0.5.*pe;%calculated error probability as wished
figure;
mesh(pe);
title 'Error Probability as function of threshold and rate*T';
xlabel 'threshold';
ylabel 'rate*T';