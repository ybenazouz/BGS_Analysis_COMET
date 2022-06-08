%% ALA PATCHES EXPERIMENT NEW LASER
% Y. (Yasmin) Ben Azouz
% Version: 20.05.2022

clear 
close all 
%% Load all subjects in one struct
SUBJECTS = load('SUBJECTS.mat') ; 
% SUB_3_515nm = load('DataStructs/SUB_3_515nm') ;

%% Smooth data
[SUBJECTS] = Smooth_Subjects(SUBJECTS) ;  % misschien niet netjes dat ze dezelfde naam hebben?

%% patch 1 measurements 
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}).S1 ; 
    MM = numel(data(:,:,1)) ;
    if (MM <= 10) == 1 
    plot_O2norm = zeros(3,MM) ; 
        for bb = 1:MM
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
            
            plot_O2norm(1,bb) = str2double(data(:,bb,3))+260 ; 
            plot_O2norm(2,bb) = smooth{1}{1}.max ; %630nm 
            plot_O2norm(3,bb) = smooth{1}{2}.max ; %670nm
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--','Linewidth',3)
    elseif (MM >= 10) == 1 
    plot_O2norm = zeros(3,MM/2) ; 
    plot_O20 = zeros(3,MM/2) ;
        for bb = 1:MM % for the amount of measurements 
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
           if strcmp(O2{1},'O2norm') == 1 
                plot_O2norm(1,bb/2) = str2double(data(:,bb,3))+260 ; 
                plot_O2norm(2,bb/2) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,bb/2) = smooth{1}{2}.max ; %670nm
            elseif strcmp(O2{1},'O20') == 1 
                plot_O20(1,bb-((bb-1)/2)) = str2double(data(:,bb,3))+260 ; 
                plot_O20(2,bb-((bb-1)/2))= smooth{1}{1}.max ; %630nm 
                plot_O20(3,bb-((bb-1)/2))= smooth{1}{2}.max ; %670nm
           end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--','Linewidth',3)
        hold on
        plot(plot_O20(1,:), plot_O20(2,:),'bo-','Linewidth',3)
        hold on 
        plot(plot_O20(1,:), plot_O20(3,:),'bo--','Linewidth',3)
    end 
    hold on 
    sub = ["SUBJECT 1","SUBJECT 2","SUBJECT 3","SUBJECT 4"]  ; 
    txt = "- Measurements Patch One" ; 
    title(sub(ss)+txt,'Fontsize',16) ; 
    xlabel('Time after application [h]','Fontsize',16)
    ylabel('Intensity [V]','Fontsize',16)
end 

%BGS
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}).BGS ; 
    MM = numel(data(:,:,1)) ; 
    if (MM <= 10) == 1 
    plot_O2norm = zeros(3,MM) ; 
        for bb = 1:MM
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
            
            plot_O2norm(1,bb) = str2double(data(:,bb,3))+260; 
            plot_O2norm(2,bb) = smooth{1}{1}.max ; %630nm 
            plot_O2norm(3,bb) = smooth{1}{2}.max ; %670nm
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
                legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'Location','northwest') ; 
    elseif (MM >= 10) == 1 
    plot_O2norm = zeros(3,MM/2) ; 
    plot_O20 = zeros(3,MM/2) ;
        for bb = 1:MM % for the amount of measurements 
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
           if strcmp(O2{1},'O2norm') == 1 
                plot_O2norm(1,bb/2) = str2double(data(:,bb,3))+260; 
                plot_O2norm(2,bb/2) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,bb/2) = smooth{1}{2}.max ; %670nm
            elseif strcmp(O2{1},'O20') == 1 
                plot_O20(1,bb-((bb-1)/2)) = str2double(data(:,bb,3))+260 ; 
                plot_O20(2,bb-((bb-1)/2))= smooth{1}{1}.max ; %630nm 
                plot_O20(3,bb-((bb-1)/2))= smooth{1}{2}.max ; %670nm
           end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
        hold on
        plot(plot_O20(1,:), plot_O20(2,:),'mo-','Linewidth',3)
        hold on 
        plot(plot_O20(1,:), plot_O20(3,:),'mo--','Linewidth',3)
                legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'Patch 1 O20; 630nm', 'Patch 1 O20; 670nm',...
    'BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'BGS O20; 630nm', 'BGS O20; 670nm',...
    'Location','northwest') ; 
    end 
