# TM2_COMET
All files created only refer to measurements made with the new laser / second laser set up. 

FILES

- GetandSave.m 
- main_expCOMETparts.m
- main_expALAskin.m

FUNCTIONS

- LifetimeDF.m
- DataPrep.m

ABBREVIATIONS

P: Parts 
A: ALA-patch 
M: Measurement number for each individual ALA-sticker 
S: Subject 

- P1 = blauwebehuizing_1408
- P2 = diffusor_glad_1413
- P3 = diffusor_ruw_1414
- P4 = FiberOranjeDun_dicht
- P5 = FiberOranjeDun_open 
- P6 = FiberZwartDik_kort_dicht
- P7 = FiberZwartDik_kort_open
- P8 = FiberZwartDik_lang_dicht
- P9 = FiberZwartDik_lang_open 
- P10 = filter_kant1 (beschadigd) 
- P11 = [P11, xlsread('expCOMETparts_filter_kant2 
- P12 = glue_mr1a_glaseerst   
- P13 = glue_mr1a_lijmeerst   
- P14 = expCOMETparts_zilverenhulsmetlenzen

NB: measurements below are BGS in air and against a mirror 
- P15 = niks_laserinhouder
- P16 = niks_laserinlucht
- P17 = parts_spiegel

- S1 = MM, Marjolein Muller
- S2 = MS, Myrte Schoemakers
- S3 = YB, Yasmin Ben Azouz 
- S4 = MM, Marijn 

REFERENCES (for myself) 
Algorthms fit sum: https://math.stackexchange.com/questions/1428566/fit-sum-of-exponentials/3808325#3808325

Exponential fit error: https://nl.mathworks.com/matlabcentral/answers/298152-exp-fit-error-inf-computed-by-model-function-fitting-cannot-continue-try-using-or-tightening-uppe

STEPS

%% Load .mat files into cell 
% Make sure you run the GetandSave.m file before running this file. 
% Open file directory with all P.mat files before loading 

% dir PATCHES/SUBJECT_3 >> dir gebruiken zodat je de bestanden niet hoeft
% te openen? 
%% Data Smoothing 
% The function DataPrep will first apply an sgolay filter to flatten the
% data and then all measurements per part will be averaged. This will be
% done only to the first 2000 samples (opposed to 4000), as there is little
% use in evaluating after the 2000 point. 
%% Fit exponential fit to the signals 
% hier evt nog een keuze of je een figuur wil zien toevoegen en evt nog dat
% de lifetimeDF het aantal gebruikt dat uit DFexpfit komt gebruikt. 

%% Load .mat files into cell 
% Make sure you run the GetandSave.m file before running this file. 
% Open file directory with all P.mat files before loading 

%% Data Smoothing 
% The function DataPrep will first apply an sgolay filter to flatten the
% data and then all measurements per part will be averaged. This will be
% done only to the first 2000 samples (opposed to 4000), as there is little
% use in evaluating after the 2000 point. 
%% Fit exponential fit to the signals 
% hier evt nog een keuze of je een figuur wil zien toevoegen en evt nog dat
% de lifetimeDF het aantal gebruikt dat uit DFexpfit komt gebruikt. 