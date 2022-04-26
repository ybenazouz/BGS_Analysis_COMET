%% ALA-exp - data preperation
% april 2022    M. Schoenmakers

clear all 
close all
%% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

 %O2norm
Patch1_O2norm_630nm_uur1 = [];
Patch1_O2norm_630nm_uur2 = [];
Patch1_O2norm_630nm_uur3 = [];
Patch1_O2norm_630nm_uur4 = [];
Patch1_O2norm_630nm_uur5 = [];
Patch1_O2norm_630nm_uur6 = [];
Patch1_O2norm_630nm_uur7 = [];
Patch1_O2norm_630nm_uur8 = [];
Patch1_O2norm_630nm_uur9 = [];
for i = 2:1:6
    Patch1_O2norm_630nm_uur1 = [Patch1_O2norm_630nm_uur1, xlsread('S1_M1_0911_O2norm', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur2 = [Patch1_O2norm_630nm_uur2, xlsread('.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur3 = [Patch1_O2norm_630nm_uur3, xlsread('S1_M2_1052_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur4 = [Patch1_O2norm_630nm_uur4, xlsread('S1_M3_1156_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur5 = [Patch1_O2norm_630nm_uur5, xlsread('S1_M4_1250_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur6 = [Patch1_O2norm_630nm_uur6, xlsread('S1_M5_1353_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur7 = [Patch1_O2norm_630nm_uur7, xlsread('S1_M6_1455_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur8 = [Patch1_O2norm_630nm_uur8, xlsread('S1_M7_1556_O2norm.xlsx', i, 'A2:A4001')];
%     Patch1_O2norm_630nm_uur9 = [Patch1_O2norm_630nm_uur9, xlsread('S1_M8_1657_O2norm.xlsx', i, 'A2:A4001')];
end
%%
% O20
Patch1_O20_630nm_uur1 = [];
Patch1_O20_630nm_uur2 = [];
Patch1_O20_630nm_uur3 = [];
Patch1_O20_630nm_uur4 = [];
Patch1_O20_630nm_uur5 = [];
Patch1_O20_630nm_uur6 = [];
Patch1_O20_630nm_uur7 = [];
Patch1_O20_630nm_uur8 = [];
Patch1_O20_630nm_uur9 = [];
for i = 2:1:6
    Patch1_O20_uur1 = [Patch1_O20_630nm_uur1, xlsread('S1_M1_0911_O20', i, 'A2:A4001')];
%     Patch1_O20_uur2 = [Patch1_O20_630nm_uur2, xlsread('.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur3 = [Patch1_O20_630nm_uur3, xlsread('S1_M2_1052_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur4 = [Patch1_O20_630nm_uur4, xlsread('S1_M3_1156_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur5 = [Patch1_O20_630nm_uur5, xlsread('S1_M4_1250_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur6 = [Patch1_O20_630nm_uur6, xlsread('S1_M5_1353_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur7 = [Patch1_O20_630nm_uur7, xlsread('S1_M6_1455_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur8 = [Patch1_O20_630nm_uur8, xlsread('S1_M7_1556_O20.xlsx', i, 'A2:A4001')];
    Patch1_O20_uur9 = [Patch1_O20_630nm_uur9, xlsread('S1_M8_1657_O20.xlsx', i, 'A2:A4001')];
end

%% Load data - 670 nm
