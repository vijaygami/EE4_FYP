clc;clear;
load('pulse_data.mat');

pulse_data=[pulse_data(:,1:3), [0;diff(pulse_data(:,3))], pulse_data(:,4:5)];   % add chnage in memristance
pulse_data(pulse_data(:,3)<0,:)=[];                                             % remove erronous results

% device 19-14
b=31648;
e=40909;

b=1;
e=length(pulse_data);

pulse_data = pulse_data(b:e,:);

%pulse_data(abs(pulse_data(:,5))<1,:)=[];            % remove IV data 
pulse_data(abs(pulse_data(:,6))<1e-6,:)=[];            % remove IV data 

figure(1); clf; 
subplot(3,1,1)
plot(pulse_data(:,4))
grid on

subplot(3,1,2)
plot(pulse_data(:,5))
grid on

subplot(3,1,3)
plot(pulse_data(:,3))
grid on

