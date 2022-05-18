%% Get and Save Data 
% Y. Ben Azouz
%% NO LONGER NEEDED - SEE STRUCT AND SAVE!!! - DATE: 18.05.2022
%%
%The goal of this file is to retrieve the files you need from excel.
%The files will then be saved to your computer as .mat files.
%After this is done, you can load the files without it taking too much
%time, whenever they are needed for processing. 

%% PARTS DATA 
%% Load data 
% folder = fileparts(which(mfilename)); 
% addpath(genpath(folder));
% 
% Part1 = zeros(4000,5);
% Part2 = zeros(4000,5);
% Part3 = zeros(4000,5);
% Part4 = zeros(4000,5);
% Part5 = zeros(4000,5);
% Part6 = zeros(4000,5);
% Part7 = zeros(4000,5);
% Part8 = zeros(4000,5);
% Part9 = zeros(4000,5);
% Part10 = zeros(4000,5);
% Part11 = zeros(4000,5);
% Part12 = zeros(4000,5);
% Part13 = zeros(4000,5);
% Part14 = zeros(4000,5);
% Part15 = zeros(4000,5);
% Part16 = zeros(4000,5);
% Part17 = zeros(4000,5); 
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

%% SKIN DATA - subject 1 - patch 1

f_1 = ["NL_0840uur_MM_sticker1_meting1.xlsx", "NL_1001uur_MM_sticker1_meting2.xlsx",...
    "NL_1055uur_MM_sticker1_meting3.xlsx", "NL_1156uur_MM_sticker1_meting4.xlsx",...
    "NL_1248uur_MM_sticker1_meting5.xlsx", "NL_1355uur_MM_sticker1_meting6.xlsx",...
    "NL_1443uur_MM_sticker1_meting7.xlsx", "NL_1547uur_MM_sticker1_meting8.xlsx",...
    "NL_1631uur_MM_sticker1_meting9.xlsx"] ; 
%%
S1_Patch1M1_O2norm_630nm = zeros(4000,5);
S1_Patch1M2_O2norm_630nm = zeros(4000,5);
S1_Patch1M3_O2norm_630nm = zeros(4000,5);
S1_Patch1M4_O2norm_630nm = zeros(4000,5);
S1_Patch1M5_O2norm_630nm = zeros(4000,5);
S1_Patch1M6_O2norm_630nm = zeros(4000,5);
S1_Patch1M7_O2norm_630nm = zeros(4000,5);
S1_Patch1M8_O2norm_630nm = zeros(4000,5);
S1_Patch1M9_O2norm_630nm = zeros(4000,5);

for i = 2:1:6
    S1_Patch1M1_O2norm_630nm(:,i-1) = xlsread(f_1(1), i, 'A2:A4001');
    S1_Patch1M2_O2norm_630nm(:,i-1) = xlsread(f_1(2), i, 'A2:A4001');
    S1_Patch1M3_O2norm_630nm(:,i-1) = xlsread(f_1(3), i, 'A2:A4001');
    S1_Patch1M4_O2norm_630nm(:,i-1) = xlsread(f_1(4), i, 'A2:A4001');
    S1_Patch1M5_O2norm_630nm(:,i-1) = xlsread(f_1(5), i, 'A2:A4001');
    S1_Patch1M6_O2norm_630nm(:,i-1) = xlsread(f_1(6), i, 'A2:A4001');
    S1_Patch1M7_O2norm_630nm(:,i-1) = xlsread(f_1(7), i, 'A2:A4001');
    S1_Patch1M8_O2norm_630nm(:,i-1) = xlsread(f_1(8), i, 'A2:A4001');
    S1_Patch1M9_O2norm_630nm(:,i-1) = xlsread(f_1(9), i, 'A2:A4001');
end 

S1_Patch1M1_O2norm_670nm = zeros(4000,5);
S1_Patch1M2_O2norm_670nm = zeros(4000,5);
S1_Patch1M3_O2norm_670nm = zeros(4000,5);
S1_Patch1M4_O2norm_670nm = zeros(4000,5);
S1_Patch1M5_O2norm_670nm = zeros(4000,5);
S1_Patch1M6_O2norm_670nm = zeros(4000,5);
S1_Patch1M7_O2norm_670nm = zeros(4000,5);
S1_Patch1M8_O2norm_670nm = zeros(4000,5);
S1_Patch1M9_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch1M1_O2norm_670nm(:,i-1) = xlsread(f_1(1), i, 'B2:B4001');
    S1_Patch1M2_O2norm_670nm(:,i-1) = xlsread(f_1(2), i, 'B2:B4001');
    S1_Patch1M3_O2norm_670nm(:,i-1) = xlsread(f_1(3), i, 'B2:B4001');
    S1_Patch1M4_O2norm_670nm(:,i-1) = xlsread(f_1(4), i, 'B2:B4001');
    S1_Patch1M5_O2norm_670nm(:,i-1) = xlsread(f_1(5), i, 'B2:B4001');
    S1_Patch1M6_O2norm_670nm(:,i-1) = xlsread(f_1(6), i, 'B2:B4001');
    S1_Patch1M7_O2norm_670nm(:,i-1) = xlsread(f_1(7), i, 'B2:B4001');
    S1_Patch1M8_O2norm_670nm(:,i-1) = xlsread(f_1(8), i, 'B2:B4001');
    S1_Patch1M9_O2norm_670nm(:,i-1) = xlsread(f_1(9), i, 'B2:B4001');
end

%% patch 2 

S1_Patch2M1_O2norm_630nm = zeros(4000,5);
S1_Patch2M2_O2norm_630nm = zeros(4000,5);
S1_Patch2M1_O2norm_670nm = zeros(4000,5);
S1_Patch2M2_O2norm_670nm = zeros(4000,5);

f_2 = ["NL_MM_0940uur_meting1_!", "NL_MM_1101uur_sticker2_meting2"] ; 
for i = 2:1:6
    S1_Patch2M1_O2norm_630nm(:,i-1) = xlsread(f_2(1), i, 'A2:A4001');
    S1_Patch2M2_O2norm_630nm(:,i-1) = xlsread(f_2(2), i, 'A2:A4001');
    S1_Patch2M1_O2norm_670nm(:,i-1) = xlsread(f_2(1), i, 'B2:B4001');
    S1_Patch2M2_O2norm_670nm(:,i-1) = xlsread(f_2(2), i, 'B2:B4001');
end

%% patch 3

f_3 = ["NL_1037uur_MM_sticker3_meting1.xlsx", "NL_1202uur_MM_sticker3_meting2.xlsx",...
    "NL_1403uur_MM_sticker3_meting3.xlsx", "NL_1553uur_MM_sticker3_meting4.xlsx"] ; 

S1_Patch3M1_O2norm_630nm = zeros(4000,5);
S1_Patch3M2_O2norm_630nm = zeros(4000,5);
S1_Patch3M3_O2norm_630nm = zeros(4000,5);
S1_Patch3M4_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch3M1_O2norm_630nm(:,i-1) = xlsread(f_3(1), i, 'A2:A4001');
    S1_Patch3M2_O2norm_630nm(:,i-1) = xlsread(f_3(2), i, 'A2:A4001');
    S1_Patch3M3_O2norm_630nm(:,i-1) = xlsread(f_3(3), i, 'A2:A4001');
    S1_Patch3M4_O2norm_630nm(:,i-1) = xlsread(f_3(4), i, 'A2:A4001');
end

S1_Patch3M1_O2norm_670nm = zeros(4000,5);
S1_Patch3M2_O2norm_670nm = zeros(4000,5);
S1_Patch3M3_O2norm_670nm = zeros(4000,5);
S1_Patch3M4_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch3M1_O2norm_670nm(:,i-1) = xlsread(f_3(1), i, 'B2:B4001');
    S1_Patch3M2_O2norm_670nm(:,i-1) = xlsread(f_3(2), i, 'B2:B4001');
    S1_Patch3M3_O2norm_670nm(:,i-1) = xlsread(f_3(3), i, 'B2:B4001');
    S1_Patch3M4_O2norm_670nm(:,i-1) = xlsread(f_3(4), i, 'B2:B4001');
end
%% patch 4 
f_4 = ["NL_1140uur_MM_sticker4_meting1.xlsx", "NL_1254uur_MM_sticker4_meting2.xlsx",...
    "NL_1457uur_MM_sticker4_meting3.xlsx", "NL_1642uur_MM_sticker4_meting4.xlsx"] ; 

S1_Patch4M1_O2norm_630nm = zeros(4000,5);
S1_Patch4M2_O2norm_630nm = zeros(4000,5);
S1_Patch4M3_O2norm_630nm = zeros(4000,5);
S1_Patch4M4_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch4M1_O2norm_630nm(:,i-1) = xlsread(f_4(1), i, 'A2:A4001');
    S1_Patch4M2_O2norm_630nm(:,i-1) = xlsread(f_4(2), i, 'A2:A4001');
    S1_Patch4M3_O2norm_630nm(:,i-1) = xlsread(f_4(3), i, 'A2:A4001');
    S1_Patch4M4_O2norm_630nm(:,i-1) = xlsread(f_4(4), i, 'A2:A4001');
end

S1_Patch4M1_O2norm_670nm = zeros(4000,5);
S1_Patch4M2_O2norm_670nm = zeros(4000,5);
S1_Patch4M3_O2norm_670nm = zeros(4000,5);
S1_Patch4M4_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch4M1_O2norm_670nm(:,i-1) = xlsread(f_4(1), i, 'B2:B4001');
    S1_Patch4M2_O2norm_670nm(:,i-1) = xlsread(f_4(2), i, 'B2:B4001');
    S1_Patch4M3_O2norm_670nm(:,i-1) = xlsread(f_4(3), i, 'B2:B4001');
    S1_Patch4M4_O2norm_670nm(:,i-1) = xlsread(f_4(4), i, 'B2:B4001');
