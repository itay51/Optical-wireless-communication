clc;
close all;
clear all;
phi=0:0.001:2*pi;
A=15;
f=0.5*cos(A)*(1+cos(phi))-0.5*sin(A)*sin(phi);
%f=0.5*(cos(A+phi)+cos(A));

plot(phi,f);
xlim ([0 2*pi]);
title('Output Voltage Signal as a Function of the Phase ')
xlabel('Phase [Rad]');
ylabel('Vm(T)[V]');
grid minor
x=(0.1*10^-3:0.1*10^-3:(10-0.1)*10^-3);
y=(0.1*10^-3:0.1*10^-3:(4-0.1)*10^-3);
[X,Y]=meshgrid(x,y);