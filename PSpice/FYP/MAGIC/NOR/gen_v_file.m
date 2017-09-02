clc;clear;

vset = 2.9;     
vclear = -3;
gnd = 0;
vnor = 1.9;   
vz=6;        % voltage code for high impedance setting


seq1=[vz	vclear	vz	vnor	vz	vclear	vz	vnor	vz	vset	vz	vnor	vz	vset	vz	vnor];
seq2=[vz	vz	vclear	vnor	vz	vz	vset	vnor	vz	vz	vclear	vnor	vz	vz	vset	vnor];
seq3=[vset	vz	vz	gnd	vset	vz	vz	gnd	vset	vz	vz	gnd	vset	vz	vz	gnd];
seq4=[gnd	gnd	gnd	vz	gnd	gnd	gnd	vz	gnd	gnd	gnd	vz	gnd	gnd	gnd	vz];

steps1=20.*ones(1,16);
steps2=20.*ones(1,16);
steps3=20.*ones(1,16);
steps4=20.*ones(1,16);



%% Generattion Settings file 1
filename = 'v1.txt';
rt=10e-9;                                   % rise and fall times (seconds) 
num_values = length(seq1);
if (length(steps1)~=length(seq1))
   error('Number of voltage pulses specified must equal number of pulse-widths specified.')
end
time=[];
volts=[];
step_cum=[0, cumsum(steps1)];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = step_cum(i);
    time(2*i) = step_cum(i+1) - rt;
    
    volts(2*i-1) = seq1(i);
    volts(2*i) = seq1(i);
end

time=time(:);
volts=volts(:);

% Write to file
fileID = fopen(filename,'w');
for i=1:length(time)
    fprintf(fileID,'%.13e \t %.13e\n' ,time(i), volts(i));
end
fclose(fileID);

%% Generattion Settings file 2
filename = 'v2.txt';

num_values = length(seq2);
if (length(steps2)~=length(seq2))
   error('Number of voltage pulses specified must equal number of pulse-widths specified.')
end

time=[];
volts=[];
step_cum=[0, cumsum(steps2)];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = step_cum(i);
    time(2*i) = step_cum(i+1) - rt;
    
    volts(2*i-1) = seq2(i);
    volts(2*i) = seq2(i);
end

time=time(:);
volts=volts(:);

% Write to file
fileID = fopen(filename,'w');
for i=1:length(time)
    fprintf(fileID,'%.13e \t %.13e\n' ,time(i), volts(i));
end
fclose(fileID);
%% Generattion Settings file 3
filename = 'v3.txt';

num_values = length(seq3);
if (length(steps3)~=length(seq3))
   error('Number of voltage pulses specified must equal number of pulse-widths specified.')
end

time=[];
volts=[];
step_cum=[0, cumsum(steps3)];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = step_cum(i);
    time(2*i) = step_cum(i+1) - rt;
    
    volts(2*i-1) = seq3(i);
    volts(2*i) = seq3(i);
end

time=time(:);
volts=volts(:);

% Write to file
fileID = fopen(filename,'w');
for i=1:length(time)
    fprintf(fileID,'%.13e \t %.13e\n' ,time(i), volts(i));
end
fclose(fileID);

%% Generattion Settings file 4
filename = 'v4.txt';

num_values = length(seq4);
if (length(steps4)~=length(seq4))
   error('Number of voltage pulses specified must equal number of pulse-widths specified.')
end

time=[];
volts=[];
step_cum=[0, cumsum(steps3)];

% Generate Vectors
for i=1:num_values
    time(2*i-1) = step_cum(i);
    time(2*i) = step_cum(i+1) - rt;
    
    volts(2*i-1) = seq4(i);
    volts(2*i) = seq4(i);
end

time=time(:);
volts=volts(:);

% Write to file
fileID = fopen(filename,'w');
for i=1:length(time)
    fprintf(fileID,'%.13e \t %.13e\n' ,time(i), volts(i));
end
fclose(fileID);