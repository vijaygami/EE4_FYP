clc;clear;
load iv_static.mat;
load iv_switch.mat; 
M = csvread('pspice_hi_sample_rate.csv',1,1);      % load PspiceData.mat;
%M = csvread('test.csv',1,1);      % load PspiceData.mat;


ips=M(:,1);
vps=M(:,2);

%%
N=length(isw);

vd=diff(vsw);
cd=diff(isw);

b=300;
e=459;

figure(1);clf
subplot(2,1,1); 
hold on 
plot(vsw(b:e), 1000*isw(b:e), 'lineWidth', 1)
plot(vps,1000*ips ,'lineWidth', 1)
grid on; hold off; box on


legend ('Experimental Data', 'PSpice Model', 'location', 'best')
title('Simulated and Experimental IV Charachteristic Response', 'fontWeight', 'normal')
xlabel('Voltage [V]')
ylabel('Current [mA]')
xlim([-2.1, 2.1])
ylim([-1.2, 1.2]*0.1)


subplot(2,1,2);
plot([1:e-b+1]*50e-3 , vsw(b:e), 'lineWidth', 1);
title('Input Voltage Waveform', 'fontWeight', 'normal')
xlabel('Time [Seconds]')
ylabel('Voltage [V]')
box on; grid on; 
ylim([-2.1, 2.1])


polyfitcoef(vsw(b:e), isw(b:e), [5, 3, 1]);


%% finding MSE
ips = resample(ips,160,length(ips));
vps = resample(vps,160,length(vps));

vps=circshift(vps, 40);
ips=circshift(ips, 40);




figure(2); clf
hold on
plot(ips);
plot(isw(b:e));
hold off
legend('ps', 'sw')


% remove outliers introduced due to resampling
ips(41:43)=[];
vps(41:43)=[];
isw(b+41:b+43)=[];
vsw(b+41:b+43)=[];



% relative MSE
sqrt( (1/length(vps)).*( sum(((vps-vsw(b:e-3)).^2)./vsw(b:e-3)) + sum(((ips-isw(b:e-3)).^2)./isw(b:e-3)) ) ).*100 




