clc;clear;
step=0.02e-3;
amp=5;

%% Generattion Settings file 1
filename = 'v1.txt';
rt=10e-6;                       % rise and fall times (seconds)
bin=[0 1 0].*amp;     % binary sequence (specify amplitude heree aswell)
num_values = length(bin);

time=[];
volts=[];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = (i-1)*step;
    time(2*i) = (i)*step - rt;
    
    volts(2*i-1) = bin(i);
    volts(2*i) = bin(i);
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
rt=10e-6;        % rise and fall times
bin=[0 1 0].*amp;    % binary sequence (specify amplitude heree aswell)
num_values = length(bin);

time=[];
volts=[];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = (i-1)*step;
    time(2*i) = (i)*step - rt;
    
    volts(2*i-1) = bin(i);
    volts(2*i) = bin(i);
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
