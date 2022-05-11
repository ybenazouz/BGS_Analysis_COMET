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
%% 
parts = cell(1,N);
smoothparts = cell(1,N) ; 
coeffparts = cell(1,N) ; 
for j = 1:N  
    file = sprintf('P%d',j);
    parts(j) = struct2cell(load(file));
    smoothparts(j) = {DataPrep(parts{j})} ; 
    DFexpfit(smoothparts{j})
    coeffparts(j) = {LifetimeDF(smoothparts{j})} ;
end

%%
% integral = coeffparts{1,1}.integral ; 
% 
% figure 
% plot(x, integral) 
%% tabel? 
% fig = uifigure;
% uit = uitable(fig,'coeffparts',coeffparts);


   

