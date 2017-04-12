%This code is not optimised and badly commented

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Emulation of the PLC files (simple <generate>/copy/paste)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Metadata
% Written by    : Nathanaël Esnault
% Verified by   : N/A
% Creation date : 2017-04-12
% Version       : 1.0 (finished on ...)
% Modifications :
% Known bugs    :

%% Functions associated with this code :

%% Possible Improvements

%% Cleaning
Path = 'Analysis_Layer_Thickness';

startletter = 'C';
ret = {};
for i = double(startletter):double('Z')
    if exist(['' i ':\Thesis\MATLAB\' Path], 'dir') == 7 % 7=> name is a folder
        ret{end+1} = [i ':\'];  %#ok<SAGROW>
    end
end
cd([ret{end} 'Thesis\MATLAB\' Path]);
formatOut = 'yyyy-mm-dd--HH-MM-SS-FFF';
RunID = datestr(now,formatOut);
GetParameters;
addpath(genpath([ret{end} 'Thesis\MATLAB\' Path])); %importing also the functions in other folders

%% Find the date and use it as a clc;
close all;
clear;

load('long-time_theta.mat');% import the R and Theta data from the
%Spline2Mesh Matlab script
formatOut = 'yyyy-mm-dd--HH-MM-SS-FFF';
RunID = datestr(now,formatOut);
GetParameters;

Thesis\MATLAB\Analysis_Layer_Thickness