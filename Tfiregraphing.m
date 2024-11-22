close all; clc; clear;
%%% Fire data import
datain = readmatrix('C:\Users\Alex\Desktop\BSLIDAQmultisens\Logs\1839___21_11_24data 1.xlsx');

modifieddata = datain(1:2:end,:);
timesTot = modifieddata(:,1);
LOXsup = modifieddata(:,23);
LOXline = modifieddata(:,24);
LOXinlet = modifieddata(:,25);
LOXmanif = modifieddata(:,26);
FULsup = modifieddata(:,27);
FULline = modifieddata(:,28);
FULinlet = modifieddata(:,29);
FULmanif = modifieddata(:,30);
OXweight = modifieddata(:,33);
FULweight = modifieddata(:,34);

tzero = timesTot(1);
times = timesTot - tzero;

figure(1);
plot(times, LOXsup, 'g', times, LOXline, 'g-', times, LOXinlet, 'g.', times, FULsup, 'r', times, FULline, 'r-', times, FULinlet, 'r.')
title('11/21/2024 Flow test pressure data')
xlabel('Time (s)')
ylabel('Pressure (psia)')
legend('LOX supply', 'LOX line', 'LOX inlet', 'KER Supply', 'KER line', 'KER inlet')

figure(2);
plot(times, OXweight, 'g' , times, FULweight, 'r')
title('11/21/2024 Flow test weight data')
xlabel('Time (s)')
ylabel('Mass (kg)')
legend('LOX', 'Kerosene')