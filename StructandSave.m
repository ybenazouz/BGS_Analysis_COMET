%% Save Data Struct 
% Y. (Yasmin) Ben Azouz
% Version: 18.05.2022
% Get and Save data in Struct for each subject.

clear
close all 
%% README KLAD
% BGS O2norm was attached to S1M1O20, copied file, removed sheets 2-6 and
% renamed to BGS_M1_0920_O2norm.xlsx
%% Get directory
ROOT_DIR = uigetdir ; % if fixed or use uigetdir or ...
%% Definitions 
patches = ["S1","S2","S3","S4","S5","S6","S7","S8","S9","S10","S11","S12","BGS"] ; 
data = cell(1,5) ;
range = 'A1:B4001';
SUBJ_1 = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;  
%% Loop to fill patches struct with ND-arrays. 
for p=1:numel(patches)
    DATASET= patches(p) ; 
    WILDSTR="_*.xlsx";      % the wildcard pattern to match file naming convention
    d=dir(fullfile(ROOT_DIR,strcat(DATASET,WILDSTR))); % and return all those matching files
    newname = split(erase({d.name},'.xlsx'),'_') ;
    for i=1:numel(d)
        for k=2:1:6
        data{k-1}=readtable(fullfile(d(i).folder,d(i).name),'sheet',k,...
          'VariableNamingRule','preserve','Range', range);
        data{k-1}.Properties.VariableNames{'Dev1/ai0'} = 'nm630';
        data{k-1}.Properties.VariableNames{'Dev1/ai1'} = 'nm670';
        end
        newname(:,i,5) = {data} ; 
    end
    SUBJ_1.(patches(p))= newname ; 
end 