end
%% patch 5 
f_5 = ["NL_MM_0948_sticker5_meting1!.xlsx", "NL_MM_1105uur_sticker5_meting2.xlsx"] ; 

S1_Patch5M1_O2norm_630nm = zeros(4000,5); 
S1_Patch5M2_O2norm_630nm = zeros(4000,5); 
S1_Patch5M1_O2norm_670nm = zeros(4000,5); 
S1_Patch5M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch5M1_O2norm_630nm(:,i-1) = xlsread(f_5(1), i, 'A2:A4001');
    S1_Patch5M2_O2norm_630nm(:,i-1) = xlsread(f_5(2), i, 'A2:A4001');
    S1_Patch5M1_O2norm_670nm(:,i-1) = xlsread(f_5(1), i, 'B2:B4001');
    S1_Patch5M2_O2norm_670nm(:,i-1) = xlsread(f_5(2), i, 'B2:B4001');
end
%% patch 6 
f_6 = ["NL_1042uur_MM_sticker6_meting1.xlsx", "NL_1206uur_MM_sticker6_meting2.xlsx"] ;   

S1_Patch6M1_O2norm_630nm = zeros(4000,5);
S1_Patch6M2_O2norm_630nm = zeros(4000,5);
S1_Patch6M1_O2norm_670nm = zeros(4000,5); 
S1_Patch6M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch6M1_O2norm_630nm(:,i-1) = xlsread(f_6(1), i, 'A2:A4001');
    S1_Patch6M2_O2norm_630nm(:,i-1) = xlsread(f_6(2), i, 'A2:A4001');
    S1_Patch6M1_O2norm_670nm(:,i-1) = xlsread(f_6(1), i, 'B2:B4001');
    S1_Patch6M2_O2norm_670nm(:,i-1) = xlsread(f_6(2), i, 'B2:B4001');
end
%% patch 7
f_7 = ["NL_1145uur_MM_sticker7_meting1.xlsx", "NL_1300uur_MM_sticker7_meting2.xlsx"];  

S1_Patch7M1_O2norm_630nm = zeros(4000,5); 
S1_Patch7M2_O2norm_630nm = zeros(4000,5); 
S1_Patch7M1_O2norm_670nm = zeros(4000,5); 
S1_Patch7M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch7M1_O2norm_630nm(:,i-1) = xlsread(f_7(1), i, 'A2:A4001');
    S1_Patch7M2_O2norm_630nm(:,i-1) = xlsread(f_7(2), i, 'A2:A4001');
    S1_Patch7M1_O2norm_670nm(:,i-1) = xlsread(f_7(1), i, 'B2:B4001');
    S1_Patch7M2_O2norm_670nm(:,i-1) = xlsread(f_7(2), i, 'B2:B4001');
end
%% patch 8
f_8 = ["NL_1238uur_MM_sticker8_meting1.xlsx", "NL_1406uur_MM_sticker8_meting2.xlsx"] ; 

S1_Patch8M1_O2norm_630nm = zeros(4000,5);
S1_Patch8M2_O2norm_630nm = zeros(4000,5); 
S1_Patch8M1_O2norm_670nm = zeros(4000,5); 
S1_Patch8M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch8M1_O2norm_630nm(:,i-1) = xlsread(f_8(1), i, 'A2:A4001');
    S1_Patch8M2_O2norm_630nm(:,i-1) = xlsread(f_8(2), i, 'A2:A4001');
    S1_Patch8M1_O2norm_670nm(:,i-1) = xlsread(f_8(1), i, 'B2:B4001');
    S1_Patch8M2_O2norm_670nm(:,i-1) = xlsread(f_8(1), i, 'B2:B4001');
end
%% patch 9
f_9 = ["NL_1346uur_MM_sticker9_meting1.xlsx", "NL_1501uur_MM_sticker9_meting2.xlsx"] ;  

S1_Patch9M1_O2norm_630nm = zeros(4000,5); 
S1_Patch9M2_O2norm_630nm = zeros(4000,5); 
S1_Patch9M1_O2norm_670nm = zeros(4000,5); 
S1_Patch9M2_O2norm_670nm = zeros(4000,5);

for i = 2:1:6
    S1_Patch9M1_O2norm_630nm(:,i-1) = xlsread(f_9(1), i, 'A2:A4001');
    S1_Patch9M2_O2norm_630nm(:,i-1) = xlsread(f_9(2), i+1, 'A2:A4001');
    S1_Patch9M1_O2norm_670nm(:,i-1) = xlsread(f_9(1), i, 'B2:B4001');
    S1_Patch9M2_O2norm_670nm(:,i-1) = xlsread(f_9(2), i+1, 'B2:B4001');
end

%% patch 10
f_10 = ["NL_1440uur_MM_sticker10_meting1.xlsx", "NL_1556uur_MM_sticker10_meting2.xlsx"] ; 

S1_Patch10M1_O2norm_630nm = zeros(4000,5); 
S1_Patch10M2_O2norm_630nm = zeros(4000,5); 
S1_Patch10M1_O2norm_670nm = zeros(4000,5); 
S1_Patch10M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch10M1_O2norm_630nm(:,i-1) = xlsread(f_10(1), i, 'A2:A4001');
    S1_Patch10M2_O2norm_630nm(:,i-1) = xlsread(f_10(2), i, 'A2:A4001');
    S1_Patch10M1_O2norm_670nm(:,i-1) = xlsread(f_10(1), i, 'B2:B4001');
    S1_Patch10M2_O2norm_670nm(:,i-1) = xlsread(f_10(2), i, 'B2:B4001');
end
%% patch 11
f_11 = ["NL_1538uur_MM_sticker11_meting1.xlsx", "NL_1644uur_MM_sticker11_meting2.xlsx"] ; 

S1_Patch11M1_O2norm_630nm = zeros(4000,5); 
S1_Patch11M2_O2norm_630nm = zeros(4000,5); 
S1_Patch11M1_O2norm_670nm = zeros(4000,5); 
S1_Patch11M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch11M1_O2norm_630nm(:,i-1) = xlsread(f_11(1), i, 'A2:A4001');
    S1_Patch11M2_O2norm_630nm(:,i-1) = xlsread(f_11(2), i, 'A2:A4001');
    S1_Patch11M1_O2norm_670nm(:,i-1) = xlsread(f_11(1), i, 'B2:B4001');
    S1_Patch11M2_O2norm_670nm(:,i-1) = xlsread(f_11(2), i, 'B2:B4001');
end
%% patch 12
f_12 = ["NL_1637uur_MM_sticker12_meting1.xlsx"];

S1_Patch12M1_O2norm_630nm = zeros(4000,5); 
S1_Patch12M1_O2norm_670nm = zeros(4000,5); 
for i = 2:1:6
    S1_Patch12M1_O2norm_630nm(:,i-1) = xlsread(f_12(1), i, 'A2:A4001');
    S1_Patch12M1_O2norm_670nm(:,i-1) = xlsread(f_12(1), i, 'B2:B4001');
end

%% BGS 

f_BGS = ["NL_1011uur_BGS_meting2.xlsx", "NL_1134uur_MM_BGS_meting3.xlsx",...
    "NL_1340uur_MM_BGS_meting4.xlsx", "NL_1532uur_MM_BGS_meting5.xlsx"] ; 

S1_BGSM1_O2norm_630nm = zeros(4000,5);
S1_BGSM2_O2norm_630nm = zeros(4000,5);
S1_BGSM3_O2norm_630nm = zeros(4000,5);
S1_BGSM4_O2norm_630nm = zeros(4000,5);
S1_BGSM5_O2norm_630nm = zeros(4000,5); 
for i = 2:1:6
    S1_BGSM1_O2norm_630nm(:,i-1) = xlsread(f_1(1), i+5, 'A2:A4001');
    S1_BGSM2_O2norm_630nm(:,i-1) = xlsread(f_BGS(1), i, 'A2:A4001');
    S1_BGSM3_O2norm_630nm(:,i-1) = xlsread(f_BGS(2), i, 'A2:A4001');
    S1_BGSM4_O2norm_630nm(:,i-1) = xlsread(f_BGS(3), i, 'A2:A4001');
    S1_BGSM5_O2norm_630nm(:,i-1) = xlsread(f_BGS(4), i, 'A2:A4001');
end

S1_BGSM1_O2norm_670nm = zeros(4000,5);
S1_BGSM2_O2norm_670nm = zeros(4000,5);
S1_BGSM3_O2norm_670nm = zeros(4000,5);
S1_BGSM4_O2norm_670nm = zeros(4000,5);
S1_BGSM5_O2norm_670nm = zeros(4000,5); 
for i = 2:1:6
    S1_BGSM1_O2norm_670nm(:,i-1) = xlsread(f_1(1), i+5, 'B2:B4001');
    S1_BGSM2_O2norm_670nm(:,i-1) = xlsread(f_BGS(1), i, 'B2:B4001');
    S1_BGSM3_O2norm_670nm(:,i-1) = xlsread(f_BGS(2), i, 'B2:B4001');
    S1_BGSM4_O2norm_670nm(:,i-1) = xlsread(f_BGS(3), i, 'B2:B4001');
    S1_BGSM5_O2norm_670nm(:,i-1) = xlsread(f_BGS(4), i, 'B2:B4001');
end
%% Save subject one 
for iii = 1:1:12 
    for ii = ["630nm", "670nm"] 
        for i = 1:1:9
            if exist(sprintf('S1_Patch%dM%d_O2norm_%s',iii,i,ii),'var') == 1
               filename = sprintf('S1_Patch%dM%d_O2norm_%s',iii,i,ii) ; 
               save(filename) 
            elseif exist(sprintf('S1_BGSM%d_O2norm_%s',i,ii),'var') == 1 
               filename = sprintf('S1_BGSM%d_O2norm_%s',i,ii) ; 
               save(filename) 
            else
                exist(sprintf('S1_Patch%dM%d_O2norm_%s',iii,i,ii),'var') == 0 ; 
                continue 
            end 
        end 
    end 
