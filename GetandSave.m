%The goal of this file is to retrieve the files you need from excel.
%The files will then be saved to your computer as .mat files.
%After this is done, you can load the files without it taking too much
%time, whenever they are needed for processing. 

%% PARTS DATA 
%% Load data 
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

P1 = [];
P2 = [];
P3 = [];
P4 = [];
P5 = [];
P6 = [];
P7 = [];
P8 = [];
P9 = [];
P10 = [];
P11 = [];
P12 = [];
P13 = [];
P14 = [];
P15 = [];
P16 = [];
P17 = []; 
for i = 2:1:16
    P1 = [P1, xlsread('expCOMETparts_blauwebehuizing_1408', i, 'A2:A4001')];
    P2 = [P2, xlsread('expCOMETparts_diffusor_glad_1413', i, 'A2:A4001')];
    P3 = [P3, xlsread('expCOMETparts_diffusor_ruw_1414', i, 'A2:A4001')];
    P4 = [P4, xlsread('expCOMETparts_FiberOranjeDun_dicht', i, 'A2:A4001')];
    P5 = [P5, xlsread('expCOMETparts_FiberOranjeDun_open', i, 'A2:A4001')];
    P6 = [P6, xlsread('expCOMETparts_FiberZwartDik_kort_dicht', i, 'A2:A4001')];
    P7 = [P7, xlsread('expCOMETparts_FiberZwartDik_kort_open', i, 'A2:A4001')];
    P8 = [P8, xlsread('expCOMETparts_FiberZwartDik_lang_dicht', i, 'A2:A4001')];
    P9 = [P9, xlsread('expCOMETparts_FiberZwartDik_lang_open', i, 'A2:A4001')];
    P10 = [P10, xlsread('expCOMETparts_filter_kant1', i, 'A2:A4001')];
    P11 = [P11, xlsread('expCOMETparts_filter_kant2', i, 'A2:A4001')];
    P12 = [P12, xlsread('expCOMETparts_glue_mr1a_glaseerst', i, 'A2:A4001')];
    P13 = [P13, xlsread('expCOMETparts_glue_mr1a_lijmeerst', i, 'A2:A4001')];
    P14 = [P14, xlsread('expCOMETparts_zilverenhulsmetlenzen', i, 'A2:A4001')];
    %NB: measurements below are BGS in air and against a mirror. 
    P15 = [P15, xlsread('expCOMETparts_niks_laserinhouder', i, 'A2:A4001')];
    P16 = [P16, xlsread('expCOMETparts_niks_laserinlucht', i, 'A2:A4001')];
    P17 = [P17, xlsread('expCOMETparts_spiegel', i, 'A2:A4001')];
end 
%% Save .mat files 
for i = 1:1:17
    filename = sprintf('%s%d','P',i) ; 
    save(filename)
end 

%% SKIN DATA - subject 1 
%% SKIN DATA - subject 2
%% SKIN DATA - subject 3
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
P1M1_O2norm_630nm = [];
P1M2_O2norm_630nm = [];
P1M3_O2norm_630nm = [];
P1M4_O2norm_630nm = [];
P1M5_O2norm_630nm = [];
P1M6_O2norm_630nm = [];
P1M7_O2norm_630nm = [];
P1M8_O2norm_630nm = [];
for i = 2:1:6
    P1M1_O2norm_630nm = [P1M1_O2norm_630nm, xlsread('S1_M1_0911_O2norm.xlsx', i, 'A2:A4001')];
    P1M2_O2norm_630nm = [P1M2_O2norm_630nm, xlsread('S1_M2_1052_O2norm.xlsx', i, 'A2:A4001')];
    P1M3_O2norm_630nm = [P1M3_O2norm_630nm, xlsread('S1_M3_1156_O2norm.xlsx', i, 'A2:A4001')];
    P1M4_O2norm_630nm = [P1M4_O2norm_630nm, xlsread('S1_M4_1250_O2norm.xlsx', i, 'A2:A4001')];
    P1M5_O2norm_630nm = [P1M5_O2norm_630nm, xlsread('S1_M5_1353_O2norm.xlsx', i, 'A2:A4001')];
    P1M6_O2norm_630nm = [P1M6_O2norm_630nm, xlsread('S1_M6_1455_O2norm.xlsx', i, 'A2:A4001')];
    P1M7_O2norm_630nm = [P1M7_O2norm_630nm, xlsread('S1_M7_1556_O2norm.xlsx', i, 'A2:A4001')];
    P1M8_O2norm_630nm = [P1M8_O2norm_630nm, xlsread('S1_M8_1657_O2norm.xlsx', i, 'A2:A4001')];
end
% O20

