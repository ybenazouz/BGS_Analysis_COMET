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
% Open directory containing ALL the (correct) files for each patch and
% every measurement. Click open when pop up arrives. 

ROOT_DIR = uigetdir ; 
% d = uigetdir(pwd, 'Select a folder');

%% Definitions 
% Check if these variables are correct and according to the data you have. 

patches = ["S1","S2","S3","S4","S5","S6","S7","S8","S9","S10","S11","S12","BGS"] ; 
N = 5 ; % amount of measurements for each timestamp
data = cell(1,N) ;
range = 'A1:B4001';

%% Create empty subject structs 

SUBJ_1 = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;
SUBJ_2 = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;
SUBJ_3 = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;
SUBJ_4 = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;

SUBJ_3_515nm = struct('S1',[],'S2',[],'S3',[],'S4',[],'S5',[],...
    'S6',[],'S7',[],'S8',[],'S9',[],'S10',[],'S11',[],'S12',[],'BGS',[]) ;

%% Check if any .xlsx file has an odd number of sheets 

for p=1:numel(patches)
    DATASET= patches(p) ; 
    WILDSTR="_*.xlsx";      % the wildcard pattern to match file naming convention
    d=dir(fullfile(ROOT_DIR,strcat(DATASET,WILDSTR))); % and return all those matching files
    for dd=1:numel(d) 
        sheets = sheetnames(fullfile(d(dd).folder,d(dd).name)); 
        if (length(sheets) ~= N+1) == 1     % If number of sheets is not equal to measurements +1, name will show in workspace. 
            display(d(dd).name)
        else 
            continue 
        end 
    end
end 

%% Loop to fill patches struct with ND-arrays. 
% change SUBJ_X to the correct X 

for p=1:numel(patches)
    DATASET= patches(p) ; 
    WILDSTR="_*.xlsx";      % the wildcard pattern to match file naming convention
    d=dir(fullfile(ROOT_DIR,strcat(DATASET,WILDSTR))); % and return all those matching files
    newname = split(erase({d.name},'.xlsx'),'_') ;
    if (numel(d) == 1) == 1  % dit nog niet echt getest  
        newname = reshape(newname,[1,4]) ; 
        newd = cell(1,numel(newname)); 
        for dd = 1:numel(newname) 
            newd(1,dd) = newname(dd,1) ; 
            newname = newd ; 
        end 
    end     
    for i=1:numel(d)
        for k=2:1:1+N
        data{k-1}=readtable(fullfile(d(i).folder,d(i).name),'sheet',k,...
          'VariableNamingRule','preserve','Range', range);
        data{k-1}.Properties.VariableNames{'Dev1/ai0'} = 'nm630';
        data{k-1}.Properties.VariableNames{'Dev1/ai1'} = 'nm670';
        end
        newname(:,i,5) = {data} ; 
    end
    SUB_3.(patches(p))= newname ; 
end 
%% Save struct 

% save('DataStructs/SUB_1','SUB_1') ; 
% save('DataStructs/SUB_2','SUB_2') ; 
% save('DataStructs/SUB_3','SUB_3') ; 
% save('DataStructs/SUB_4','SUB_4') ; 
%% Save entire workspace as file subjects 
save('SUBJECTS') ; 
%%
save('DataStructs/SUB_3_515nm','SUB_3_515nm') ; 
