%% ALA-exp - data preperation
% april 2022    M. Schoenmakers

%% README
% P = patch 
% S = subject
% O2norm = regular oxygen pressure, no pressure is applied to the skin with the COMET head. 
% O20 = hypoxic tissue, oxygen pressure is reduced to approximately zero by applying pressure with the COMET head.  
% NL = New Laser 

% Before running, open folder #1 for subjects

clear
close all
%% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

%% O2norm
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
%% O20

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

%% Load data - 670 nm

%% Finding median of maxima 
maxP1M1_O2norm_630nm = -(median(P1M1_O2norm_630nm(2,:)));
maxP1M2_O2norm_630nm = -(median(P1M2_O2norm_630nm(2,:)));
maxP1M3_O2norm_630nm = -(median(P1M3_O2norm_630nm(2,:)));
maxP1M4_O2norm_630nm = -(median(P1M4_O2norm_630nm(2,:)));
maxP1M5_O2norm_630nm = -(median(P1M5_O2norm_630nm(2,:)));
maxP1M6_O2norm_630nm = -(median(P1M6_O2norm_630nm(2,:)));
maxP1M7_O2norm_630nm = -(median(P1M7_O2norm_630nm(2,:)));
maxP1M8_O2norm_630nm = -(median(P1M8_O2norm_630nm(2,:)));


% max_ALA_total = [Max_MM_Pleister5_3uur Max_MM_Pleister6_4uur Max_MM_Pleister7_5uur Max_MM_Pleister8_6uur Max_MM_Pleister9_7uur Max_MM_Pleister10_8uur Max_MM_Pleister11_9uur Max_MM_Pleister12_10uur Max_MM_Pleister1_11uur Max_MM_Pleister2_12uur Max_MM_Pleister3_13uur Max_MM_Pleister4_14uur];
% time_axis = 3:1:14;
% 
% figure(1)
% plot(time_axis, max_ALA_total)
% xlim([3 14])
% ylabel('amplitude')
% xlabel('time after ALA application (hours)')
% title('Amplitude of 630nm measurement NL for time after ALA application MM')

%% Plotting amplitudes of 360nm data 

% Max_MM_Pleister4_14uur = -(median(MM_Pleister4_14uur(2,:)));
% 
% max_ALA_total = [Max_MM_Pleister5_3uur Max_MM_Pleister6_4uur Max_MM_Pleister7_5uur Max_MM_Pleister8_6uur Max_MM_Pleister9_7uur Max_MM_Pleister10_8uur Max_MM_Pleister11_9uur Max_MM_Pleister12_10uur Max_MM_Pleister1_11uur Max_MM_Pleister2_12uur Max_MM_Pleister3_13uur Max_MM_Pleister4_14uur];
% time_axis = 3:1:14;
% 
% figure(1)
% plot(time_axis, max_ALA_total)
% xlim([3 14])
