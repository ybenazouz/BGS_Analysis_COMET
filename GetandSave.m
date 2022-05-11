%% Get and Save Data 
% Y. Ben Azouz

%The goal of this file is to retrieve the files you need from excel.
%The files will then be saved to your computer as .mat files.
%After this is done, you can load the files without it taking too much
%time, whenever they are needed for processing. 

%% PARTS DATA 
%% Load data 
% folder = fileparts(which(mfilename)); 
% addpath(genpath(folder));
% 
% Part1 = [];
% Part2 = [];
% Part3 = [];
% Part4 = [];
% Part5 = [];
% Part6 = [];
% Part7 = [];
% Part8 = [];
% Part9 = [];
% Part10 = [];
% Part11 = [];
% Part12 = [];
% Part13 = [];
% Part14 = [];
% Part15 = [];
% Part16 = [];
% Part17 = []; 
% for i = 2:1:16
%     Part1 = [Part1, xlsread('expCOMETparts_blauwebehuizing_1408', i, 'A2:A4001')];
%     Part2 = [Part2, xlsread('expCOMETparts_diffusor_glad_1413', i, 'A2:A4001')];
%     Part3 = [Part3, xlsread('expCOMETparts_diffusor_ruw_1414', i, 'A2:A4001')];
%     Part4 = [Part4, xlsread('expCOMETparts_FiberOranjeDun_dicht', i, 'A2:A4001')];
%     Part5 = [Part5, xlsread('expCOMETparts_FiberOranjeDun_open', i, 'A2:A4001')];
%     Part6 = [Part6, xlsread('expCOMETparts_FiberZwartDik_kort_dicht', i, 'A2:A4001')];
%     Part7 = [Part7, xlsread('expCOMETparts_FiberZwartDik_kort_open', i, 'A2:A4001')];
%     Part8 = [Part8, xlsread('expCOMETparts_FiberZwartDik_lang_dicht', i, 'A2:A4001')];
%     Part9 = [Part9, xlsread('expCOMETparts_FiberZwartDik_lang_open', i, 'A2:A4001')];
%     Part10 = [Part10, xlsread('expCOMETparts_filter_kant1', i, 'A2:A4001')];
%     Part11 = [Part11, xlsread('expCOMETparts_filter_kant2', i, 'A2:A4001')];
%     Part12 = [Part12, xlsread('expCOMETparts_glue_mr1a_glaseerst', i, 'A2:A4001')];
%     Part13 = [Part13, xlsread('expCOMETparts_glue_mr1a_lijmeerst', i, 'A2:A4001')];
%     Part14 = [Part14, xlsread('expCOMETparts_zilverenhulsmetlenzen', i, 'A2:A4001')];
%     %NB: measurements below are BGS in air and against a mirror. 
%     Part15 = [Part15, xlsread('expCOMETparts_niks_laserinhouder', i, 'A2:A4001')];
%     Part16 = [Part16, xlsread('expCOMETparts_niks_laserinlucht', i, 'A2:A4001')];
%     Part17 = [Part17, xlsread('expCOMETparts_spiegel', i, 'A2:A4001')];
% end 
%% Save .mat files 
% for i = 1:1:17
%     filename = sprintf('%s%d','Part',i) ; 
%     save(filename)
% end 

%% SKIN DATA - subject 1 

