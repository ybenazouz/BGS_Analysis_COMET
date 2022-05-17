%% SOK experiment 2 & 3 - waterig
% 12 mei 2022 - MS
% Samples: different PpIX concentrations in DMF (dimethylformamide)
% PO2 = ~ 0 mmHg (>3hours of N2 bubbling)
% 37 degrees Celsius
% Excited at 515nm (emmission 630nm and 670nm filtered)
% Iexc: QSwitch = 200, Neutral Density filters (ND) = 0.3 + 0.4 + 0.6
clear all
close all
%% Load

folder = fileparts(which(mfilename)); 
addpath(genpath(folder));
    %630nm
ppix2_3_630nm = NaN(4000,10);
ppix4_7_630nm = NaN(4000,10);
ppix9_4_630nm = NaN(4000,10);
ppix25_630nm = NaN(4000,10);
ppix50_630nm = NaN(4000,10);
ppix75_630nm = NaN(4000,10);
ppix100_630nm = NaN(4000,10);
ppix150_630nm = NaN(4000,10);

ppix200_630nm = NaN(4000,10); %measured 1 day after others. So one night in cabinet
ppix1_2_630nm = NaN(4000,10); %measured 1 day after others. so one night in cabinet

% 
% for i = 2:1:11
%     ppix1_2_630nm(:,i) = [ppix1_2_630nm, xlsread('SOK23_PpIX1200nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix2_3_630nm(:,i) = [ppix2_3_630nm, xlsread('SOK23_PpIX2300nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix4_7_630nm(:,i) = [ppix4_7_630nm, xlsread('SOK23_PpIX4700nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix9_4_630nm(:,i) = [ppix25_630nm, xlsread('SOK23_PpIX9400nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix25_630nm(:,i) = [ppix25_630nm, xlsread('SOK23_PpIX25uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix50_630nm(:,i) = [ppix50_630nm, xlsread('SOK23_PpIX50uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix75_630nm(:,i) = [ppix75_630nm, xlsread('SOK23_PpIX75uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix100_630nm(:,i) = [ppix100_630nm, xlsread('SOK23_PpIX100uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix150_630nm(:,i) = [ppix150_630nm, xlsread('SOK23_PpIX150uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
%     ppix200_630nm(:,i) = [ppix200_630nm, xlsread('SOK23_PpIX200uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001')];
% end


for i = 2:1:11
    ppix1_2_630nm(:,i) = xlsread('SOK23_PpIX1200nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix2_3_630nm(:,i) = xlsread('SOK23_PpIX2300nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix4_7_630nm(:,i) = xlsread('SOK23_PpIX4700nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix9_4_630nm(:,i) = xlsread('SOK23_PpIX9400nM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix25_630nm(:,i) = xlsread('SOK23_PpIX25uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix50_630nm(:,i) =  xlsread('SOK23_PpIX50uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix75_630nm(:,i) = xlsread('SOK23_PpIX75uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix100_630nm(:,i) = xlsread('SOK23_PpIX100uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix150_630nm(:,i) = xlsread('SOK23_PpIX150uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
    ppix200_630nm(:,i) = xlsread('SOK23_PpIX200uM_515nm_qs200_ND_37grC.xlsx', i, 'A2:A4001');
end