P1M1_O20_630nm = [];
P1M2_O20_630nm = [];
P1M3_O20_630nm = [];
P1M4_O20_630nm = [];
P1M5_O20_630nm = [];
P1M6_O20_630nm = [];
P1M7_O20_630nm = [];
P1M8_O20_630nm = [];
P1M9_O20_630nm = [];
for i = 2:1:6
    P1M1_O20_630nm = [P1M1_O20_630nm, xlsread('S1_M1_0911_O20.xlsx', i, 'A2:A4001')]; 
    P1M2_O20_630nm = [P1M3_O20_630nm, xlsread('S1_M2_1052_O20.xlsx', i, 'A2:A4001')];
    P1M3_O20_630nm = [P1M4_O20_630nm, xlsread('S1_M3_1156_O20.xlsx', i, 'A2:A4001')];
    P1M4_O20_630nm = [P1M5_O20_630nm, xlsread('S1_M4_1250_O20.xlsx', i, 'A2:A4001')];
    P1M5_O20_630nm = [P1M6_O20_630nm, xlsread('S1_M5_1353_O20.xlsx', i, 'A2:A4001')];
    P1M6_O20_630nm = [P1M7_O20_630nm, xlsread('S1_M6_1455_O20.xlsx', i, 'A2:A4001')];
    P1M7_O20_630nm = [P1M8_O20_630nm, xlsread('S1_M7_1556_O20.xlsx', i, 'A2:A4001')];
    P1M8_O20_630nm = [P1M9_O20_630nm, xlsread('S1_M8_1657_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 

P1M1_O2norm_670nm = [];
P1M2_O2norm_670nm = [];
P1M3_O2norm_670nm = [];
P1M4_O2norm_670nm = [];
P1M5_O2norm_670nm = [];
P1M6_O2norm_670nm = [];
P1M7_O2norm_670nm = [];
P1M8_O2norm_670nm = [];
for i = 2:1:6
    P1M1_O2norm_670nm = [P1M1_O2norm_670nm, xlsread('S1_M1_0911_O2norm.xlsx', i, 'B2:B4001')];
    P1M2_O2norm_670nm = [P1M2_O2norm_670nm, xlsread('S1_M2_1052_O2norm.xlsx', i, 'B2:B4001')];
    P1M3_O2norm_670nm = [P1M3_O2norm_670nm, xlsread('S1_M3_1156_O2norm.xlsx', i, 'B2:B4001')];
    P1M4_O2norm_670nm = [P1M4_O2norm_670nm, xlsread('S1_M4_1250_O2norm.xlsx', i, 'B2:B4001')];
    P1M5_O2norm_670nm = [P1M5_O2norm_670nm, xlsread('S1_M5_1353_O2norm.xlsx', i, 'B2:B4001')];
    P1M6_O2norm_670nm = [P1M6_O2norm_670nm, xlsread('S1_M6_1455_O2norm.xlsx', i, 'B2:B4001')];
    P1M7_O2norm_670nm = [P1M7_O2norm_670nm, xlsread('S1_M7_1556_O2norm.xlsx', i, 'B2:B4001')];
    P1M8_O2norm_670nm = [P1M8_O2norm_670nm, xlsread('S1_M8_1657_O2norm.xlsx', i, 'B2:B4001')];
end

% O20
P1M1_O20_670nm = [];
P1M2_O20_670nm = [];
P1M3_O20_670nm = [];
P1M4_O20_670nm = [];
P1M5_O20_670nm = [];
P1M6_O20_670nm = [];
P1M7_O20_670nm = [];
P1M8_O20_670nm = [];
P1M9_O20_670nm = [];
for i = 2:1:6
    P1M1_O20_670nm = [P1M1_O20_670nm, xlsread('S1_M1_0911_O20.xlsx', i, 'B2:B4001')]; 
    P1M2_O20_670nm = [P1M3_O20_670nm, xlsread('S1_M2_1052_O20.xlsx', i, 'B2:B4001')];
    P1M3_O20_670nm = [P1M4_O20_670nm, xlsread('S1_M3_1156_O20.xlsx', i, 'B2:B4001')];
    P1M4_O20_670nm = [P1M5_O20_670nm, xlsread('S1_M4_1250_O20.xlsx', i, 'B2:B4001')];
    P1M5_O20_670nm = [P1M6_O20_670nm, xlsread('S1_M5_1353_O20.xlsx', i, 'B2:B4001')];
    P1M6_O20_670nm = [P1M7_O20_670nm, xlsread('S1_M6_1455_O20.xlsx', i, 'B2:B4001')];
    P1M7_O20_670nm = [P1M8_O20_670nm, xlsread('S1_M7_1556_O20.xlsx', i, 'B2:B4001')];
    P1M8_O20_670nm = [P1M9_O20_670nm, xlsread('S1_M8_1657_O20.xlsx', i, 'B2:B4001')];
end 
%% SKIN DATA - subject 4