end 

%% Ratio BGS 
ratio = zeros(1,D) ; 
for i = 1:D
    ratio(1,i) = sok{2,i+4}.max / sok{2,i}.max ; 
end 
% Find linearity within Intensity and concentration
x_conc = [ones(length(conc),1) conc] ; 
b = x_conc\ratio' ; % regression coefficient + intercept 
ylin = x_conc*b; % lineaire formule 
%% first measurement after patch removal - always measurement one 
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}); 
    fields = fieldnames(SUBJECTS.(subs{ss})) ; % patches namen 
    
    limit = numel(data.S1(:,:,1)) ; % taking the amount of measurements for patch one 
    
    if (limit <= 10) == 1
        plot_O2norm = zeros(3,numel(fields)-1) ; 
        for pp = 1:numel(fields)-1 % patches met bgs er af 
            data2 = data.(fields{pp}) ;
            MM = numel(data2(:,:,1)) ; % number of measurements 
            meas = data2(:,:,2) ; % namen van de metingen 
            for bb = 1:MM
                O2 = data2(:,bb,4) ;
                smooth = data2(:,bb,6) ; 
            
            if strcmp(meas{bb}, 'M1') == 1 % bij alle metingen voor elke patch kijken of het M1 is
                if pp <= 4 
                    plot_O2norm(1,pp) = str2double(data2(:,bb,3))+260 ; 
                else
                    plot_O2norm(1,pp) = str2double(data2(:,bb,3))-540 ;
                end 
                plot_O2norm(2,pp) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,pp) = smooth{1}{2}.max ; %670nm
            end 
            [sortplot_O2norm,index] = sort(plot_O2norm(1,:)) ; 
            O2norm = plot_O2norm(:,index) ; 
            end
        end 
        figure (1)
        subplot(2,2,ss)
        plot(O2norm(1,:), O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(O2norm(1,:), O2norm(3,:),'ko--','Linewidth',3)
        hold on
    elseif (limit >= 10) == 1
        plot_O2norm = zeros(3,numel(fields)-1) ; 
        plot_O20 = zeros(3,numel(fields)-1) ;
        for pp = 1:numel(fields)-1 % patches met bgs er af 
            data2 = data.(fields{pp}) ;
            MM = numel(data2(:,:,1)) ; % number of measurements 
            meas = data2(:,:,2) ; % namen van de metingen 
            for bb = 1:MM
                O2 = data2(:,bb,4) ;
                smooth = data2(:,bb,6) ;
                if strcmp(meas{bb}, 'M1') == 1
                   if strcmp(O2{1},'O2norm') == 1 
                            if pp <= 4 
                            plot_O2norm(1,pp) = str2double(data2(:,bb,3))+260 ; 
                            else
                            plot_O2norm(1,pp) = str2double(data2(:,bb,3))-540 ;
                            end 
                        plot_O2norm(2,pp) = smooth{1}{1}.max ; %630nm 
                        plot_O2norm(3,pp) = smooth{1}{2}.max ; %670nm
                    elseif strcmp(O2{1},'O20') == 1 
                            if pp <= 4 
                            plot_O20(1,pp) = str2double(data2(:,bb,3))+260 ; 
                            else
                            plot_O20(1,pp) = str2double(data2(:,bb,3))-540 ;
                            end  
                        plot_O20(2,pp)= smooth{1}{1}.max ; %630nm 
                        plot_O20(3,pp)= smooth{1}{2}.max ; %670nm
                   end 
                   [sortplot_O2norm,index_norm] = sort(plot_O2norm(1,:)) ; 
                   O2norm = plot_O2norm(:,index_norm) ; 
                   [sortplot_O20,index_0] = sort(plot_O20(1,:)) ; 
                   O20 = plot_O20(:,index_0) ; 
                end
            end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(O2norm(1,:), O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(O2norm(1,:), O2norm(3,:),'ko--','Linewidth',3)
        hold on 
        plot(O20(1,:), O20(2,:),'bo-','Linewidth',3)
        hold on
        plot(O20(1,:), O20(3,:),'bo--','Linewidth',3)
    end
        hold on 
    sub = ["SUBJECT 1","SUBJECT 2","SUBJECT 3","SUBJECT 4"]  ; 
    txt = "- Measurements patch times" ; 
    title(sub(ss)+txt,'Fontsize',16) ; 
    xlabel('Time after application [h]','Fontsize',16)
    ylabel('Intensity [V]','Fontsize',16)
end 

subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}).BGS ; 
    MM = numel(data(:,:,1)) ; 
    if (MM <= 10) == 1 
    plot_O2norm = zeros(3,MM) ; 
        for bb = 1:MM
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
            
            plot_O2norm(1,bb) = str2double(data(:,bb,3))-400; 
            plot_O2norm(2,bb) = smooth{1}{1}.max ; %630nm 
            plot_O2norm(3,bb) = smooth{1}{2}.max ; %670nm
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
                        legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'Location','northwest') ; 
    elseif (MM >= 10) == 1 
    plot_O2norm = zeros(3,MM/2) ; 
    plot_O20 = zeros(3,MM/2) ;
        for bb = 1:MM % for the amount of measurements 
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
           if strcmp(O2{1},'O2norm') == 1 
                plot_O2norm(1,bb/2) = str2double(data(:,bb,3))-400; 
                plot_O2norm(2,bb/2) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,bb/2) = smooth{1}{2}.max ; %670nm
            elseif strcmp(O2{1},'O20') == 1 
                plot_O20(1,bb-((bb-1)/2)) = str2double(data(:,bb,3))-400 ; 
                plot_O20(2,bb-((bb-1)/2))= smooth{1}{1}.max ; %630nm 
                plot_O20(3,bb-((bb-1)/2))= smooth{1}{2}.max ; %670nm
           end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
        hold on
        plot(plot_O20(1,:), plot_O20(2,:),'mo-','Linewidth',3)
        hold on 
        plot(plot_O20(1,:), plot_O20(3,:),'mo--','Linewidth',3)
                        legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'Patch 1 O20; 630nm', 'Patch 1 O20; 670nm',...
    'BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'BGS O20; 630nm', 'BGS O20; 670nm',...
    'Location','northwest') ; 
    end 