end
%% SKIN DATA - subject 2 - patch 1
S2_Patch1M1_O2norm_630nm = zeros(4000,5);
S2_Patch1M2_O2norm_630nm = zeros(4000,5);
S2_Patch1M3_O2norm_630nm = zeros(4000,5);
S2_Patch1M4_O2norm_630nm = zeros(4000,5);
S2_Patch1M5_O2norm_630nm = zeros(4000,5);
S2_Patch1M6_O2norm_630nm = zeros(4000,5);
S2_Patch1M7_O2norm_630nm = zeros(4000,5);
S2_Patch1M8_O2norm_630nm = zeros(4000,5);
S2_Patch1M9_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch1M1_O2norm_630nm(:,i-1) = [S2_Patch1M1_O2norm_630nm, xlsread('NL_8.50uur_Meting_1.xlsx', i, 'A2:A4001')];
    S2_Patch1M2_O2norm_630nm(:,i-1) = [S2_Patch1M2_O2norm_630nm, xlsread('NL_1004uur_MS_sticker1_meting2.xlsx', i, 'A2:A4001')];
    S2_Patch1M3_O2norm_630nm(:,i-1) = [S2_Patch1M3_O2norm_630nm, xlsread('NL_1058uur_MS_sticker1_meting3.xlsx', i, 'A2:A4001')];
    S2_Patch1M4_O2norm_630nm(:,i-1) = [S2_Patch1M4_O2norm_630nm, xlsread('NL_1200uur_MS_sticker1_meting4.xlsx', i, 'A2:A4001')];
    S2_Patch1M5_O2norm_630nm(:,i-1) = [S2_Patch1M5_O2norm_630nm, xlsread('NL_1251uur_MS_sticker1_meting5.xlsx', i, 'A2:A4001')];
    S2_Patch1M6_O2norm_630nm(:,i-1) = [S2_Patch1M6_O2norm_630nm, xlsread('NL_1400uur_MS_sticker1_metingen6.xlsx', i, 'A2:A4001')];
    S2_Patch1M7_O2norm_630nm(:,i-1) = [S2_Patch1M7_O2norm_630nm, xlsread('NL_1453uur_MS_sticker1_meting7.xlsx', i, 'A2:A4001')];
    S2_Patch1M8_O2norm_630nm(:,i-1) = [S2_Patch1M8_O2norm_630nm, xlsread('NL_1550uur_MS_sticker1_meting8.xlsx', i, 'A2:A4001')];
    S2_Patch1M9_O2norm_630nm(:,i-1) = [S2_Patch1M9_O2norm_630nm, xlsread('NL_1634uur_MS_sticker1_meting9.xlsx', i, 'A2:A4001')];
end
S2_Patch1M1_O2norm_670nm = zeros(4000,5);
S2_Patch1M2_O2norm_670nm = zeros(4000,5);
S2_Patch1M3_O2norm_670nm = zeros(4000,5);
S2_Patch1M4_O2norm_670nm = zeros(4000,5);
S2_Patch1M5_O2norm_670nm = zeros(4000,5);
S2_Patch1M6_O2norm_670nm = zeros(4000,5);
S2_Patch1M7_O2norm_670nm = zeros(4000,5);
S2_Patch1M8_O2norm_670nm = zeros(4000,5);
S2_Patch1M9_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch1M1_O2norm_670nm(:,i-1) = [S2_Patch1M1_O2norm_670nm, xlsread('NL_8.50uur_Meting_1.xlsx', i, 'B2:B4001')];
    S2_Patch1M2_O2norm_670nm(:,i-1) = [S2_Patch1M2_O2norm_670nm, xlsread('NL_1004uur_MS_sticker1_meting2.xlsx', i, 'B2:B4001')];
    S2_Patch1M3_O2norm_670nm(:,i-1) = [S2_Patch1M3_O2norm_670nm, xlsread('NL_1058uur_MS_sticker1_meting3.xlsx', i, 'B2:B4001')];
    S2_Patch1M4_O2norm_670nm(:,i-1) = [S2_Patch1M4_O2norm_670nm, xlsread('NL_1200uur_MS_sticker1_meting4.xlsx', i, 'B2:B4001')];
    S2_Patch1M5_O2norm_670nm(:,i-1) = [S2_Patch1M5_O2norm_670nm, xlsread('NL_1251uur_MS_sticker1_meting5.xlsx', i, 'B2:B4001')];
    S2_Patch1M6_O2norm_670nm(:,i-1) = [S2_Patch1M6_O2norm_670nm, xlsread('NL_1400uur_MS_sticker1_metingen6.xlsx', i, 'B2:B4001')];
    S2_Patch1M7_O2norm_670nm(:,i-1) = [S2_Patch1M7_O2norm_670nm, xlsread('NL_1453uur_MS_sticker1_meting7.xlsx', i, 'B2:B4001')];
    S2_Patch1M8_O2norm_670nm(:,i-1) = [S2_Patch1M8_O2norm_670nm, xlsread('NL_1550uur_MS_sticker1_meting8.xlsx', i, 'B2:B4001')];
    S2_Patch1M9_O2norm_670nm(:,i-1) = [S2_Patch1M9_O2norm_670nm, xlsread('NL_1634uur_MS_sticker1_meting9.xlsx', i, 'B2:B4001')];
end

%% patch 2 
S2_Patch2M1_O2norm_630nm = zeros(4000,5);
S2_Patch2M2_O2norm_630nm = zeros(4000,5);
S2_Patch2M1_O2norm_670nm = zeros(4000,5);
S2_Patch2M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch2M1_O2norm_630nm(:,i-1) = xlsread('NL_MS_0951uur_Sticker2_meting1.xlsx', i, 'A2:A4001');
    S2_Patch2M2_O2norm_630nm(:,i-1) = xlsread('NL_1109uur_MS_Sticker2_meting2.xlsx', i, 'A2:A4001');
    S2_Patch2M1_O2norm_670nm(:,i-1) = xlsread('NL_MS_0951uur_Sticker2_meting1.xlsx', i, 'B2:B4001');
    S2_Patch2M2_O2norm_670nm(:,i-1) = xlsread('NL_1109uur_MS_Sticker2_meting2.xlsx', i, 'B2:B4001');
end
%% patch 3
S2_Patch3M1_O2norm_630nm = zeros(4000,5);
S2_Patch3M2_O2norm_630nm = zeros(4000,5);
S2_Patch3M3_O2norm_630nm = zeros(4000,5);
S2_Patch3M4_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch3M1_O2norm_630nm(:,i-1) = xlsread('NL_1046uur_MS_sticker3_meting1.xlsx', i, 'A2:A4001');
    S2_Patch3M2_O2norm_630nm(:,i-1) = xlsread('NL_1209uur_MS_sticker3_meting2.xlsx', i, 'A2:A4001');
    S2_Patch3M3_O2norm_630nm(:,i-1) = xlsread('NL_1410uur_MS_sticker3_meting3.xlsx', i, 'A2:A4001');
    S2_Patch3M4_O2norm_630nm(:,i-1) = xlsread('NL_1559uur_MS_sticker3_meting4.xlsx', i, 'A2:A4001');
end

S2_Patch3M1_O2norm_670nm = zeros(4000,5);
S2_Patch3M2_O2norm_670nm = zeros(4000,5);
S2_Patch3M3_O2norm_670nm = zeros(4000,5);
S2_Patch3M4_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch3M1_O2norm_670nm(:,i-1) = xlsread('NL_1046uur_MS_sticker3_meting1.xlsx', i, 'B2:B4001');
    S2_Patch3M2_O2norm_670nm(:,i-1) = xlsread('NL_1209uur_MS_sticker3_meting2.xlsx', i, 'B2:B4001');
    S2_Patch3M3_O2norm_670nm(:,i-1) = xlsread('NL_1410uur_MS_sticker3_meting3.xlsx', i, 'B2:B4001');
    S2_Patch3M4_O2norm_670nm(:,i-1) = xlsread('NL_1559uur_MS_sticker3_meting4.xlsx', i, 'B2:B4001');
end
%% patch 4 
S2_Patch4M1_O2norm_630nm = zeros(4000,5);
S2_Patch4M2_O2norm_630nm = zeros(4000,5);
S2_Patch4M3_O2norm_630nm = zeros(4000,5);
S2_Patch4M4_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch4M1_O2norm_630nm(:,i-1) = xlsread('NL_1149uur_MS_sticker4_meting1.xlsx', i, 'A2:A4001');
    S2_Patch4M2_O2norm_630nm(:,i-1) = xlsread('NL_1303uur_MS_sticker4_meting2.xlsx', i, 'A2:A4001');
    S2_Patch4M3_O2norm_630nm(:,i-1) = xlsread('NL_1507uur_MS_sticker4_meting3.xlsx', i, 'A2:A4001');
    S2_Patch4M4_O2norm_630nm(:,i-1) = xlsread('NL_1652uur_MS_sticker4_meting4.xlsx', i, 'A2:A4001');
end

S2_Patch4M1_O2norm_670nm = zeros(4000,5);
S2_Patch4M2_O2norm_670nm = zeros(4000,5);
S2_Patch4M3_O2norm_670nm = zeros(4000,5);
S2_Patch4M4_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch4M1_O2norm_670nm(:,i-1) = xlsread('NL_1149uur_MS_sticker4_meting1.xlsx', i, 'B2:B4001');
    S2_Patch4M2_O2norm_670nm(:,i-1) = xlsread('NL_1303uur_MS_sticker4_meting2.xlsx', i, 'B2:B4001');
    S2_Patch4M3_O2norm_670nm(:,i-1) = xlsread('NL_1507uur_MS_sticker4_meting3.xlsx', i, 'B2:B4001');
    S2_Patch4M4_O2norm_670nm(:,i-1) = xlsread('NL_1652uur_MS_sticker4_meting4.xlsx', i, 'B2:B4001');
