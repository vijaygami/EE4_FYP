%% Import data from text file.
% Script for importing the pulse data in file 'Raw Data.txt'
% Saves the parsed data

%% Initialize variables.
filename = '\\icnas3.cc.ic.ac.uk\vsg12\Desktop\FYP\FYP\Models\Matlab\Data\Raw Data.txt';
delimiter = {',',' ','='};

%% Format string for each line of text:
%   column1: text (%q)
%	column2: double (%f)
%   column3: text (%q)
%	column4: double (%f)
%   column5: text (%q)
%	column6: text (%q)
%   column7: double (%f)
%	column8: text (%q)
%   column9: text (%q)
%	column10: double (%f)
%   column11: text (%q)
%	column12: text (%q)
%   column13: double (%f)
%	column14: text (%q)
%   column15: text (%q)
%	column16: text (%q)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%q%f%q%f%q%q%f%q%q%f%q%q%f%q%q%q%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
W = dataArray{:, 1};
VarName2 = dataArray{:, 2};
B = dataArray{:, 3};
VarName4 = dataArray{:, 4};
VarName5 = dataArray{:, 5};
M = dataArray{:, 6};
VarName7 = dataArray{:, 7};
VarName8 = dataArray{:, 8};
a = dataArray{:, 9};
VarName10 = dataArray{:, 10};
VarName11 = dataArray{:, 11};
pw = dataArray{:, 12};
VarName13 = dataArray{:, 13};
VarName14 = dataArray{:, 14};
tag = dataArray{:, 15};
VarName16 = dataArray{:, 16};


%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;

pulse_data=[VarName2, VarName4, VarName7, VarName10, VarName13];
save('pulse_data.mat', 'pulse_data');