end 

%% Measurement after patch reapplication - everything except M1 and all patch 1
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}); 
    fields = fieldnames(SUBJECTS.(subs{ss})) ; % patches namen 
    number = 0 ; 
    for pp = 2:numel(fields)-1 % patches met bgs er af, de grootte van de matrix bepalen
        field = fields(pp) ;
        number = number + size(data.(field{1})) ; 
    end 
    limit = numel(data.S1(:,:,1)) ; % taking the amount of measurements for patch one 
    if (limit <= 10) == 1
%         n = number(2)-number(1) ; 
        plot_O2norm = []; %zeros(3,n);
        y630_O2norm = [] ; %630nm 
        y670_O2norm = [] ; %670nm
        
        for pp = 2:numel(fields)-1 % patches met bgs er af 
            
            data2 = data.(fields{pp}) ;
            MM = numel(data2(:,:,1)) ; % number of measurements 
            meas = data2(:,:,2) ; % namen van de metingen 
            for bb = 1:MM
                O2 = data2(:,bb,4) ;
                smooth = data2(:,bb,6) ; 
            
            if strcmp(meas{bb}, 'M1') == 0 % bij alle metingen voor elke patch kijken of het M1 is
                if pp <= 4 
                    pl = str2double(data2(:,bb,3))+260 ; 
                    plot_O2norm = [plot_O2norm,pl] ; 
                else
                    pl = str2double(data2(:,bb,3))-540 ;
                    plot_O2norm = [plot_O2norm,pl] ; 
                end 
                y630 = smooth{1}{1}.max ; %630nm 
                y630_O2norm = [y630_O2norm,y630] ; 
                
                y670= smooth{1}{2}.max ; %670nm
                y670_O2norm = [y670_O2norm,y670] ; 
            end 
            end
        end 
        new = [plot_O2norm; y630_O2norm; y670_O2norm];
        [sortplot_O2norm,index] = sort(new(1,:)) ; 
        O2norm = new(:,index) ; 
        
        figure (1)
        subplot(2,2,ss)
        plot(O2norm(1,:), O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(O2norm(1,:), O2norm(3,:),'ko--','Linewidth',3)
        hold on
        legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'Location','northwest') ; 
    elseif (limit >= 10) == 1
        plot_O2norm = []; %zeros(3,n);
        y630_O2norm = [] ; %630nm 
        y670_O2norm = [] ; %670nm
        
        plot_O20 = []; %zeros(3,n);
        y630_O20 = [] ; %630nm 
        y670_O20 = [] ; %670nm
        for pp = 2:numel(fields)-1 % patches met bgs er af 
            data2 = data.(fields{pp}) ;
            MM = numel(data2(:,:,1)) ; % number of measurements 
            meas = data2(:,:,2) ; % namen van de metingen 
            for bb = 1:MM
                O2 = data2(:,bb,4) ;
                smooth = data2(:,bb,6) ;
                if strcmp(meas{bb}, 'M1') == 0
                   if strcmp(O2{1},'O2norm') == 1 
                            if pp <= 4 
                            pl = str2double(data2(:,bb,3))+260 ; 
                            plot_O2norm = [plot_O2norm,pl] ; 
                            else
                            pl = str2double(data2(:,bb,3))-540 ;
                            plot_O2norm = [plot_O2norm,pl] ; 
                            end      
                        y630 = smooth{1}{1}.max ; %630nm 
                        y630_O2norm = [y630_O2norm,y630] ; 
                
                        y670= smooth{1}{2}.max ; %670nm
                        y670_O2norm = [y670_O2norm,y670] ; 
                    elseif strcmp(O2{1},'O20') == 1 
                            if pp <= 4 
                            pl = str2double(data2(:,bb,3))+260 ; 
                            plot_O20 = [plot_O20,pl] ; 
                            else
                            pl = str2double(data2(:,bb,3))-540 ;
                            plot_O20 = [plot_O20,pl] ;
                            end  
                        y630 = smooth{1}{1}.max ; %630nm 
                        y630_O20 = [y630_O20,y630] ; 
                
                        y670= smooth{1}{2}.max ; %670nm
                        y670_O20 = [y670_O20,y670] ; 
                   end 
                end
            end 
           newnorm = [plot_O2norm; y630_O2norm; y670_O2norm];
           new0 = [plot_O20; y630_O20; y670_O20];
  
           [sortplot_O2norm,index_norm] = sort(newnorm(1,:)) ; 
           O2norm = newnorm(:,index_norm) ; 
           [sortplot_O20,index_0] = sort(new0(1,:)) ; 
           O20 = new0(:,index_0) ; 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(O2norm(1,:), O2norm(2,:),'ko-','Linewidth',3)
        hold on 
        plot(O2norm(1,:), O2norm(3,:),'ko--','Linewidth',3)
        hold on 
        plot(O20(1,:), O20(2,:),'bo-','Linewidth',3)
        hold on
        plot(O20(1,:), O20(3,:),'bo--','Linewidth',3)
                                legend('Patch 1 O2norm; 630nm', 'Patch 1 O2norm; 670nm',...
    'Patch 1 O20; 630nm', 'Patch 1 O20; 670nm',...
    'Location','northwest') ; 
    end
        sub = ["SUBJECT 1","SUBJECT 2","SUBJECT 3","SUBJECT 4"]  ; 
    txt = "- Measurements patch times" ; 
    title(sub(ss)+txt,'Fontsize',16) ; 
    xlabel('Time after application [h]','Fontsize',16)
    ylabel('Intensity [V]','Fontsize',16)