end
%% patch 5 
S2_Patch5M1_O2norm_630nm = zeros(4000,5); 
S2_Patch5M2_O2norm_630nm = zeros(4000,5); 
S2_Patch5M1_O2norm_670nm = zeros(4000,5); 
S2_Patch5M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch5M1_O2norm_630nm(:,i-1) = xlsread('NL_MS_0957uur_sticker5_meting1.xlsx', i, 'A2:A4001');
    S2_Patch5M2_O2norm_630nm(:,i-1) = xlsread('NL_1112uur_MS_sticker5_meting2.xlsx', i, 'A2:A4001');
    S2_Patch5M1_O2norm_670nm(:,i-1) = xlsread('NL_MS_0957uur_sticker5_meting1.xlsx', i, 'B2:B4001');
    S2_Patch5M2_O2norm_670nm(:,i-1) = xlsread('NL_1112uur_MS_sticker5_meting2.xlsx', i, 'B2:B4001');
end
%% patch 6 
S2_Patch6M1_O2norm_630nm = zeros(4000,5);
S2_Patch6M2_O2norm_630nm = zeros(4000,5);
S2_Patch6M1_O2norm_670nm = zeros(4000,5); 
S2_Patch6M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch6M1_O2norm_630nm(:,i-1) = xlsread('NL_1050uur_MS_sticker6_meting1.xlsx', i, 'A2:A4001');
    S2_Patch6M2_O2norm_630nm(:,i-1) = xlsread('NL_1213uur_MS_sticker6_meting2.xlsx', i, 'A2:A4001');
    S2_Patch6M1_O2norm_670nm(:,i-1) = xlsread('NL_1050uur_MS_sticker6_meting1.xlsx', i, 'B2:B4001');
    S2_Patch6M2_O2norm_670nm(:,i-1) = xlsread('NL_1213uur_MS_sticker6_meting2.xlsx', i, 'B2:B4001');
end
%% patch 7
S2_Patch7M1_O2norm_630nm = zeros(4000,5); 
S2_Patch7M2_O2norm_630nm = zeros(4000,5); 
S2_Patch7M1_O2norm_670nm = zeros(4000,5); 
S2_Patch7M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch7M1_O2norm_630nm(:,i-1) = xlsread('NL_1153uur_MS_sticker7_meting1.xlsx', i, 'A2:A4001');
    S2_Patch7M2_O2norm_630nm(:,i-1) = xlsread('NL_1306uur_MS_sticker7_meting2.xlsx', i, 'A2:A4001');
    S2_Patch7M1_O2norm_670nm(:,i-1) = xlsread('NL_1153uur_MS_sticker7_meting1.xlsx', i, 'B2:B4001');
    S2_Patch7M2_O2norm_670nm(:,i-1) = xlsread('NL_1306uur_MS_sticker7_meting2.xlsx', i, 'B2:B4001');
end
%% patch 8
S2_Patch8M1_O2norm_630nm = zeros(4000,5);
S2_Patch8M2_O2norm_630nm = zeros(4000,5); 
S2_Patch8M1_O2norm_670nm = zeros(4000,5); 
S2_Patch8M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch8M1_O2norm_630nm(:,i-1) = xlsread('NL_1244uur_MS_sticker8_meting1.xlsx', i, 'A2:A4001');
    S2_Patch8M2_O2norm_630nm(:,i-1) = xlsread('NL_1414uur_MS_sticker8_meting2.xlsx', i, 'A2:A4001');
    S2_Patch8M1_O2norm_670nm(:,i-1) = xlsread('NL_1244uur_MS_sticker8_meting1.xlsx', i, 'B2:B4001');
    S2_Patch8M2_O2norm_670nm(:,i-1) = xlsread('NL_1414uur_MS_sticker8_meting2.xlsx', i, 'B2:B4001');
end
%% patch 9
S2_Patch9M1_O2norm_630nm = zeros(4000,5); 
S2_Patch9M2_O2norm_630nm = zeros(4000,5); 
S2_Patch9M1_O2norm_670nm = zeros(4000,5); 
S2_Patch9M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch9M1_O2norm_630nm(:,i-1) = xlsread('NL_1350uur_MS_sticker9_meting1.xlsx', i, 'A2:A4001');
    S2_Patch9M2_O2norm_630nm(:,i-1) = xlsread('NL_1511uur_MS_sticker9_meting2.xlsx', i, 'A2:A4001');
    S2_Patch9M1_O2norm_670nm(:,i-1) = xlsread('NL_1350uur_MS_sticker9_meting1.xlsx', i, 'B2:B4001');
    S2_Patch9M2_O2norm_670nm(:,i-1) = xlsread('NL_1511uur_MS_sticker9_meting2.xlsx', i, 'B2:B4001');
end

%% patch 10
S2_Patch10M1_O2norm_630nm = zeros(4000,5); 
S2_Patch10M2_O2norm_630nm = zeros(4000,5); 
S2_Patch10M1_O2norm_670nm = zeros(4000,5); 
S2_Patch10M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch10M1_O2norm_630nm(:,i-1) = xlsread('NL_1447uur_MS_sticker10_meting1.xlsx', i, 'A2:A4001');
    S2_Patch10M2_O2norm_630nm(:,i-1) = xlsread('NL_1602uur_MS_sticker10_meting2.xlsx', i, 'A2:A4001');
    S2_Patch10M1_O2norm_670nm(:,i-1) = xlsread('NL_1447uur_MS_sticker10_meting1.xlsx', i, 'B2:B4001');
    S2_Patch10M2_O2norm_670nm(:,i-1) = xlsread('NL_1602uur_MS_sticker10_meting2.xlsx', i, 'B2:B4001');
end
%% patch 11
S2_Patch11M1_O2norm_630nm = zeros(4000,5); 
S2_Patch11M2_O2norm_630nm = zeros(4000,5); 
S2_Patch11M1_O2norm_670nm = zeros(4000,5); 
S2_Patch11M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S2_Patch11M1_O2norm_630nm(:,i-1) = [S2_Patch11M1_O2norm_630nm, xlsread('NL_1542uur_MS_sticker11_meting1.xlsx', i, 'A2:A4001')];
    S2_Patch11M2_O2norm_630nm(:,i-1) = [S2_Patch11M1_O2norm_630nm, xlsread('NL_1655uur_MS_sticker11_meting2.xlsx', i, 'A2:A4001')];
    S2_Patch11M1_O2norm_670nm(:,i-1) = [S2_Patch11M1_O2norm_670nm, xlsread('NL_1542uur_MS_sticker11_meting1.xlsx', i, 'B2:B4001')];
    S2_Patch11M2_O2norm_670nm(:,i-1) = [S2_Patch11M1_O2norm_670nm, xlsread('NL_1655uur_MS_sticker11_meting2.xlsx', i, 'B2:B4001')];
end
%% patch 12
S2_Patch12M1_O2norm_630nm = zeros(4000,5); 
S2_Patch12M1_O2norm_670nm = zeros(4000,5); 
for i = 2:1:6
    S2_Patch12M1_O2norm_630nm(:,i-1) = [S2_Patch12M1_O2norm_630nm, xlsread('NL_1649uur_MS_sticker12_meting.xlsx', i, 'A2:A4001')];
    S2_Patch12M1_O2norm_670nm(:,i-1) = [S2_Patch12M1_O2norm_670nm, xlsread('NL_1649uur_MS_sticker12_meting.xlsx', i, 'B2:B4001')];
end

%% BGS 
S2_BGSM1_O2norm_630nm = zeros(4000,5);
S2_BGSM2_O2norm_630nm = zeros(4000,5);
S2_BGSM3_O2norm_630nm = zeros(4000,5);
S2_BGSM4_O2norm_630nm = zeros(4000,5);
S2_BGSM5_O2norm_630nm = zeros(4000,5); 
for i = 2:1:6
    S2_BGSM1_O2norm_630nm(:,i-1) = xlsread('NL_8.50uur_Meting_1.xlsx', i+5, 'A2:A4001');
    S2_BGSM2_O2norm_630nm(:,i-1) = xlsread('NL_1014uur_MS_BGS_meting2.xlsx', i, 'A2:A4001');
    S2_BGSM3_O2norm_630nm(:,i-1) = xlsread('NL_1138uur_MS_BGS_meting3.xlsx', i, 'A2:A4001');
    S2_BGSM4_O2norm_630nm(:,i-1) = xlsread('NL_1342uur_MS_BGS_meting4.xlsx', i, 'A2:A4001');
    S2_BGSM5_O2norm_630nm(:,i-1) = xlsread('NL_1535uur_MS_BGS_meting5.xlsx', i, 'A2:A4001');
end
S2_BGSM1_O2norm_670nm = zeros(4000,5);
S2_BGSM2_O2norm_670nm = zeros(4000,5);
S2_BGSM3_O2norm_670nm = zeros(4000,5);
S2_BGSM4_O2norm_670nm = zeros(4000,5);
S2_BGSM5_O2norm_670nm = zeros(4000,5); 
for i = 2:1:6
    S2_BGSM1_O2norm_670nm(:,i-1) = xlsread('NL_8.50uur_Meting_1.xlsx', i+5, 'B2:B4001');
    S2_BGSM2_O2norm_670nm(:,i-1) = xlsread('NL_1014uur_MS_BGS_meting2.xlsx', i, 'B2:B4001');
    S2_BGSM3_O2norm_670nm(:,i-1) = xlsread('NL_1138uur_MS_BGS_meting3.xlsx', i, 'B2:B4001');
    S2_BGSM4_O2norm_670nm(:,i-1) = xlsread('NL_1342uur_MS_BGS_meting4.xlsx', i, 'B2:B4001');
    S2_BGSM5_O2norm_670nm(:,i-1) = xlsread('NL_1535uur_MS_BGS_meting5.xlsx', i, 'B2:B4001');
