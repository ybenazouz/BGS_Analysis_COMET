%% ALA PATCHES EXPERIMENT NEW LASER
%% SOK processing 
% Y. (Yasmin) Ben Azouz
% Version: 18.05.2022

clear 
close all 
%% Load all subjects in one struct
SUBJECTS = load('SUBJECTS') ; 

%%
SUB_3_515nm = load('DataStructs/SUB_3_515nm') ; 

%% Load data, smooth data, fit data
% initials = [1.6, 0.49, 0.01] ; 
% samples = 700;

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
        plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-')
        hold on 
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--')
    else 
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
        plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--')
        
        plot(plot_O20(1,:), plot_O20(2,:),'bo-')
        plot(plot_O20(1,:), plot_O20(3,:),'bo--')
    end 
end 

%%
figure 
subplot(2,2,ss)
plot(plot_O2norm(1,:), plot_O2norm(2,:),'ko-')
hold on 
plot(plot_O2norm(1,:), plot_O2norm(3,:),'ko--')
hold on
plot(plot_O20(1,:), plot_O20(2,:),'bo-')
hold on 
plot(plot_O20(1,:), plot_O20(3,:),'bo--')




%% Onderdeel helaas maar wil nog niet in unused - 19.05.2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% eerste applicatie is M1 bij allemaal
figure 
xlim = linspace(0300, 1500, 12*60) ; 
hold on
subs = fieldnames(SUBJECTS) ; 
for ss = 4 %:numel(subs) %subjects
    data = SUBJECTS.(subs{ss}) ; 
    fields = fieldnames(SUBJECTS.(subs{ss})) ;
    for pp = 1:numel(fields) % patches 
        data2 = data.(fields{pp}) ;
            x = str2double(data2(:,1,3)); 
        if pp == 1;2;3;4 == 1 ; 
            x+(11*60) == x ; 
        else 
            x+(2*60) == x ; 
        end 
        y1 = data2(:,1,6); 
        y = y1{1,1}{1,1}.max ; 
        % txt = '(data2(:,1,1))' ;
        plot(x,y,'ko-')%,'DisplayName',txt)
    end 
end 
%% maxima en bgs plotten 
figure 
xlim = linspace(3,14) ; 
hold on
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    subplot(2,2,ss) ; 
    hold on
    data = SUBJECTS.(subs{ss}) ; 
    fields = fieldnames(SUBJECTS.(subs{ss})) ;
    for pp = 5:numel(fields)-1 % patches 
        data2 = data.(fields{pp}) ;
            x = pp-2;
            y1 = data2(:,1,6); 
            y = y1{1,1}{1,1}.max ; 
            % txt = '(data2(:,1,1))' ;
            plot(x,y,'ko-')%,'DisplayName',txt)
    end 
    for pp = 1:4 
        data2 = data.(fields{pp}) ;
            x = pp+10;
            y1 = data2(:,1,6); 
            y = y1{1,1}{1,1}.max ; 
            % txt = '(data2(:,1,1))' ;
            plot(x,y,'ko-')%,'DisplayName',txt)
    end
    for pp = 13 
        data2 = data.(fields{pp}) ;
        for gg = 1:length(data2(:,:,1))
           if (data2(:,gg,4) == {'O2norm'}) == 1 
                x = 3+gg ;
                y1 = data2(:,gg,6); 
                y = y1{1,1}{1,1}.max ; 
                % txt = '(data2(:,1,1))' ;
                plot(x,y,'bo-')%,'DisplayName',txt)
            end 
        end
    end 
end 

%% 
figure 
xlim = linspace(3,14) ; 
hold on
subs = fieldnames(SUBJECTS) ; 
for ss = 1:numel(subs) %subjects
    subplot(2,2,ss) ; 
    hold on
    data = SUBJECTS.(subs{ss}) ; 
    fields = fieldnames(SUBJECTS.(subs{ss})) ;
    for pp = 5:numel(fields)-1 % patches 
        data2 = data.(fields{pp}) ;
        %% O2 
        dataO2 = data2(:,:,4) ; 
        %% time 
        datatime = data2(:,:,3) ; 
        data2(:,:,3) = {str2double(datatime{1,1})+200} 
    end
%%
    for pp = 1:4 
        data2 = data.(fields{pp}) ;
        
    end
    for pp = 13 
        data2 = data.(fields{pp}) ;
        for gg = 1:length(data2(:,:,1))
           if (data2(:,gg,4) == {'O2norm'}) == 1 
                x = 3+gg ;
                y1 = data2(:,gg,6); 
                y = y1{1,1}{1,1}.max ; 
                % txt = '(data2(:,1,1))' ;
                plot(x,y,'bo-')%,'DisplayName',txt)
            end 
        end
    end 
end 

%%
FUN_1_EP = @(x3,xdata)x3(1)*exp(x3(2)*xdata)+x3(3)*exp((2*x3(2))*xdata);  

samples = 700 ; %number of samples you want to fit / plot 
options = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt',...
    'Display', 'iter', 'MaxFunctionEvaluations', 1000); 
lb = [] ; 
ub = [] ; 
patch_1lm = cell(1,M) ; 

for ep = 1:M 
    y = smoothpatch_1{ep}.smooth ;
    ydata = y((1:samples),1) ; 
    xdata  = linspace(1,5,samples)' ;
    % x30 = [2.8, 0.461, 0.147] ; %fit rechte lijn op 4
    % x30 = [1,0.5,0.1] ;
    x30 = [1.6, 0.49, 0.01] ; %fit rechte lijn op 2 (beste fit)
    % x30 = [1.6, 0.6, 0.01] ; %fit rechte lijn op 3 en 6 
    x3 = lsqcurvefit(FUN_1_EP,x30,xdata,ydata, lb, ub, options) ; 
    
    %tau = 1/x3{1,1}(2); 

    %soklm(ep) = {struct('coeff', {x3}, 'tau', {tau})} ; 
    
    subplot(2,4,ep) ;
    plot(xdata,ydata,'ko',xdata,FUN_1_EP(x3,xdata),'b-')
end 