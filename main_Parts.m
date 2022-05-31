%% TM2 Internship - COMET 
% Y. (Yasmin) Ben Azouz and M. (Myrte) Schoemakers
% Version 11.05.2022
% Document skin, parts and SOK. 

clear
close all
%% COMET PARTS EXPERIMENT NEW LASER 
% Fill in amount of parts / files 
load('PARTS') ; 
% initials = [1.6, 0.49, 0.01] ; 
% samples = 700; 
%% Smooth for all parts for both wavelengths 

PP = numel(PARTS(:,1)) ; % amount of Parts measured 
wave = cell(2,PP) ; % 670 and 630 nm togeher for every measurement
for ii = 1:PP % amount of measurements done for patch one, we will average every measurement
    data = PARTS(ii,3) ; % all data patch one measurement one 1x1 cell with 1x5 cell 
    M = numel(data{1,1}); % amount of measurements done per measurement % M = numel(dS1M1{1,patch number for different patches});

    wave630 = zeros(4000,M);
    wave670 = zeros(4000,M);

    for bb = 1:M % for the amount of measurements for every measurement
        wave630(:,bb) = data{1,1}{1,bb}.nm630 ; 
        wave670(:,bb) = data{1,1}{1,bb}.nm670 ;
        wave{1,ii} = wave630; 
        wave{2,ii} = wave670; 
    end 
    smooth = cell(2,1) ; % smooth together for every patch 
    smooth(1,1) = {DataPrep(wave{1,ii},1)} ;
    smooth(2,1) = {DataPrep(wave{2,ii},1)} ; 
    PARTS(ii,4) = {smooth} ; 
end 

%% Load subject 4 data from patch 12 to compare shape
SUBJECTS = load('SUBJECTS') ; 
[SUBJECTS] = Smooth_Subjects(SUBJECTS) ; 
data = SUBJECTS.SUB_4.S12; 
plot_O2norm = zeros(2,2000) ; 
plot_O20 = zeros(2,2000) ;
max_s12 = zeros(4,1) ; 

MM = numel(data(:,:,1)) ; % number of measurements 
meas = data(:,:,2) ; % namen van de metingen 
for bb = 1:MM
    O2 = data(:,bb,4) ;
    smooth = data(:,bb,6) ;
    if strcmp(meas{bb}, 'M1') == 1
       if strcmp(O2{1},'O2norm') == 1 
            plot_O2norm(1,:) = smooth{1}{1}.smooth ; %630nm 
            max_s12(1,1) = smooth{1}{1}.max ; %630nm
            plot_O2norm(2,:) = smooth{1}{2}.smooth ; %670nm
            max_s12(2,1) = smooth{1}{2}.max ; %670nm
        elseif strcmp(O2{1},'O20') == 1 
            plot_O20(1,:)= smooth{1}{1}.smooth ; %630nm 
            max_s12(3,1) = smooth{1}{1}.max ; %630nm
            plot_O20(2,:)= smooth{1}{2}.smooth ; %670nm
            max_s12(4,1) = smooth{1}{2}.max ; %670nm 
       end 
    end
end 
%% Amplitudes
x  = linspace(1,5,700)' ; 
figure(1)
max = zeros(2,PP) ; 
for jj = 1:PP
    
    figure(1)
    %subplot(3,6,jj) ;
    part = PARTS(jj,4) ; 
    plot(x,part{1}{1}.smooth(1:700),'b-','Linewidth',4)
    hold on
    plot(x,part{1}{2}.smooth(1:700),'c-','Linewidth',4)
    txt = PARTS(jj,2) ; 
    title(txt,'Fontsize',20) ; 
    yline(0, 'k--','Linewidth',4)
    
    max(1,jj) = part{1}{1}.max ; 
    max(2,jj) = part{1}{2}.max ; 
    xlabel('Time [μs]','Fontsize',20)
    ylabel('Intensity [V]','Fontsize',20)
end
%% Plot smooth data loop smooth
figure(2)
bar(max')
hold on
yline(max_s12(1,1),'b-','630nm','Linewidth',4)
hold on
yline(max_s12(2,1),'c-','670nm','Linewidth',4)
hold on
yline(max_s12(3,1),'b--','Linewidth',4)
hold on
yline(max_s12(4,1),'c--','Linewidth',4)
title('Intensity parts compared to Subject 4, patch 12, measurement one [11h]','Fontsize',16)
ylabel('Maximum Intensity [V]','Fontsize',20) ;
xlabel('COMET-parts','Fontsize',20) ; 

%% Plot smooth data with S12M1 after 10h

% 1;8;16
amp = [1; 8; 16; 17] ; % 1;8;16;17
amp2 = [4;15] ; 

x  = linspace(1,100,100)' ; 
figure(1)
for jj = 1:numel(amp)
    subplot(2,2,jj) ;
    part = PARTS(amp(jj),4) ; 
    plot(x,part{1}{1}.smooth(1:100),'b-','Linewidth',4)
    hold on
    plot(x,part{1}{2}.smooth(1:100),'c-','Linewidth',4)
    hold on 
    plot(x, plot_O2norm(1,1:100),'r-')
    hold on 
    plot(x, plot_O2norm(2,1:100),'r--')
    hold on 
    plot(x, plot_O20(1,1:100),'k-')
    hold on
    plot(x, plot_O20(2,1:100),'k--')
    txt = PARTS(amp(jj),2) ; 
    title(txt,'Fontsize',20) ; 
    xlabel('Time [μs]','Fontsize',20)
    ylabel('Intensity [V]','Fontsize',20)
end  

%%
figure(2)
for jj = 8
    p_1 = coeffparts{1,jj}.multipliers(1,1) ; 
    p_2 = coeffparts{1,jj}.multipliers(2,1) ;
    l = coeffparts{1,jj}.lambda ; 
    %subplot(2,4,jj) ;
    monofit = p_1 + p_2*exp(l*x) ; 
    plot(x, monofit)
    hold on 
    plot (x,smoothparts{1,jj}.smooth)  
    %legend('fit', 'smooth')
end  