end
%% Save 
for iii = 1:1:12 
    for ii = ["630nm", "670nm"] 
        for i = 1:1:9
            if exist(sprintf('S2_Patch%dM%d_O2norm_%s',iii,i,ii),'var') == 1
               filename = sprintf('S2_Patch%dM%d_O2norm_%s',iii,i,ii) ; 
               save(filename) 
            elseif exist(sprintf('S2_BGSM%d_O2norm_%s',i,ii),'var') == 1 
               filename = sprintf('S2_BGS%dM%d_O2norm_%s',i,ii) ; 
               save(filename) 
            else
                exist(sprintf('S2_Patch%dM%d_O2norm_%s',iii,i,ii),'var') == 0 ; 
                continue 
            end 
        end 
    end 
end
%% Blank







%% SKIN DATA - subject 3 - patch 1
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch1M1_O2norm_630nm = zeros(4000,5);
S3_Patch1M2_O2norm_630nm = zeros(4000,5);
S3_Patch1M3_O2norm_630nm = zeros(4000,5);
S3_Patch1M4_O2norm_630nm = zeros(4000,5);
S3_Patch1M5_O2norm_630nm = zeros(4000,5);
S3_Patch1M6_O2norm_630nm = zeros(4000,5);
S3_Patch1M7_O2norm_630nm = zeros(4000,5);
S3_Patch1M8_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1M1_O2norm_630nm(:,i-1) = xlsread('S1_M1_0911_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M2_O2norm_630nm(:,i-1) = xlsread('S1_M2_1052_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M3_O2norm_630nm(:,i-1) = xlsread('S1_M3_1156_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M4_O2norm_630nm(:,i-1) = xlsread('S1_M4_1250_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M5_O2norm_630nm(:,i-1) = xlsread('S1_M5_1353_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M6_O2norm_630nm(:,i-1) = xlsread('S1_M6_1455_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M7_O2norm_630nm(:,i-1) = xlsread('S1_M7_1556_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch1M8_O2norm_630nm(:,i-1) = xlsread('S1_M8_1657_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch1M1_O20_630nm = zeros(4000,5);
S3_Patch1M2_O20_630nm = zeros(4000,5);
S3_Patch1M3_O20_630nm = zeros(4000,5);
S3_Patch1M4_O20_630nm = zeros(4000,5);
S3_Patch1M5_O20_630nm = zeros(4000,5);
S3_Patch1M6_O20_630nm = zeros(4000,5);
S3_Patch1M7_O20_630nm = zeros(4000,5);
S3_Patch1M8_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1M1_O20_630nm(:,i-1) = xlsread('S1_M1_0911_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch1M2_O20_630nm(:,i-1) = xlsread('S1_M2_1052_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M3_O20_630nm(:,i-1) = xlsread('S1_M3_1156_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M4_O20_630nm(:,i-1) = xlsread('S1_M4_1250_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M5_O20_630nm(:,i-1) = xlsread('S1_M5_1353_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M6_O20_630nm(:,i-1) = xlsread('S1_M6_1455_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M7_O20_630nm(:,i-1) = xlsread('S1_M7_1556_O20.xlsx', i, 'A2:A4001');
    S3_Patch1M8_O20_630nm(:,i-1) = xlsread('S1_M8_1657_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch1M1_O2norm_670nm = zeros(4000,5);
S3_Patch1M2_O2norm_670nm = zeros(4000,5);
S3_Patch1M3_O2norm_670nm = zeros(4000,5);
S3_Patch1M4_O2norm_670nm = zeros(4000,5);
S3_Patch1M5_O2norm_670nm = zeros(4000,5);
S3_Patch1M6_O2norm_670nm = zeros(4000,5);
S3_Patch1M7_O2norm_670nm = zeros(4000,5);
S3_Patch1M8_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1M1_O2norm_670nm(:,i-1) = xlsread('S1_M1_0911_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M2_O2norm_670nm(:,i-1) = xlsread('S1_M2_1052_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M3_O2norm_670nm(:,i-1) = xlsread('S1_M3_1156_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M4_O2norm_670nm(:,i-1) = xlsread('S1_M4_1250_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M5_O2norm_670nm(:,i-1) = xlsread('S1_M5_1353_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M6_O2norm_670nm(:,i-1) = xlsread('S1_M6_1455_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M7_O2norm_670nm(:,i-1) = xlsread('S1_M7_1556_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch1M8_O2norm_670nm(:,i-1) = xlsread('S1_M8_1657_O2norm.xlsx', i, 'B2:B4001');
end

% O20
S3_Patch1M1_O20_670nm = zeros(4000,5);
S3_Patch1M2_O20_670nm = zeros(4000,5);
S3_Patch1M3_O20_670nm = zeros(4000,5);
S3_Patch1M4_O20_670nm = zeros(4000,5);
S3_Patch1M5_O20_670nm = zeros(4000,5);
S3_Patch1M6_O20_670nm = zeros(4000,5);
S3_Patch1M7_O20_670nm = zeros(4000,5);
S3_Patch1M8_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1M1_O20_670nm(:,i-1) = xlsread('S1_M1_0911_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch1M2_O20_670nm(:,i-1) = xlsread('S1_M2_1052_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M3_O20_670nm(:,i-1) = xlsread('S1_M3_1156_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M4_O20_670nm(:,i-1) = xlsread('S1_M4_1250_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M5_O20_670nm(:,i-1) = xlsread('S1_M5_1353_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M6_O20_670nm(:,i-1) = xlsread('S1_M6_1455_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M7_O20_670nm(:,i-1) = xlsread('S1_M7_1556_O20.xlsx', i, 'B2:B4001');
    S3_Patch1M8_O20_670nm(:,i-1) = xlsread('S1_M8_1657_O20.xlsx', i, 'B2:B4001');
end 

%% Patch 2 
% Load data - 630 nm
% O2norm
S3_Patch2M1_O2norm_630nm = zeros(4000,5);
S3_Patch2M2_O2norm_630nm = zeros(4000,5);
S3_Patch2M3_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch2M1_O2norm_630nm(:,i-1) = xlsread('S2_M1_0939_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch2M2_O2norm_630nm(:,i-1) = xlsread('S2_M2_1050_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch2M3_O2norm_630nm(:,i-1) = xlsread('S2_M3_1349_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch2M1_O20_630nm = zeros(4000,5);
S3_Patch2M2_O20_630nm = zeros(4000,5);
S3_Patch2M3_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch2M1_O20_630nm(:,i-1) = xlsread('S2_M1_0939_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch2M2_O20_630nm(:,i-1) = xlsread('S2_M2_1050_O20.xlsx', i, 'A2:A4001');
    S3_Patch2M3_O20_630nm(:,i-1) = xlsread('S2_M3_1349_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch2M1_O2norm_670nm = zeros(4000,5);
S3_Patch2M2_O2norm_670nm = zeros(4000,5);
S3_Patch2M3_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch2M1_O2norm_670nm(:,i-1) = xlsread('S2_M1_0939_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch2M2_O2norm_670nm(:,i-1) = xlsread('S2_M2_1050_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch2M3_O2norm_670nm(:,i-1) = xlsread('S2_M3_1349_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch2M1_O20_670nm = zeros(4000,5);
S3_Patch2M2_O20_670nm = zeros(4000,5);
S3_Patch2M3_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch2M1_O20_670nm(:,i-1) = xlsread('S2_M1_0939_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch2M2_O20_670nm(:,i-1) = xlsread('S2_M2_1050_O20.xlsx', i, 'B2:B4001');
    S3_Patch2M3_O20_670nm(:,i-1) = xlsread('S2_M3_1349_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 3
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch3M1_O2norm_630nm = zeros(4000,5);
S3_Patch3M2_O2norm_630nm = zeros(4000,5);
S3_Patch3M3_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch3M1_O2norm_630nm(:,i-1) = xlsread('S3_M1_1040_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch3M2_O2norm_630nm(:,i-1) = xlsread('S3_M2_1150_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch3M3_O2norm_630nm(:,i-1) = xlsread('S3_M3_1346_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch3M1_O20_630nm = zeros(4000,5);
S3_Patch3M2_O20_630nm = zeros(4000,5);
S3_Patch3M3_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch3M1_O20_630nm(:,i-1) = xlsread('S3_M1_1040_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch3M2_O20_630nm(:,i-1) = xlsread('S3_M2_1150_O20.xlsx', i, 'A2:A4001');
    S3_Patch3M3_O20_630nm(:,i-1) = xlsread('S3_M3_1346_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch3M1_O2norm_670nm = zeros(4000,5);
S3_Patch3M2_O2norm_670nm = zeros(4000,5);
S3_Patch3M3_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch3M1_O2norm_670nm(:,i-1) = xlsread('S3_M1_1040_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch3M2_O2norm_670nm(:,i-1) = xlsread('S3_M2_1150_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch3M3_O2norm_670nm(:,i-1) = xlsread('S3_M3_1346_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch3M1_O20_670nm = zeros(4000,5);
S3_Patch3M2_O20_670nm = zeros(4000,5);
S3_Patch3M3_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch3M1_O20_670nm(:,i-1) = xlsread('S3_M1_1040_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch3M2_O20_670nm(:,i-1) = xlsread('S3_M2_1150_O20.xlsx', i, 'B2:B4001');
    S3_Patch3M3_O20_670nm(:,i-1) = xlsread('S3_M3_1346_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 4
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch4M1_O2norm_630nm = zeros(4000,5);
S3_Patch4M2_O2norm_630nm = zeros(4000,5);
S3_Patch4M3_O2norm_630nm = zeros(4000,5);
S3_Patch4M4_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch4M1_O2norm_630nm(:,i-1) = xlsread('S4_M1_1140_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch4M2_O2norm_630nm(:,i-1) = xlsread('S4_M2_1243_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch4M3_O2norm_630nm(:,i-1) = xlsread('S4_M3_1447_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch4M3_O2norm_630nm(:,i-1) = xlsread('S4_M4_1654_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch4M1_O20_630nm = zeros(4000,5);
S3_Patch4M2_O20_630nm = zeros(4000,5);
S3_Patch4M3_O20_630nm = zeros(4000,5);
S3_Patch4M4_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch4M1_O20_630nm(:,i-1) = xlsread('S4_M1_1140_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch4M2_O20_630nm(:,i-1) = xlsread('S4_M2_1243_O20.xlsx', i, 'A2:A4001');
    S3_Patch4M3_O20_630nm(:,i-1) = xlsread('S4_M3_1447_O20.xlsx', i, 'A2:A4001');
    S3_Patch4M4_O20_630nm(:,i-1) = xlsread('S4_M4_1654_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch4M1_O2norm_670nm = zeros(4000,5);
S3_Patch4M2_O2norm_670nm = zeros(4000,5);
S3_Patch4M3_O2norm_670nm = zeros(4000,5);
S3_Patch4M4_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch4M1_O2norm_670nm(:,i-1) = xlsread('S4_M1_1140_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch4M2_O2norm_670nm(:,i-1) = xlsread('S4_M2_1243_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch4M3_O2norm_670nm(:,i-1) = xlsread('S4_M3_1447_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch4M4_O2norm_670nm(:,i-1) = xlsread('S4_M4_1654_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch4M1_O20_670nm = zeros(4000,5);
S3_Patch4M2_O20_670nm = zeros(4000,5);
S3_Patch4M3_O20_670nm = zeros(4000,5);
S3_Patch4M4_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch4M1_O20_670nm(:,i-1) = xlsread('S4_M1_1140_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch4M2_O20_670nm(:,i-1) = xlsread('S4_M2_1243_O20.xlsx', i, 'B2:B4001');
    S3_Patch4M3_O20_670nm(:,i-1) = xlsread('S4_M3_1447_O20.xlsx', i, 'B2:B4001');
    S3_Patch4M4_O20_670nm(:,i-1) = xlsread('S4_M4_1654_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 5
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch5M1_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch5M1_O2norm_630nm(:,i-1) = xlsread('S5_M1_0943_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch5M1_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch5M1_O20_630nm(:,i-1) = xlsread('S5_M1_0943_O20.xlsx', i, 'A2:A4001'); 
end

% Load data - 670 nm
% O2norm 
S3_Patch5M1_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch5M1_O2norm_670nm(:,i-1) = xlsread('S5_M1_0943_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch5M1_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch5M1_O20_670nm(:,i-1) = xlsread('S5_M1_0943_O20.xlsx', i, 'B2:B4001'); 
end 
%% Patch 6
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch2M1_O2norm_630nm = zeros(4000,5);
S3_Patch6M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch2M1_O2norm_630nm(:,i-1) = xlsread('S6_M1_1045_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch6M2_O2norm_630nm(:,i-1) = xlsread('S6_M2_1153_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch6M1_O20_630nm = zeros(4000,5);
S3_Patch6M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch6M1_O20_630nm(:,i-1) = xlsread('S6_M1_1045_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch6M2_O20_630nm(:,i-1) = xlsread('S6_M2_1153_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch6M1_O2norm_670nm = zeros(4000,5);
S3_Patch6M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch6M1_O2norm_670nm(:,i-1) = xlsread('S6_M1_1045_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch6M2_O2norm_670nm(:,i-1) = xlsread('S6_M2_1153_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch6M1_O20_670nm = zeros(4000,5);
S3_Patch6M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch6M1_O20_670nm(:,i-1) = xlsread('S6_M1_1045_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch6M2_O20_670nm(:,i-1) = xlsread('S6_M2_1153_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 7
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch7M1_O2norm_630nm = zeros(4000,5);
S3_Patch7M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch7M1_O2norm_630nm(:,i-1) = xlsread('S7_M1_1146_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch7M2_O2norm_630nm(:,i-1) = xlsread('S7_M2_1246_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch7M1_O20_630nm = zeros(4000,5);
S3_Patch7M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch7M1_O20_630nm(:,i-1) = xlsread('S7_M1_1146_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch7M2_O20_630nm(:,i-1) = xlsread('S7_M2_1246_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch7M1_O2norm_670nm = zeros(4000,5);
S3_Patch7M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch7M1_O2norm_670nm(:,i-1) = xlsread('S7_M1_1146_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch7M2_O2norm_670nm(:,i-1) = xlsread('S7_M2_1246_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch7M1_O20_670nm = zeros(4000,5);
S3_Patch7M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch7M1_O20_670nm(:,i-1) = xlsread('S7_M1_1146_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch7M2_O20_670nm(:,i-1) = xlsread('S7_M2_1246_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 8
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch8M1_O2norm_630nm = zeros(4000,5);
S3_Patch8M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch8M1_O2norm_630nm(:,i-1) = xlsread('S8_M1_1240_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch8M2_O2norm_630nm(:,i-1) = xlsread('S8_M2_1342_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch8M1_O20_630nm = zeros(4000,5);
S3_Patch8M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch8M1_O20_630nm(:,i-1) = xlsread('S8_M1_1240_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch8M2_O20_630nm(:,i-1) = xlsread('S8_M2_1342_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch8M1_O2norm_670nm = zeros(4000,5);
S3_Patch8M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch8M1_O2norm_670nm(:,i-1) = xlsread('S8_M1_1240_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch8M2_O2norm_670nm(:,i-1) = xlsread('S8_M2_1342_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch8M1_O20_670nm = zeros(4000,5);
S3_Patch8M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch8M1_O20_670nm(:,i-1) = xlsread('S8_M1_1240_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch8M2_O20_670nm(:,i-1) = xlsread('S8_M2_1342_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 9
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch9M1_O2norm_630nm = zeros(4000,5);
S3_Patch9M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch9M1_O2norm_630nm(:,i-1) = xlsread('S9_M1_1338_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch9M2_O2norm_630nm(:,i-1) = xlsread('S9_M2_1452_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch9M1_O20_630nm = zeros(4000,5);
S3_Patch9M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch9M1_O20_630nm(:,i-1) = xlsread('S9_M1_1338_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch9M2_O20_630nm(:,i-1) = xlsread('S9_M2_1452_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch9M1_O2norm_670nm = zeros(4000,5);
S3_Patch9M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch9M1_O2norm_670nm(:,i-1) = xlsread('S9_M1_1338_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch9M2_O2norm_670nm(:,i-1) = xlsread('S9_M2_1452_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch9M1_O20_670nm = zeros(4000,5);
S3_Patch9M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch9M1_O20_670nm(:,i-1) = xlsread('S9_M1_1338_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch9M2_O20_670nm(:,i-1) = xlsread('S9_M2_1452_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 10
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch10M1_O2norm_630nm = zeros(4000,5);
S3_Patch10M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch10M1_O2norm_630nm(:,i-1) = xlsread('S10_M1_1441_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch10M2_O2norm_630nm(:,i-1) = xlsread('S10_M2_1553_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch10M1_O20_630nm = zeros(4000,5);
S3_Patch10M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch10M1_O20_630nm(:,i-1) = xlsread('S10_M1_1441_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch10M2_O20_630nm(:,i-1) = xlsread('S10_M2_1553_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch10M1_O2norm_670nm = zeros(4000,5);
S3_Patch10M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch10M1_O2norm_670nm(:,i-1) = xlsread('S10_M1_1441_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch10M2_O2norm_670nm(:,i-1) = xlsread('S10_M2_1553_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch10M1_O20_670nm = zeros(4000,5);
S3_Patch10M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch10M1_O20_670nm(:,i-1) = xlsread('S10_M1_1441_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch10M2_O20_670nm(:,i-1) = xlsread('S10_M2_1553_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 11
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch11M1_O2norm_630nm = zeros(4000,5);
S3_Patch11M2_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch11M1_O2norm_630nm(:,i-1) = xlsread('S11_M1_1548_O2norm.xlsx', i, 'A2:A4001');
    S3_Patch11M2_O2norm_630nm(:,i-1) = xlsread('S11_M2_1648_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch11M1_O20_630nm = zeros(4000,5);
S3_Patch11M2_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch11M1_O20_630nm(:,i-1) = xlsread('S11_M1_1548_O20.xlsx', i, 'A2:A4001'); 
    S3_Patch11M2_O20_630nm(:,i-1) = xlsread('S11_M2_1648_O20.xlsx', i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_Patch11M1_O2norm_670nm = zeros(4000,5);
S3_Patch11M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch11M1_O2norm_670nm(:,i-1) = xlsread('S11_M1_1548_O2norm.xlsx', i, 'B2:B4001');
    S3_Patch11M2_O2norm_670nm(:,i-1) = xlsread('S11_M2_1648_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch11M1_O20_670nm = zeros(4000,5);
S3_Patch11M2_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch11M1_O20_670nm(:,i-1) = xlsread('S11_M1_1548_O20.xlsx', i, 'B2:B4001'); 
    S3_Patch11M2_O20_670nm(:,i-1) = xlsread('S11_M2_1648_O20.xlsx', i, 'B2:B4001');
end 
%% Patch 12
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

% O2norm
S3_Patch12M1_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch12M1_O2norm_630nm(:,i-1) = xlsread('S12_M1_1652_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_Patch12M1_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch12M1_O20_630nm(:,i-1) = xlsread('S12_M1_1652_O20.xlsx', i, 'A2:A4001'); 
end

% Load data - 670 nm
% O2norm 
S3_Patch12M1_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch12M1_O2norm_670nm(:,i-1) = xlsread('S12_M1_1652_O2norm.xlsx', i, 'B2:B4001');
end 

% O20
S3_Patch12M1_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch12M1_O20_670nm(:,i-1) = xlsread('S12_M1_1652_O20.xlsx', i, 'B2:B4001'); 
end 

%% BGS
% Load data - 630 nm
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

f_BGS_O20 = ["BGS_M1_0920_O20.xlsx", "BGS_M2_0953_O20.xlsx"...
    "BGS_M3_1055_O20.xlsx", "BGS_M4_1159_O20.xlsx",...
    "BGS_M5_1252_O20.xlsx", "BGS_M7_1458_O20.xlsx",...
    "BGS_M8_1559_O20.xlsx", "BGS_M9_1700_O20.xlsx"] ; 
f_BGS_O2norm = ["BGS_M2_0953_O2norm.xlsx"...
    "BGS_M3_1055_O2norm.xlsx", "BGS_M4_1159_O2norm.xlsx",...
    "BGS_M5_1252_O2norm.xlsx", "BGS_M6_1357_O2norm.xlsx",...
    "BGS_M7_1458_O2norm.xlsx", "BGS_M8_1559_O2norm.xlsx",...
    "BGS_M9_1700_O2norm.xlsx"] ; 

%% 
% O2norm
S3_BGSM1_O2norm_630nm = zeros(4000,5);
S3_BGSM2_O2norm_630nm = zeros(4000,5);
S3_BGSM3_O2norm_630nm = zeros(4000,5);
S3_BGSM4_O2norm_630nm = zeros(4000,5);
S3_BGSM5_O2norm_630nm = zeros(4000,5);
%S3_BGSM6_O2norm_630nm = zeros(4000,5);
S3_BGSM7_O2norm_630nm = zeros(4000,5);
S3_BGSM8_O2norm_630nm = zeros(4000,5);
S3_BGSM9_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_BGSM1_O2norm_630nm(:,i-1) = xlsread('S1_M1_0911_O20.xlsx', i+5, 'A2:A4001');
    S3_BGSM2_O2norm_630nm(:,i-1) = xlsread('', i, 'A2:A4001');
    S3_BGSM3_O2norm_630nm(:,i-1) = xlsread('BGS_M3_1055_O2norm.xlsx', i, 'A2:A4001');
    S3_BGSM4_O2norm_630nm(:,i-1) = xlsread('BGS_M4_1159_O2norm.xlsx', i, 'A2:A4001');
    S3_BGSM5_O2norm_630nm(:,i-1) = xlsread('BGS_M5_1252_O2norm.xlsx', i, 'A2:A4001');
    %S3_BGSM6_O2norm_630nm(:,i-1) = xlsread('BGS_M6_1159_O2norm.xlsx', i, 'A2:A4001');
    S3_BGSM7_O2norm_630nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'A2:A4001');
    S3_BGSM8_O2norm_630nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'A2:A4001');
    S3_BGSM9_O2norm_630nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'A2:A4001');
end
% O20
S3_BGSM1_O20_630nm = zeros(4000,5);
S3_BGSM2_O20_630nm = zeros(4000,5);
S3_BGSM3_O20_630nm = zeros(4000,5);
S3_BGSM4_O20_630nm = zeros(4000,5);
S3_BGSM5_O20_630nm = zeros(4000,5);
S3_BGSM6_O20_630nm = zeros(4000,5);
S3_BGSM7_O20_630nm = zeros(4000,5);
S3_BGSM8_O20_630nm = zeros(4000,5);
S3_BGSM9_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_BGSM1_O20_630nm(:,i-1) = xlsread(f_BGS_O20(1), i, 'A2:A4001'); 
    S3_BGSM2_O20_630nm(:,i-1) = xlsread(f_BGS_O20(2), i, 'A2:A4001');
    S3_BGSM3_O20_630nm(:,i-1) = xlsread(f_BGS_O20(3), i, 'A2:A4001');
    S3_BGSM4_O20_630nm(:,i-1) = xlsread(f_BGS_O20(4), i, 'A2:A4001');
    S3_BGSM5_O20_630nm(:,i-1) = xlsread(f_BGS_O20(5), i, 'A2:A4001');
    S3_BGSM6_O20_630nm(:,i-1) = xlsread(f_BGS_O20(6), i, 'A2:A4001');
    S3_BGSM7_O20_630nm(:,i-1) = xlsread(f_BGS_O20(7), i, 'A2:A4001');
    S3_BGSM8_O20_630nm(:,i-1) = xlsread(f_BGS_O20(7), i, 'A2:A4001');
    S3_BGSM9_O20_630nm(:,i-1) = xlsread(f_BGS_O20(7), i, 'A2:A4001');
end

% Load data - 670 nm
% O2norm 
S3_BGSM1_O2norm_670nm = zeros(4000,5);
S3_BGSM2_O2norm_670nm = zeros(4000,5);
S3_BGSM3_O2norm_670nm = zeros(4000,5);
S3_BGSM4_O2norm_670nm = zeros(4000,5);
S3_BGSM5_O2norm_670nm = zeros(4000,5);
%S3_BGSM6_O2norm_670nm = zeros(4000,5);
S3_BGSM7_O2norm_670nm = zeros(4000,5);
S3_BGSM8_O2norm_670nm = zeros(4000,5);
S3_BGSM9_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_BGSM1_O2norm_670nm(:,i-1) = xlsread('S1_M1_0911_O20.xlsx', i+5, 'B2:B4001');
    S3_BGSM2_O2norm_670nm(:,i-1) = xlsread('BGS_M2_0953_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM3_O2norm_670nm(:,i-1) = xlsread('BGS_M3_1055_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM4_O2norm_670nm(:,i-1) = xlsread('BGS_M4_1159_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM5_O2norm_670nm(:,i-1) = xlsread('BGS_M5_1252_O2norm.xlsx', i, 'B2:B4001');
    %S3_BGSM6_O2norm_670nm(:,i-1) = xlsread('BGS_M6_1159_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM7_O2norm_670nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM8_O2norm_670nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'B2:B4001');
    S3_BGSM9_O2norm_670nm(:,i-1) = xlsread('BGS_M7_1700_O2norm.xlsx', i, 'B2:B4001');
end

% O20
S3_BGSM1_O20_670nm = zeros(4000,5);
S3_BGSM2_O20_670nm = zeros(4000,5);
S3_BGSM3_O20_670nm = zeros(4000,5);
S3_BGSM4_O20_670nm = zeros(4000,5);
S3_BGSM5_O20_670nm = zeros(4000,5);
%S3_BGSM6_O20_670nm = zeros(4000,5);
S3_BGSM7_O20_670nm = zeros(4000,5);
S3_BGSM8_O20_670nm = zeros(4000,5);
S3_BGSM9_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_BGSM1_O20_670nm(:,i-1) = xlsread('BGS_M1_0920_O20.xlsx', i, 'B2:B4001'); 
    S3_BGSM2_O20_670nm(:,i-1) = xlsread('BGS_M2_0953_O20.xlsx', i, 'B2:B4001');
    S3_BGSM3_O20_670nm(:,i-1) = xlsread('BGS_M3_1055_O20.xlsx', i, 'B2:B4001');
    S3_BGSM4_O20_670nm(:,i-1) = xlsread('BGS_M4_1159_O20.xlsx', i, 'B2:B4001');
    S3_BGSM5_O20_670nm(:,i-1) = xlsread('BGS_M5_1252_O20.xlsx', i, 'B2:B4001');
    %S3_BGSM6_O20_670nm(:,i-1) = xlsread('BGS_M6_1159_O20.xlsx', i, 'B2:B4001');
    S3_BGSM7_O20_670nm(:,i-1) = xlsread('BGS_M7_1700_O20.xlsx', i, 'B2:B4001');
    S3_BGSM8_O20_670nm(:,i-1) = xlsread('BGS_M7_1700_O20.xlsx', i, 'B2:B4001');
    S3_BGSM9_O20_670nm(:,i-1) = xlsread('BGS_M7_1700_O20.xlsx', i, 'B2:B4001');
end 

%% 515nm

f_515 = ["S1_515nm_1627_O2norm.xlsx", "S2_515nm_1630_O2norm.xlsx", ...
    "S3_515nm_1632_O2norm.xlsx", "S4_515nm_1635_O2norm.xlsx",...
    "S5_515nm_1638_O2norm.xlsx", "S6_515nm_1641_O2norm.xlsx",...
    "S7_515nm_1644_O2norm.xlsx", "S8_515nm_1704_O2norm.xlsx",...
    "S9_515nm_1706_O2norm.xlsx", "S10_515nm_1708_O2norm.xlsx",...
    "S11_515nm_1710_O2norm.xlsx", "S12_515nm_1712_O2norm.xlsx",...
    "S1_515nm_1627_O20.xlsx", "S2_515nm_1630_O20.xlsx", ...
    "S3_515nm_1632_O20.xlsx", "S4_515nm_1635_O20.xlsx",...
    "S5_515nm_1638_O20.xlsx", "S6_515nm_1641_O20.xlsx",...
    "S7_515nm_1644_O20.xlsx", "S8_515nm_1704_O20.xlsx",...
    "S9_515nm_1706_O20.xlsx", "S10_515nm_1708_O20.xlsx",...
    "S11_515nm_1710_O20.xlsx", "S12_515nm_1712_O20.xlsx"] ; 
% O2norm - 630 nm
S3_Patch1_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch2_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch3_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch4_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch5_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch6_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch7_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch8_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch9_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch10_515nm_O2norm_630nm = zeros(4000,5);
S3_Patch11_515nm_O2norm_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(1), i, 'A2:A4001');
    S3_Patch2_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(2), i, 'A2:A4001');
    S3_Patch3_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(3), i, 'A2:A4001');
    S3_Patch4_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(4), i, 'A2:A4001');
    S3_Patch5_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(5), i, 'A2:A4001');
    S3_Patch6_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(6), i, 'A2:A4001');
    S3_Patch7_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(7), i, 'A2:A4001');
    S3_Patch8_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(8), i, 'A2:A4001');
    S3_Patch9_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(9), i, 'A2:A4001');
    S3_Patch10_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(10), i, 'A2:A4001');
    S3_Patch11_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(11), i+1, 'A2:A4001');
end

% 670nm
S3_Patch1_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch2_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch3_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch4_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch5_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch6_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch7_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch8_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch9_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch10_515nm_O2norm_670nm = zeros(4000,5);
S3_Patch11_515nm_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(1), i, 'B2:B4001');
    S3_Patch2_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(2), i, 'B2:B4001');
    S3_Patch3_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(3), i, 'B2:B4001');
    S3_Patch4_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(4), i, 'B2:B4001');
    S3_Patch5_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(5), i, 'B2:B4001');
    S3_Patch6_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(6), i, 'B2:B4001');
    S3_Patch7_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(7), i, 'B2:B4001');
    S3_Patch8_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(8), i, 'B2:B4001');
    S3_Patch9_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(9), i, 'B2:B4001');
    S3_Patch10_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(10), i, 'B2:B4001');
    S3_Patch11_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(11), i+1, 'B2:B4001');
end

% 12
S3_Patch12_515nm_O2norm_670nm = zeros(4000,4);
S3_Patch12_515nm_O2norm_630nm = zeros(4000,4);
for i = 2:1:5 
    S3_Patch12_515nm_O2norm_630nm(:,i-1) = xlsread(f_515(12), i, 'A2:A4001');
    S3_Patch12_515nm_O2norm_670nm(:,i-1) = xlsread(f_515(12), i, 'B2:B4001');
end 
    
%% O20
S3_Patch1_515nm_O20_630nm = zeros(4000,5);
S3_Patch2_515nm_O20_630nm = zeros(4000,5);
S3_Patch3_515nm_O20_630nm = zeros(4000,5);
S3_Patch4_515nm_O20_630nm = zeros(4000,5);
S3_Patch5_515nm_O20_630nm = zeros(4000,5);
S3_Patch6_515nm_O20_630nm = zeros(4000,5);
S3_Patch7_515nm_O20_630nm = zeros(4000,5);
S3_Patch8_515nm_O20_630nm = zeros(4000,5);
S3_Patch9_515nm_O20_630nm = zeros(4000,5);
S3_Patch10_515nm_O20_630nm = zeros(4000,5);
S3_Patch11_515nm_O20_630nm = zeros(4000,5);
S3_Patch12_515nm_O20_630nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1_515nm_O20_630nm(:,i-1) = xlsread(f_515(13), i, 'A2:A4001');
    S3_Patch2_515nm_O20_630nm(:,i-1) = xlsread(f_515(14), i+1, 'A2:A4001');
    S3_Patch3_515nm_O20_630nm(:,i-1) = xlsread(f_515(15), i, 'A2:A4001');
    S3_Patch4_515nm_O20_630nm(:,i-1) = xlsread(f_515(16), i, 'A2:A4001');
    S3_Patch5_515nm_O20_630nm(:,i-1) = xlsread(f_515(17), i, 'A2:A4001');
    S3_Patch6_515nm_O20_630nm(:,i-1) = xlsread(f_515(18), i, 'A2:A4001');
    S3_Patch7_515nm_O20_630nm(:,i-1) = xlsread(f_515(19), i, 'A2:A4001');
    S3_Patch8_515nm_O20_630nm(:,i-1) = xlsread(f_515(20), i, 'A2:A4001');
    S3_Patch9_515nm_O20_630nm(:,i-1) = xlsread(f_515(21), i, 'A2:A4001');
    S3_Patch10_515nm_O20_630nm(:,i-1) = xlsread(f_515(22), i, 'A2:A4001');
    S3_Patch11_515nm_O20_630nm(:,i-1) = xlsread(f_515(23), i, 'A2:A4001');
    S3_Patch12_515nm_O20_630nm(:,i-1) = xlsread(f_515(24), i, 'A2:A4001');
end

S3_Patch1_515nm_O20_670nm = zeros(4000,5);
S3_Patch2_515nm_O20_670nm = zeros(4000,5);
S3_Patch3_515nm_O20_670nm = zeros(4000,5);
S3_Patch4_515nm_O20_670nm = zeros(4000,5);
S3_Patch5_515nm_O20_670nm = zeros(4000,5);
S3_Patch6_515nm_O20_670nm = zeros(4000,5);
S3_Patch7_515nm_O20_670nm = zeros(4000,5);
S3_Patch8_515nm_O20_670nm = zeros(4000,5);
S3_Patch9_515nm_O20_670nm = zeros(4000,5);
S3_Patch10_515nm_O20_670nm = zeros(4000,5);
S3_Patch11_515nm_O20_670nm = zeros(4000,5);
S3_Patch12_515nm_O20_670nm = zeros(4000,5);
for i = 2:1:6
    S3_Patch1_515nm_O20_670nm(:,i-1) = xlsread(f_515(13), i, 'B2:B4001');
    S3_Patch2_515nm_O20_670nm(:,i-1) = xlsread(f_515(14), i+1, 'B2:B4001');
    S3_Patch3_515nm_O20_670nm(:,i-1) = xlsread(f_515(15), i, 'B2:B4001');
    S3_Patch4_515nm_O20_670nm(:,i-1) = xlsread(f_515(16), i, 'B2:B4001');
    S3_Patch5_515nm_O20_670nm(:,i-1) = xlsread(f_515(17), i, 'B2:B4001');
    S3_Patch6_515nm_O20_670nm(:,i-1) = xlsread(f_515(18), i, 'B2:B4001');
    S3_Patch7_515nm_O20_670nm(:,i-1) = xlsread(f_515(19), i, 'B2:B4001');
    S3_Patch8_515nm_O20_670nm(:,i-1) = xlsread(f_515(20), i, 'B2:B4001');
    S3_Patch9_515nm_O20_670nm(:,i-1) = xlsread(f_515(21), i, 'B2:B4001');
    S3_Patch10_515nm_O20_670nm(:,i-1) = xlsread(f_515(22), i, 'B2:B4001');
    S3_Patch11_515nm_O20_670nm(:,i-1) = xlsread(f_515(23), i, 'B2:B4001');
    S3_Patch12_515nm_O20_670nm(:,i-1) = xlsread(f_515(24), i, 'B2:B4001');
end

%% Save 515 nm
for iii = 1:1:12 
    for ii = ["630nm", "670nm"] 
        for kk = ["norm", "0"] 
            if exist(sprintf('S3_Patch%d_515nm_O2%s_%s',iii,kk,ii),'var') == 1
               filename = sprintf('S3_Patch%d_515nm_O2%s_%s',iii,kk,ii) ; 
               save(filename) 
            else
                exist(sprintf('S3_Patch%d_515nm_O2%s_%s',iii,kk,ii),'var') == 0 ; 
                continue 
            end 
        end 
    end 
end
%% Save 
for iii = 1:1:12 
    for ii = ["630nm", "670nm"] 
        for kk = ["norm", "0"] 
            for i = 1:1:9
                if exist(sprintf('S3_Patch%dM%d_O2%s_%s',iii,i,kk,ii),'var') == 1
                   filename = sprintf('S3_Patch%dM%d_O2%s_%s',iii,i,kk,ii) ; 
                   save(filename) 
                elseif exist(sprintf('S3_BGSM%d_O2%s_%s',i,kk,ii),'var') == 1 
                   filename = sprintf('S3_BGSM%d_O2%s_%s',i,kk,ii) ; 
                   save(filename) 
                else
                    exist(sprintf('S3_Patch%dM%d_O2%s_%s',iii,i,kk,ii),'var') == 0 ; 
                    continue 
                end 
            end
        end 
    end 
end


%% SKIN DATA - subject 4
%% patch 6 
f_6 = ["S6_M1_1039_O2norm.xlsx", "S6_M2_1147_O2norm.xlsx",...
    "S6_M1_1039_O20.xlsx", "S6_M2_1147_O20.xlsx"] ;   

%O2norm
S1_Patch6M1_O2norm_630nm = zeros(4000,5);
S1_Patch6M2_O2norm_630nm = zeros(4000,5);
S1_Patch6M1_O2norm_670nm = zeros(4000,5); 
S1_Patch6M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch6M1_O2norm_630nm(:,i-1) = xlsread(f_6(1), i, 'A2:A4001');
    S1_Patch6M2_O2norm_630nm(:,i-1) = xlsread(f_6(2), i, 'A2:A4001');
    S1_Patch6M1_O2norm_670nm(:,i-1) = xlsread(f_6(1), i, 'B2:B4001');
    S1_Patch6M2_O2norm_670nm(:,i-1) = xlsread(f_6(2), i, 'B2:B4001');
end

%O20
S1_Patch6M1_O2norm_630nm = zeros(4000,5);
S1_Patch6M2_O2norm_630nm = zeros(4000,5);
S1_Patch6M1_O2norm_670nm = zeros(4000,5); 
S1_Patch6M2_O2norm_670nm = zeros(4000,5);
for i = 2:1:6
    S1_Patch6M1_O2norm_630nm(:,i-1) = xlsread(f_6(3), i, 'A2:A4001');
    S1_Patch6M2_O2norm_630nm(:,i-1) = xlsread(f_6(4), i, 'A2:A4001');
    S1_Patch6M1_O2norm_670nm(:,i-1) = xlsread(f_6(3), i, 'B2:B4001');
    S1_Patch6M2_O2norm_670nm(:,i-1) = xlsread(f_6(4), i, 'B2:B4001');
end