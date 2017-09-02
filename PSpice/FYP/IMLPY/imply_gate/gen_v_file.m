clc;clear;

vset = 1.3;     
vcond = 0.7; 
vclear = -3;
vset_h =  2.9;
vz=6;        %voltage code for high impedance setting

%% Generattion Settings file 1
filename = 'v1.txt';
rt=10e-9;                                   % rise and fall times (seconds) 
%vol = [vclear	vz	vcond	vclear	vz	vcond	vset_h	vz	vcond	vset_h	vz	vcond];                       % voltage amplitude sequence
vol=[vclear	vz	vcond	vclear	vz	vcond	vset_h	vz	vcond	vset_h	vz	vcond];

steps = [20, 20, 40, 20, 20, 40, 20, 20, 40, 20, 20, 40];      % Duration of each voltage pulse (seconds)  
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

%% Generattion Settings file 2
filename = 'v2.txt';
rt=10e-9;                    % rise and fall times (seconds)  
%vol=[vz	vclear	vset	vz	vset_h	vset	vz	vclear	vset	vz	vset_h	vset];           % voltage amplitude sequence
vol=[vz	vclear	vset	vz	vset_h	vset	vz	vclear	vset	vz	vset_h	vset];
steps = [20, 20, 40, 20, 20, 40, 20, 20, 40, 20, 20, 40];      % Duration of each voltage pulse (seconds)  

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