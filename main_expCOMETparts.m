%% COMET parts - data preperation and processing 
% Y. (Yasmin) Ben Azouz 
% Version 03.05.2022

%% README
% TO DO: write the object that each P refers to here. 
% NB: tables and graphs are not yet labelled.
% Capitals for matrices and small letters for structs and cell array

clear
close all 
%% Define before 
N = 17; % amount of parts / files 

%% Load .mat files into cell 
% Make sure you run the GetandSave.m file before running this file. 
% Open file directory with all P.mat files before loading 

parts = cell(1,N);
for kk = 1:N
    file = sprintf('P%d',kk);
    parts(kk) = struct2cell(load(file));
end 
%% Data Smoothing 
% The function DataPrep will first apply an sgolay filter to flatten the
% data and then all measurements per part will be averaged. This will be
% done only to the first 2000 samples (opposed to 4000), as there is little
% use in evaluating after the 2000 point. 

smoothparts = cell(1,N) ; 
for j = 1:N  
   smoothparts(j) = {DataPrep(parts{j})} ; 
end
%% Fit exponential fit to the signals 
% hier evt nog een keuze of je een figuur wil zien toevoegen en evt nog dat
% de lifetimeDF het aantal gebruikt dat uit DFexpfit komt gebruikt. 

coeffparts = cell(1,N) ; 
for m = 1:N 
    DFexpfit(smoothparts{m})
    coeffparts(m) = {LifetimeDF(smoothparts{m})} ;
end 

%%
integral = coeffparts{1,1}.integral ; 

figure 
plot(x, integral) 
%% tabel? 
% fig = uifigure;
% uit = uitable(fig,'coeffparts',coeffparts);


   

