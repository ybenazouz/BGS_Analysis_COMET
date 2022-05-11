%% TM2 Internship - COMET 
% Y. (Yasmin) Ben Azouz 
% Version 11.05.2022
% Document skin, parts and SOK. 

clear
close all
%% COMET PARTS EXPERIMENT NEW LASER 
% Fill in amount of parts / files 
N = 17 ; 
%% 
parts = cell(1,N) ;
smoothparts = cell(1,N) ; 
coeffparts = cell(1,N) ; 

for j = 1:N  
    file = sprintf('P%d',j);
    parts(j) = struct2cell(load(file));
    smoothparts(j) = {DataPrep(parts{j})} ; 
    DFexpfit(smoothparts{j})
    coeffparts(j) = {LifetimeDF(smoothparts{j})} ;
end
%% tabel? 
% fig = uifigure;
% uit = uitable(fig,'coeffparts',coeffparts);

%% ALA PATCHES EXPERIMENT NEW LASER
% Fill in amount of measurements for patch one 
M = 8  ; 

%% Load data, smooth data, fit data
patch_1 = cell(1,M);
smoothpatch_1 = cell(1,M) ;
max = zeros(1,M) ; 
coeffpatch_1 = cell(1,M) ;

for k = 1:M
   file = sprintf('S3_Patch1M%d_O2norm_630nm',k);
   patch_1(k) = struct2cell(load(file));
   smoothpatch_1(k) = {DataPrep(patch_1{k})} ; % smooth / correct data 
   max(1,k) = smoothpatch_1{k}.max  ; % retrieve maxima 
   DFexpfit(smoothpatch_1{k}.smooth) % show best number of terms for fit 
   coeffpatch_1(k) = {LifetimeDF(smoothpatch_1{k}.smooth)} ; % fit exponential fit to the signals 
end

%% Calculate ratios (MM)
ratio630670_O2norm =nan(size(Patch1_O2norm_670nm_max));
ratio630670_O20 =nan(size(Patch1_O20_670nm_max));

for i = 1: size(Patch1_O2norm_670nm_max,2)
ratio630670_O2norm(i) = Patch1_O2norm_670nm_max(i)/Patch1_O2norm_630nm_max(i);
ratio630670_O20(i) = Patch1_O20_670nm_max(i)/Patch1_O20_630nm_max(i);
end