end 

%% BGS - voor elke meting alle BGS 
% plus 260 voor metingen patch 1 

subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}).BGS ; 
    MM = numel(data(:,:,1)) ; 
    if (MM <= 10) == 1 
    plot_O2norm = zeros(3,MM) ; 
        for bb = 1:MM
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
            
            plot_O2norm(1,bb) = str2double(data(:,bb,3))-400; 
            plot_O2norm(2,bb) = smooth{1}{1}.max ; %630nm 
            plot_O2norm(3,bb) = smooth{1}{2}.max ; %670nm
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
                                       legend('BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'Location','northwest') ;
    elseif (MM >= 10) == 1 
    plot_O2norm = zeros(3,MM/2) ; 
    plot_O20 = zeros(3,MM/2) ;
        for bb = 1:MM % for the amount of measurements 
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
           if strcmp(O2{1},'O2norm') == 1 
                plot_O2norm(1,bb/2) = str2double(data(:,bb,3))-400; 
                plot_O2norm(2,bb/2) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,bb/2) = smooth{1}{2}.max ; %670nm
            elseif strcmp(O2{1},'O20') == 1 
                plot_O20(1,bb-((bb-1)/2)) = str2double(data(:,bb,3))-400 ; 
                plot_O20(2,bb-((bb-1)/2))= smooth{1}{1}.max ; %630nm 
                plot_O20(3,bb-((bb-1)/2))= smooth{1}{2}.max ; %670nm
           end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ro-','Linewidth',3)
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ro--','Linewidth',3)
        hold on
        plot(plot_O20(1,:), plot_O20(2,:),'mo-','Linewidth',3)
        hold on 
        plot(plot_O20(1,:), plot_O20(3,:),'mo--','Linewidth',3)
                               legend('BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'BGS O20; 630nm', 'BGS O20; 670nm',...
    'Location','northwest') ;
    end 
            sub = ["SUBJECT 1","SUBJECT 2","SUBJECT 3","SUBJECT 4"]  ; 
    txt = "Background Signal Skin" ; 
    title(sub(ss)+txt,'Fontsize',16) ; 
    xlabel('Time after application [h]','Fontsize',16)
    ylabel('Intensity [V]','Fontsize',16)