%% SKIN DATA - subject 2
%% SKIN DATA - subject 3 - patch 1
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch1M1_O2norm_630nm = [];
S3_Patch1M2_O2norm_630nm = [];
S3_Patch1M3_O2norm_630nm = [];
S3_Patch1M4_O2norm_630nm = [];
S3_Patch1M5_O2norm_630nm = [];
S3_Patch1M6_O2norm_630nm = [];
S3_Patch1M7_O2norm_630nm = [];
S3_Patch1M8_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch1M1_O2norm_630nm = [S3_Patch1M1_O2norm_630nm, xlsread('S1_M1_0911_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M2_O2norm_630nm = [S3_Patch1M2_O2norm_630nm, xlsread('S1_M2_1052_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M3_O2norm_630nm = [S3_Patch1M3_O2norm_630nm, xlsread('S1_M3_1156_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M4_O2norm_630nm = [S3_Patch1M4_O2norm_630nm, xlsread('S1_M4_1250_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M5_O2norm_630nm = [S3_Patch1M5_O2norm_630nm, xlsread('S1_M5_1353_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M6_O2norm_630nm = [S3_Patch1M6_O2norm_630nm, xlsread('S1_M6_1455_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M7_O2norm_630nm = [S3_Patch1M7_O2norm_630nm, xlsread('S1_M7_1556_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch1M8_O2norm_630nm = [S3_Patch1M8_O2norm_630nm, xlsread('S1_M8_1657_O2norm.xlsx', i, 'A2:A4001')];
end
% O20

S3_Patch1M1_O20_630nm = [];
S3_Patch1M2_O20_630nm = [];
S3_Patch1M3_O20_630nm = [];
S3_Patch1M4_O20_630nm = [];
S3_Patch1M5_O20_630nm = [];
S3_Patch1M6_O20_630nm = [];
S3_Patch1M7_O20_630nm = [];
S3_Patch1M8_O20_630nm = [];
for i = 2:1:6
    S3_Patch1M1_O20_630nm = [S3_Patch1M1_O20_630nm, xlsread('S1_M1_0911_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch1M2_O20_630nm = [S3_Patch1M2_O20_630nm, xlsread('S1_M2_1052_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M3_O20_630nm = [S3_Patch1M3_O20_630nm, xlsread('S1_M3_1156_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M4_O20_630nm = [S3_Patch1M4_O20_630nm, xlsread('S1_M4_1250_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M5_O20_630nm = [S3_Patch1M5_O20_630nm, xlsread('S1_M5_1353_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M6_O20_630nm = [S3_Patch1M6_O20_630nm, xlsread('S1_M6_1455_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M7_O20_630nm = [S3_Patch1M7_O20_630nm, xlsread('S1_M7_1556_O20.xlsx', i, 'A2:A4001')];
    S3_Patch1M8_O20_630nm = [S3_Patch1M8_O20_630nm, xlsread('S1_M8_1657_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 

S3_Patch1M1_O2norm_670nm = [];
S3_Patch1M2_O2norm_670nm = [];
S3_Patch1M3_O2norm_670nm = [];
S3_Patch1M4_O2norm_670nm = [];
S3_Patch1M5_O2norm_670nm = [];
S3_Patch1M6_O2norm_670nm = [];
S3_Patch1M7_O2norm_670nm = [];
S3_Patch1M8_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch1M1_O2norm_670nm = [S3_Patch1M1_O2norm_670nm, xlsread('S1_M1_0911_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M2_O2norm_670nm = [S3_Patch1M2_O2norm_670nm, xlsread('S1_M2_1052_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M3_O2norm_670nm = [S3_Patch1M3_O2norm_670nm, xlsread('S1_M3_1156_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M4_O2norm_670nm = [S3_Patch1M4_O2norm_670nm, xlsread('S1_M4_1250_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M5_O2norm_670nm = [S3_Patch1M5_O2norm_670nm, xlsread('S1_M5_1353_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M6_O2norm_670nm = [S3_Patch1M6_O2norm_670nm, xlsread('S1_M6_1455_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M7_O2norm_670nm = [S3_Patch1M7_O2norm_670nm, xlsread('S1_M7_1556_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch1M8_O2norm_670nm = [S3_Patch1M8_O2norm_670nm, xlsread('S1_M8_1657_O2norm.xlsx', i, 'B2:B4001')];
end

% O20
S3_Patch1M1_O20_670nm = [];
S3_Patch1M2_O20_670nm = [];
S3_Patch1M3_O20_670nm = [];
S3_Patch1M4_O20_670nm = [];
S3_Patch1M5_O20_670nm = [];
S3_Patch1M6_O20_670nm = [];
S3_Patch1M7_O20_670nm = [];
S3_Patch1M8_O20_670nm = [];
for i = 2:1:6
    S3_Patch1M1_O20_670nm = [S3_Patch1M1_O20_670nm, xlsread('S1_M1_0911_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch1M2_O20_670nm = [S3_Patch1M2_O20_670nm, xlsread('S1_M2_1052_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M3_O20_670nm = [S3_Patch1M3_O20_670nm, xlsread('S1_M3_1156_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M4_O20_670nm = [S3_Patch1M4_O20_670nm, xlsread('S1_M4_1250_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M5_O20_670nm = [S3_Patch1M5_O20_670nm, xlsread('S1_M5_1353_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M6_O20_670nm = [S3_Patch1M6_O20_670nm, xlsread('S1_M6_1455_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M7_O20_670nm = [S3_Patch1M7_O20_670nm, xlsread('S1_M7_1556_O20.xlsx', i, 'B2:B4001')];
    S3_Patch1M8_O20_670nm = [S3_Patch1M8_O20_670nm, xlsread('S1_M8_1657_O20.xlsx', i, 'B2:B4001')];
end 

%% Patch 2 
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch2M1_O2norm_630nm = [];
S3_Patch2M2_O2norm_630nm = [];
S3_Patch2M3_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch2M1_O2norm_630nm = [S3_Patch2M1_O2norm_630nm, xlsread('S2_M1_0939_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch2M2_O2norm_630nm = [S3_Patch2M2_O2norm_630nm, xlsread('S2_M2_1050_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch2M3_O2norm_630nm = [S3_Patch2M3_O2norm_630nm, xlsread('S2_M3_1349_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch2M1_O20_630nm = [];
S3_Patch2M2_O20_630nm = [];
S3_Patch2M3_O20_630nm = [];
for i = 2:1:6
    S3_Patch2M1_O20_630nm = [S3_Patch2M1_O20_630nm, xlsread('S2_M1_0939_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch2M2_O20_630nm = [S3_Patch2M3_O20_630nm, xlsread('S2_M2_1050_O20.xlsx', i, 'A2:A4001')];
    S3_Patch2M3_O20_630nm = [S3_Patch2M4_O20_630nm, xlsread('S2_M3_1349_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch2M1_O2norm_670nm = [];
S3_Patch2M2_O2norm_670nm = [];
S3_Patch2M3_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch2M1_O2norm_670nm = [S3_Patch2M1_O2norm_670nm, xlsread('S2_M1_0939_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch2M2_O2norm_670nm = [S3_Patch2M2_O2norm_670nm, xlsread('S2_M2_1050_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch2M3_O2norm_670nm = [S3_Patch2M3_O2norm_670nm, xlsread('S2_M3_1349_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch2M1_O20_670nm = [];
S3_Patch2M2_O20_670nm = [];
S3_Patch2M3_O20_670nm = [];
for i = 2:1:6
    S3_Patch2M1_O20_670nm = [S3_Patch2M1_O20_670nm, xlsread('S2_M1_0939_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch2M2_O20_670nm = [S3_Patch2M3_O20_670nm, xlsread('S2_M2_1050_O20.xlsx', i, 'B2:B4001')];
    S3_Patch2M3_O20_670nm = [S3_Patch2M4_O20_670nm, xlsread('S2_M3_1349_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 3
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch3M1_O2norm_630nm = [];
S3_Patch3M2_O2norm_630nm = [];
S3_Patch3M3_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch3M1_O2norm_630nm = [S3_Patch3M1_O2norm_630nm, xlsread('S3_M1_1040_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch3M2_O2norm_630nm = [S3_Patch3M2_O2norm_630nm, xlsread('S3_M2_1150_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch3M3_O2norm_630nm = [S3_Patch3M3_O2norm_630nm, xlsread('S3_M3_1346_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch3M1_O20_630nm = [];
S3_Patch3M2_O20_630nm = [];
S3_Patch3M3_O20_630nm = [];
for i = 2:1:6
    S3_Patch3M1_O20_630nm = [S3_Patch3M1_O20_630nm, xlsread('S3_M1_1040_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch3M2_O20_630nm = [S3_Patch3M3_O20_630nm, xlsread('S3_M2_1150_O20.xlsx', i, 'A2:A4001')];
    S3_Patch3M3_O20_630nm = [S3_Patch3M4_O20_630nm, xlsread('S3_M3_1346_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch3M1_O2norm_670nm = [];
S3_Patch3M2_O2norm_670nm = [];
S3_Patch3M3_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch3M1_O2norm_670nm = [S3_Patch3M1_O2norm_670nm, xlsread('S3_M1_1040_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch3M2_O2norm_670nm = [S3_Patch3M2_O2norm_670nm, xlsread('S3_M2_1150_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch3M3_O2norm_670nm = [S3_Patch3M3_O2norm_670nm, xlsread('S3_M3_1346_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch3M1_O20_670nm = [];
S3_Patch3M2_O20_670nm = [];
S3_Patch3M3_O20_670nm = [];
for i = 2:1:6
    S3_Patch3M1_O20_670nm = [S3_Patch3M1_O20_670nm, xlsread('S3_M1_1040_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch3M2_O20_670nm = [S3_Patch3M3_O20_670nm, xlsread('S3_M2_1150_O20.xlsx', i, 'B2:B4001')];
    S3_Patch3M3_O20_670nm = [S3_Patch3M4_O20_670nm, xlsread('S3_M3_1346_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 4
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch4M1_O2norm_630nm = [];
S3_Patch4M2_O2norm_630nm = [];
S3_Patch4M3_O2norm_630nm = [];
S3_Patch4M3_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch4M1_O2norm_630nm = [S3_Patch4M1_O2norm_630nm, xlsread('S4_M1_1140_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch4M2_O2norm_630nm = [S3_Patch4M2_O2norm_630nm, xlsread('S4_M2_1243_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch4M3_O2norm_630nm = [S3_Patch4M3_O2norm_630nm, xlsread('S4_M3_1447_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch4M3_O2norm_630nm = [S3_Patch4M3_O2norm_630nm, xlsread('S4_M4_1654_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch4M1_O20_630nm = [];
S3_Patch4M2_O20_630nm = [];
S3_Patch4M3_O20_630nm = [];
S3_Patch4M3_O20_630nm = [];
for i = 2:1:6
    S3_Patch4M1_O20_630nm = [S3_Patch4M1_O20_630nm, xlsread('S4_M1_1140_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch4M2_O20_630nm = [S3_Patch4M3_O20_630nm, xlsread('S4_M2_1243_O20.xlsx', i, 'A2:A4001')];
    S3_Patch4M3_O20_630nm = [S3_Patch4M4_O20_630nm, xlsread('S4_M3_1447_O20.xlsx', i, 'A2:A4001')];
    S3_Patch4M3_O20_630nm = [S3_Patch4M4_O20_630nm, xlsread('S4_M4_1654_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch4M1_O2norm_670nm = [];
S3_Patch4M2_O2norm_670nm = [];
S3_Patch4M3_O2norm_670nm = [];
S3_Patch4M3_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch4M1_O2norm_670nm = [S3_Patch4M1_O2norm_670nm, xlsread('S4_M1_1140_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch4M2_O2norm_670nm = [S3_Patch4M2_O2norm_670nm, xlsread('S4_M2_1243_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch4M3_O2norm_670nm = [S3_Patch4M3_O2norm_670nm, xlsread('S4_M3_1447_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch4M3_O2norm_670nm = [S3_Patch4M3_O2norm_670nm, xlsread('S4_M4_1654_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch4M1_O20_670nm = [];
S3_Patch4M2_O20_670nm = [];
S3_Patch4M3_O20_670nm = [];
S3_Patch4M3_O20_670nm = [];
for i = 2:1:6
    S3_Patch4M1_O20_670nm = [S3_Patch4M1_O20_670nm, xlsread('S4_M1_1140_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch4M2_O20_670nm = [S3_Patch4M3_O20_670nm, xlsread('S4_M2_1243_O20.xlsx', i, 'B2:B4001')];
    S3_Patch4M3_O20_670nm = [S3_Patch4M4_O20_670nm, xlsread('S4_M3_1447_O20.xlsx', i, 'B2:B4001')];
    S3_Patch4M3_O20_670nm = [S3_Patch4M4_O20_670nm, xlsread('S4_M4_1654_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 5
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch5M1_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch5M1_O2norm_630nm = [S3_Patch5M1_O2norm_630nm, xlsread('S5_M1_0943_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch5M1_O20_630nm = [];
for i = 2:1:6
    S3_Patch5M1_O20_630nm = [S3_Patch5M1_O20_630nm, xlsread('S5_M1_0943_O20.xlsx', i, 'A2:A4001')]; 
end

% Load data - 670 nm
% O2norm 
S3_Patch5M1_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch5M1_O2norm_670nm = [S3_Patch5M1_O2norm_670nm, xlsread('S5_M1_0943_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch5M1_O20_670nm = [];
for i = 2:1:6
    S3_Patch5M1_O20_670nm = [S3_Patch5M1_O20_670nm, xlsread('S5_M1_0943_O20.xlsx', i, 'B2:B4001')]; 
end 
%% Patch 6
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch6M1_O2norm_630nm = [];
S3_Patch6M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch6M1_O2norm_630nm = [S3_Patch6M1_O2norm_630nm, xlsread('S6_M1_1045_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch6M2_O2norm_630nm = [S3_Patch6M2_O2norm_630nm, xlsread('S6_M2_1153_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch6M1_O20_630nm = [];
S3_Patch6M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch6M1_O20_630nm = [S3_Patch6M1_O20_630nm, xlsread('S6_M1_1045_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch6M2_O20_630nm = [S3_Patch6M3_O20_630nm, xlsread('S6_M2_1153_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch6M1_O2norm_670nm = [];
S3_Patch6M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch6M1_O2norm_670nm = [S3_Patch6M1_O2norm_670nm, xlsread('S6_M1_1045_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch6M2_O2norm_670nm = [S3_Patch6M2_O2norm_670nm, xlsread('S6_M2_1153_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch6M1_O20_670nm = [];
S3_Patch6M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch6M1_O20_670nm = [S3_Patch6M1_O20_670nm, xlsread('S6_M1_1045_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch6M2_O20_670nm = [S3_Patch6M3_O20_670nm, xlsread('S6_M2_1153_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 7
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch7M1_O2norm_630nm = [];
S3_Patch7M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch7M1_O2norm_630nm = [S3_Patch7M1_O2norm_630nm, xlsread('S7_M1_1146_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch7M2_O2norm_630nm = [S3_Patch7M2_O2norm_630nm, xlsread('S7_M2_1246_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch7M1_O20_630nm = [];
S3_Patch7M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch7M1_O20_630nm = [S3_Patch7M1_O20_630nm, xlsread('S7_M1_1146_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch7M2_O20_630nm = [S3_Patch7M3_O20_630nm, xlsread('S7_M2_1246_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch7M1_O2norm_670nm = [];
S3_Patch7M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch7M1_O2norm_670nm = [S3_Patch7M1_O2norm_670nm, xlsread('S7_M1_1146_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch7M2_O2norm_670nm = [S3_Patch7M2_O2norm_670nm, xlsread('S7_M2_1246_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch7M1_O20_670nm = [];
S3_Patch7M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch7M1_O20_670nm = [S3_Patch7M1_O20_670nm, xlsread('S7_M1_1146_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch7M2_O20_670nm = [S3_Patch7M3_O20_670nm, xlsread('S7_M2_1246_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 8
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch8M1_O2norm_630nm = [];
S3_Patch8M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch8M1_O2norm_630nm = [S3_Patch8M1_O2norm_630nm, xlsread('S8_M1_1240_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch8M2_O2norm_630nm = [S3_Patch8M2_O2norm_630nm, xlsread('S8_M2_1342_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch8M1_O20_630nm = [];
S3_Patch8M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch8M1_O20_630nm = [S3_Patch8M1_O20_630nm, xlsread('S8_M1_1240_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch8M2_O20_630nm = [S3_Patch8M3_O20_630nm, xlsread('S8_M2_1342_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch8M1_O2norm_670nm = [];
S3_Patch8M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch8M1_O2norm_670nm = [S3_Patch8M1_O2norm_670nm, xlsread('S8_M1_1240_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch8M2_O2norm_670nm = [S3_Patch8M2_O2norm_670nm, xlsread('S8_M2_1342_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch8M1_O20_670nm = [];
S3_Patch8M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch8M1_O20_670nm = [S3_Patch8M1_O20_670nm, xlsread('S8_M1_1240_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch8M2_O20_670nm = [S3_Patch8M3_O20_670nm, xlsread('S8_M2_1342_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 9
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch9M1_O2norm_630nm = [];
S3_Patch9M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch9M1_O2norm_630nm = [S3_Patch9M1_O2norm_630nm, xlsread('S9_M1_1338_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch9M2_O2norm_630nm = [S3_Patch9M2_O2norm_630nm, xlsread('S9_M2_1452_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch9M1_O20_630nm = [];
S3_Patch9M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch9M1_O20_630nm = [S3_Patch9M1_O20_630nm, xlsread('S9_M1_1338_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch9M2_O20_630nm = [S3_Patch9M3_O20_630nm, xlsread('S9_M2_1452_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch9M1_O2norm_670nm = [];
S3_Patch9M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch9M1_O2norm_670nm = [S3_Patch9M1_O2norm_670nm, xlsread('S9_M1_1338_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch9M2_O2norm_670nm = [S3_Patch9M2_O2norm_670nm, xlsread('S9_M2_1452_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch9M1_O20_670nm = [];
S3_Patch9M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch9M1_O20_670nm = [S3_Patch9M1_O20_670nm, xlsread('S9_M1_1338_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch9M2_O20_670nm = [S3_Patch9M3_O20_670nm, xlsread('S9_M2_1452_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 10
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch10M1_O2norm_630nm = [];
S3_Patch10M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch10M1_O2norm_630nm = [S3_Patch10M1_O2norm_630nm, xlsread('S10_M1_1441_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch10M2_O2norm_630nm = [S3_Patch10M2_O2norm_630nm, xlsread('S10_M2_1553_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch10M1_O20_630nm = [];
S3_Patch10M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch10M1_O20_630nm = [S3_Patch10M1_O20_630nm, xlsread('S10_M1_1441_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch10M2_O20_630nm = [S3_Patch10M3_O20_630nm, xlsread('S10_M2_1553_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch10M1_O2norm_670nm = [];
S3_Patch10M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch10M1_O2norm_670nm = [S3_Patch10M1_O2norm_670nm, xlsread('S10_M1_1441_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch10M2_O2norm_670nm = [S3_Patch10M2_O2norm_670nm, xlsread('S10_M2_1553_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch10M1_O20_670nm = [];
S3_Patch10M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch10M1_O20_670nm = [S3_Patch10M1_O20_670nm, xlsread('S10_M1_1441_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch10M2_O20_670nm = [S3_Patch10M3_O20_670nm, xlsread('S10_M2_1553_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 11
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch11M1_O2norm_630nm = [];
S3_Patch11M2_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch11M1_O2norm_630nm = [S3_Patch11M1_O2norm_630nm, xlsread('S11_M1_1548_O2norm.xlsx', i, 'A2:A4001')];
    S3_Patch11M2_O2norm_630nm = [S3_Patch11M2_O2norm_630nm, xlsread('S11_M2_1648_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch11M1_O20_630nm = [];
S3_Patch11M2_O20_630nm = [];
for i = 2:1:6
    S3_Patch11M1_O20_630nm = [S3_Patch11M1_O20_630nm, xlsread('S11_M1_1548_O20.xlsx', i, 'A2:A4001')]; 
    S3_Patch11M2_O20_630nm = [S3_Patch11M3_O20_630nm, xlsread('S11_M2_1648_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 
S3_Patch11M1_O2norm_670nm = [];
S3_Patch11M2_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch11M1_O2norm_670nm = [S3_Patch11M1_O2norm_670nm, xlsread('S11_M1_1548_O2norm.xlsx', i, 'B2:B4001')];
    S3_Patch11M2_O2norm_670nm = [S3_Patch11M2_O2norm_670nm, xlsread('S11_M2_1648_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch11M1_O20_670nm = [];
S3_Patch11M2_O20_670nm = [];
for i = 2:1:6
    S3_Patch11M1_O20_670nm = [S3_Patch11M1_O20_670nm, xlsread('S11_M1_1548_O20.xlsx', i, 'B2:B4001')]; 
    S3_Patch11M2_O20_670nm = [S3_Patch11M3_O20_670nm, xlsread('S11_M2_1648_O20.xlsx', i, 'B2:B4001')];
end 
%% Patch 12
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch12M1_O2norm_630nm = [];
for i = 2:1:6
    S3_Patch12M1_O2norm_630nm = [S3_Patch12M1_O2norm_630nm, xlsread('S12_M1_1652_O2norm.xlsx', i, 'A2:A4001')];
end
% O20
S3_Patch12M1_O20_630nm = [];
for i = 2:1:6
    S3_Patch12M1_O20_630nm = [S3_Patch12M1_O20_630nm, xlsread('S12_M1_1652_O20.xlsx', i, 'A2:A4001')]; 
end

% Load data - 670 nm
% O2norm 
S3_Patch12M1_O2norm_670nm = [];
for i = 2:1:6
    S3_Patch12M1_O2norm_670nm = [S3_Patch12M1_O2norm_670nm, xlsread('S12_M1_1652_O2norm.xlsx', i, 'B2:B4001')];
end 

% O20
S3_Patch12M1_O20_670nm = [];
for i = 2:1:6
    S3_Patch12M1_O20_670nm = [S3_Patch12M1_O20_670nm, xlsread('S12_M1_1652_O20.xlsx', i, 'B2:B4001')]; 
end 

%% BGS
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_BGSM1_O2norm_630nm = [];
S3_BGSM2_O2norm_630nm = [];
S3_BGSM3_O2norm_630nm = [];
S3_BGSM4_O2norm_630nm = [];
S3_BGSM5_O2norm_630nm = [];
S3_BGSM6_O2norm_630nm = [];
S3_BGSM7_O2norm_630nm = [];
for i = 2:1:6
    S3_BGSM1_O2norm_630nm = [S3_BGSM1_O2norm_630nm, xlsread('BGS_M1_0920_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM2_O2norm_630nm = [S3_BGSM2_O2norm_630nm, xlsread('BGS_M2_0953_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM3_O2norm_630nm = [S3_BGSM3_O2norm_630nm, xlsread('BGS_M3_1055_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM4_O2norm_630nm = [S3_BGSM4_O2norm_630nm, xlsread('BGS_M4_1159_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM5_O2norm_630nm = [S3_BGSM5_O2norm_630nm, xlsread('BGS_M5_1252_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM6_O2norm_630nm = [S3_BGSM6_O2norm_630nm, xlsread('BGS_M6_1159_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM7_O2norm_630nm = [S3_BGSM7_O2norm_630nm, xlsread('BGS_M7_1700_O2norm.xlsx', i, 'A2:A4001')];
end
% O20

S3_BGSM1_O20_630nm = [];
S3_BGSM2_O20_630nm = [];
S3_BGSM3_O20_630nm = [];
S3_BGSM4_O20_630nm = [];
S3_BGSM5_O20_630nm = [];
S3_BGSM6_O20_630nm = [];
S3_BGSM7_O20_630nm = [];
for i = 2:1:6
    S3_BGSM1_O20_630nm = [S3_BGSM1_O20_630nm, xlsread('BGS_M1_0920_O20.xlsx', i, 'A2:A4001')]; 
    S3_BGSM2_O20_630nm = [S3_BGSM2_O20_630nm, xlsread('BGS_M2_0953_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM3_O20_630nm = [S3_BGSM3_O20_630nm, xlsread('BGS_M3_1055_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM4_O20_630nm = [S3_BGSM4_O20_630nm, xlsread('BGS_M4_1159_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM5_O20_630nm = [S3_BGSM5_O20_630nm, xlsread('BGS_M5_1252_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM6_O20_630nm = [S3_BGSM6_O20_630nm, xlsread('BGS_M6_1159_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM7_O20_630nm = [S3_BGSM7_O20_630nm, xlsread('BGS_M7_1700_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 

S3_BGSM1_O2norm_670nm = [];
S3_BGSM2_O2norm_670nm = [];
S3_BGSM3_O2norm_670nm = [];
S3_BGSM4_O2norm_670nm = [];
S3_BGSM5_O2norm_670nm = [];
S3_BGSM6_O2norm_670nm = [];
S3_BGSM7_O2norm_670nm = [];
for i = 2:1:6
    S3_BGSM1_O2norm_670nm = [S3_BGSM1_O2norm_670nm, xlsread('BGS_M1_0920_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM2_O2norm_670nm = [S3_BGSM2_O2norm_670nm, xlsread('BGS_M2_0953_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM3_O2norm_670nm = [S3_BGSM3_O2norm_670nm, xlsread('BGS_M3_1055_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM4_O2norm_670nm = [S3_BGSM4_O2norm_670nm, xlsread('BGS_M4_1159_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM5_O2norm_670nm = [S3_BGSM5_O2norm_670nm, xlsread('BGS_M5_1252_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM6_O2norm_670nm = [S3_BGSM6_O2norm_670nm, xlsread('BGS_M6_1159_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM7_O2norm_670nm = [S3_BGSM7_O2norm_670nm, xlsread('BGS_M7_1700_O2norm.xlsx', i, 'B2:B4001')];
end

% O20
S3_BGSM1_O20_670nm = [];
S3_BGSM2_O20_670nm = [];
S3_BGSM3_O20_670nm = [];
S3_BGSM4_O20_670nm = [];
S3_BGSM5_O20_670nm = [];
S3_BGSM6_O20_670nm = [];
S3_BGSM7_O20_670nm = [];
for i = 2:1:6
    S3_BGSM1_O20_670nm = [S3_BGSM1_O20_670nm, xlsread('BGS_M1_0920_O20.xlsx', i, 'B2:B4001')]; 
    S3_BGSM2_O20_670nm = [S3_BGSM2_O20_670nm, xlsread('BGS_M2_0953_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM3_O20_670nm = [S3_BGSM3_O20_670nm, xlsread('BGS_M3_1055_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM4_O20_670nm = [S3_BGSM4_O20_670nm, xlsread('BGS_M4_1159_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM5_O20_670nm = [S3_BGSM5_O20_670nm, xlsread('BGS_M5_1252_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM6_O20_670nm = [S3_BGSM6_O20_670nm, xlsread('BGS_M6_1159_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM7_O20_670nm = [S3_BGSM7_O20_670nm, xlsread('BGS_M7_1700_O20.xlsx', i, 'B2:B4001')];
end 

%% 515nm
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_BGSM1_O2norm_630nm = [];
S3_BGSM2_O2norm_630nm = [];
S3_BGSM3_O2norm_630nm = [];
S3_BGSM4_O2norm_630nm = [];
S3_BGSM5_O2norm_630nm = [];
S3_BGSM6_O2norm_630nm = [];
S3_BGSM7_O2norm_630nm = [];
S3_BGSM8_O2norm_630nm = [];
S3_BGSM9_O2norm_630nm = [];
S3_BGSM10_O2norm_630nm = [];
S3_BGSM11_O2norm_630nm = [];
S3_BGSM12_O2norm_630nm = [];
for i = 2:1:6
    S3_BGSM1_O2norm_630nm = [S3_BGSM1_O2norm_630nm, xlsread('BGS_M1_0920_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM2_O2norm_630nm = [S3_BGSM2_O2norm_630nm, xlsread('BGS_M2_0953_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM3_O2norm_630nm = [S3_BGSM3_O2norm_630nm, xlsread('BGS_M3_1055_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM4_O2norm_630nm = [S3_BGSM4_O2norm_630nm, xlsread('BGS_M4_1159_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM5_O2norm_630nm = [S3_BGSM5_O2norm_630nm, xlsread('BGS_M5_1252_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM6_O2norm_630nm = [S3_BGSM6_O2norm_630nm, xlsread('BGS_M6_1159_O2norm.xlsx', i, 'A2:A4001')];
    S3_BGSM7_O2norm_630nm = [S3_BGSM7_O2norm_630nm, xlsread('BGS_M7_1700_O2norm.xlsx', i, 'A2:A4001')];
end
% O20

S3_BGSM1_O20_630nm = [];
S3_BGSM2_O20_630nm = [];
S3_BGSM3_O20_630nm = [];
S3_BGSM4_O20_630nm = [];
S3_BGSM5_O20_630nm = [];
S3_BGSM6_O20_630nm = [];
S3_BGSM7_O20_630nm = [];
for i = 2:1:6
    S3_BGSM1_O20_630nm = [S3_BGSM1_O20_630nm, xlsread('BGS_M1_0920_O20.xlsx', i, 'A2:A4001')]; 
    S3_BGSM2_O20_630nm = [S3_BGSM2_O20_630nm, xlsread('BGS_M2_0953_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM3_O20_630nm = [S3_BGSM3_O20_630nm, xlsread('BGS_M3_1055_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM4_O20_630nm = [S3_BGSM4_O20_630nm, xlsread('BGS_M4_1159_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM5_O20_630nm = [S3_BGSM5_O20_630nm, xlsread('BGS_M5_1252_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM6_O20_630nm = [S3_BGSM6_O20_630nm, xlsread('BGS_M6_1159_O20.xlsx', i, 'A2:A4001')];
    S3_BGSM7_O20_630nm = [S3_BGSM7_O20_630nm, xlsread('BGS_M7_1700_O20.xlsx', i, 'A2:A4001')];
end

% Load data - 670 nm
% O2norm 

S3_BGSM1_O2norm_670nm = [];
S3_BGSM2_O2norm_670nm = [];
S3_BGSM3_O2norm_670nm = [];
S3_BGSM4_O2norm_670nm = [];
S3_BGSM5_O2norm_670nm = [];
S3_BGSM6_O2norm_670nm = [];
S3_BGSM7_O2norm_670nm = [];
for i = 2:1:6
    S3_BGSM1_O2norm_670nm = [S3_BGSM1_O2norm_670nm, xlsread('BGS_M1_0920_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM2_O2norm_670nm = [S3_BGSM2_O2norm_670nm, xlsread('BGS_M2_0953_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM3_O2norm_670nm = [S3_BGSM3_O2norm_670nm, xlsread('BGS_M3_1055_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM4_O2norm_670nm = [S3_BGSM4_O2norm_670nm, xlsread('BGS_M4_1159_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM5_O2norm_670nm = [S3_BGSM5_O2norm_670nm, xlsread('BGS_M5_1252_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM6_O2norm_670nm = [S3_BGSM6_O2norm_670nm, xlsread('BGS_M6_1159_O2norm.xlsx', i, 'B2:B4001')];
    S3_BGSM7_O2norm_670nm = [S3_BGSM7_O2norm_670nm, xlsread('BGS_M7_1700_O2norm.xlsx', i, 'B2:B4001')];
end

% O20
S3_BGSM1_O20_670nm = [];
S3_BGSM2_O20_670nm = [];
S3_BGSM3_O20_670nm = [];
S3_BGSM4_O20_670nm = [];
S3_BGSM5_O20_670nm = [];
S3_BGSM6_O20_670nm = [];
S3_BGSM7_O20_670nm = [];
for i = 2:1:6
    S3_BGSM1_O20_670nm = [S3_BGSM1_O20_670nm, xlsread('BGS_M1_0920_O20.xlsx', i, 'B2:B4001')]; 
    S3_BGSM2_O20_670nm = [S3_BGSM2_O20_670nm, xlsread('BGS_M2_0953_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM3_O20_670nm = [S3_BGSM3_O20_670nm, xlsread('BGS_M3_1055_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM4_O20_670nm = [S3_BGSM4_O20_670nm, xlsread('BGS_M4_1159_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM5_O20_670nm = [S3_BGSM5_O20_670nm, xlsread('BGS_M5_1252_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM6_O20_670nm = [S3_BGSM6_O20_670nm, xlsread('BGS_M6_1159_O20.xlsx', i, 'B2:B4001')];
    S3_BGSM7_O20_670nm = [S3_BGSM7_O20_670nm, xlsread('BGS_M7_1700_O20.xlsx', i, 'B2:B4001')];
end 
%% SKIN DATA - subject 4