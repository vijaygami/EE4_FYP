clc;clear;

vz=6;        %voltage code for high impedance setting

%% Generattion Settings file 1
filename = 'v1.txt';
rt=10e-9;                                   % rise and fall times (seconds) 
vol=[2 0 -3 vz 1];
steps = [1,1,1,1,1];      % Duration of each voltage pulse (seconds)  
num_values = length(vol);

if (length(steps)~=length(vol))
   error('Number of voltage pulses specified must equal number of pulse-widths specified.')
end

time=[];
volts=[];
step_cum=[0, cumsum(steps)];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = step_cum(i);
    time(2*i) = step_cum(i+1) - rt;
    
    volts(2*i-1) = vol(i);
    volts(2*i) = vol(i);
end

time=time(:);
volts=volts(:);
%plot(time, volts)

% Write to file
fileID = fopen(filename,'w');
for i=1:length(time)
    fprintf(fileID,'%.13e \t %.13e\n' ,time(i), volts(i));
end
fclose(fileID);