end 

%% BGS measurements 
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}).BGS ; 
    MM = numel(data(:,:,1)) ;
    if (MM <= 10) == 1 
    plot_O2norm = zeros(3,MM) ; 
        for bb = 1:MM
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
            
            plot_O2norm(1,bb) = str2double(data(:,bb,3))+260 ; 
            plot_O2norm(2,bb) = smooth{1}{1}.max ; %630nm 
            plot_O2norm(3,bb) = smooth{1}{2}.max ; %670nm
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-')
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--')
                               legend('BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'Location','northwest') ;
    elseif (MM >= 10) == 1 
    plot_O2norm = zeros(3,MM/2) ; 
    plot_O20 = zeros(3,MM/2) ;
        for bb = 1:MM % for the amount of measurements 
            O2 = data(:,bb,4) ;
            smooth = data(:,bb,6) ;
           if strcmp(O2{1},'O2norm') == 1 
                plot_O2norm(1,bb/2) = str2double(data(:,bb,3))+260 ; 
                plot_O2norm(2,bb/2) = smooth{1}{1}.max ; %630nm 
                plot_O2norm(3,bb/2) = smooth{1}{2}.max ; %670nm
            elseif strcmp(O2{1},'O20') == 1 
                plot_O20(1,bb-((bb-1)/2)) = str2double(data(:,bb,3))+260 ; 
                plot_O20(2,bb-((bb-1)/2))= smooth{1}{1}.max ; %630nm 
                plot_O20(3,bb-((bb-1)/2))= smooth{1}{2}.max ; %670nm
           end 
        end 
        figure (1)
        subplot(2,2,ss)
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-')
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--')
        hold on
        plot(plot_O20(1,:), plot_O20(2,:),'bo-')
        hold on 
                    plot(plot_O20(1,:), plot_O20(3,:),'bo--')
                       legend('BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
    'BGS O20; 630nm', 'BGS O20; 670nm',...
    'Location','northwest') ;
    end 
        legend('BGS O2norm; 630nm', 'BGS O2norm; 670nm',...
        'BGS O20; 630nm', 'BGS O20; 670nm',...
        'Location','northwest') ; 
end 
 