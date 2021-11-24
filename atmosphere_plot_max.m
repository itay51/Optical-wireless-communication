%%find the maximum wave length given an excel table with all the input arguments and plot the results
clc;
clear all;
close all;
data=xlsread('astmg173.xls','A1:D2004')

x= data(:,1);
y1=data(:,2);
y2=data(:,3);
y3=data(:,4);
figure;
plot(x,y1,x,y2,x,y3);
grid minor
title('ASTM G173-03 Reference Spectra')
legend('Etr W*m-2*nm-1','Global tilt  W*m-2*nm-1','Direct+circumsolar W*m-2*nm-1');
xlabel('Wavelength nm');
ylabel('Spectral Irradiance W m-2 nm -1');
[max_data1,max_index1]=max(y1);
hold on
plot(x(max_index1),max_data1,'o','MarkerSize',10);
[max_data2,max_index2]=max(y2);
hold on
plot(x(max_index2),max_data2,'o','MarkerSize',10);
[max_data3,max_index3]=max(y3);
hold on
plot(x(max_index3),max_data3,'o','MarkerSize',10);
xlim([250 4000]);
