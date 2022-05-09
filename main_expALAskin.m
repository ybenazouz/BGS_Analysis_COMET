%% ALA-exp - data preperation
% april 2022    M. Schoenmakers

%% README
% P = patch 
% S = subject
% O2norm = regular oxygen pressure, no pressure is applied to the skin with the COMET head. 
% O20 = hypoxic tissue, oxygen pressure is reduced to approximately zero by applying pressure with the COMET head.  
% NL = New Laser 

% Before running, open folder #3 for subject 3. 

clear
close all
%% Finding median of maxima 
% This maximum assumes that the second measurement is the maximum value for
% eacht measurement (?). Can we not first correct the data and then use
% function max afterwards? 

%% O2norm 
% 630nm  
maxP1M1_O2norm_630nm = -(median(P1M1_O2norm_630nm(2,:)));
maxP1M2_O2norm_630nm = -(median(P1M2_O2norm_630nm(2,:)));
maxP1M3_O2norm_630nm = -(median(P1M3_O2norm_630nm(2,:)));
maxP1M4_O2norm_630nm = -(median(P1M4_O2norm_630nm(2,:)));
maxP1M5_O2norm_630nm = -(median(P1M5_O2norm_630nm(2,:)));
maxP1M6_O2norm_630nm = -(median(P1M6_O2norm_630nm(2,:)));
maxP1M7_O2norm_630nm = -(median(P1M7_O2norm_630nm(2,:)));
maxP1M8_O2norm_630nm = -(median(P1M8_O2norm_630nm(2,:)));

% 670nm 
maxP1M1_O2norm_670nm = -(median(P1M1_O2norm_670nm(2,:)));
maxP1M2_O2norm_670nm = -(median(P1M2_O2norm_670nm(2,:)));
maxP1M3_O2norm_670nm = -(median(P1M3_O2norm_670nm(2,:)));
maxP1M4_O2norm_670nm = -(median(P1M4_O2norm_670nm(2,:)));
maxP1M5_O2norm_670nm = -(median(P1M5_O2norm_670nm(2,:)));
maxP1M6_O2norm_670nm = -(median(P1M6_O2norm_670nm(2,:)));
maxP1M7_O2norm_670nm = -(median(P1M7_O2norm_670nm(2,:)));
maxP1M8_O2norm_670nm = -(median(P1M8_O2norm_670nm(2,:)));

%% O20 

%% Plotting intensities of 630 and 670 nm data 
% Create vector with all maximum intensities and a time axis
%% O2norm 
maxP1MALL_O2norm_630nm = [maxP1M1_O2norm_630nm maxP1M2_O2norm_630nm maxP1M3_O2norm_630nm maxP1M4_O2norm_630nm 
    maxP1M5_O2norm_630nm  maxP1M6_O2norm_630nm maxP1M7_O2norm_630nm maxP1M8_O2norm_630nm ] ; %630nm vector
maxP1MALL_O2norm_670nm = [maxP1M1_O2norm_670nm maxP1M2_O2norm_670nm maxP1M3_O2norm_670nm maxP1M4_O2norm_670nm 
    maxP1M5_O2norm_670nm  maxP1M6_O2norm_670nm maxP1M7_O2norm_670nm maxP1M8_O2norm_670nm ] ; %670nm vector

t = 3:1:14 ; % time axis

figure(1)
subplot(2,1,1) % maximum intensities at 630nm at different measurements 
plot(t, maxP1MALL_O2norm_630nm)
xlim([3 14])
ylabel('Intensity [V]')
xlabel('Measurements after application')
title('Intensity of fluorescence signal at 630nm in subject #3')

subplot(2,1,2) % maximum intensities at 670nm at different measurements 
plot(t, maxP1MALL_O2norm_670nm)
xlim([3 14])
ylabel('Intensity [V]')
xlabel('Measurements after application')
title('Intensity of fluorescence signal at 670nm in subject #3')

figure(2) % 630nm and 670nm together at different measurements 
plot(t, maxP1MALL_O2norm_630nm, t, maxP1MALL_O2norm_670nm)
xlim([3 14])
legend('630nm', '670nm') 
ylabel('Intensity [V]')
xlabel('Measurements after application')
title('Intensity of fluorescence signal at 630nm and 670nm in subject #3')

%% O20