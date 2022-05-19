function [SUBJECTS] = Smooth_Subjects(SUBJECTS)
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}) ; 
    fields = fieldnames(SUBJECTS.(subs{ss})) ;
    for pp = 1:numel(fields) % patches 
        data2 = data.(fields{pp}) ; 
        
        MM = numel(data2(:,:,1)) ; % amount of measurements done per patch
        wave = cell(2,MM) ; % 670 and 630 nm togeher for every measurement
        for ii = 1:MM % amount of measurements done for patch one, we will average every measurement
            data3 = data2(:,ii,5) ; % all data patch one measurement one 1x1 cell with 1x5 cell 
            M = numel(data3{1,1}); % amount of measurements done per measurement % M = numel(dS1M1{1,patch number for different patches});

            wave630 = zeros(4000,M);
            wave670 = zeros(4000,M);

            for bb = 1:M % for the amount of measurements for every measurement
                wave630(:,bb) = data3{1,1}{1,bb}.nm630 ; 
                wave670(:,bb) = data3{1,1}{1,bb}.nm670 ;
                wave{1,ii} = wave630; 
                wave{2,ii} = wave670; 
            end 
            smooth = cell(2,1) ; % smooth together for every patch 
            smooth(1,1) = {DataPrep(wave{1,ii},1)} ;
            smooth(2,1) = {DataPrep(wave{2,ii},1)} ; 
            SUBJECTS.(subs{ss}).(fields{pp})(:,ii,6) = {smooth} ; 
        end 
    end 
end
end

