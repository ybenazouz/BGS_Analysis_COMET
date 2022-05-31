%% SOK processing 
% Y. (Yasmin) Ben Azouz
% Version: 17.05.2022

clear 
close all 
%% README KLAD 
% Wat wil ik doen: 
% First-order deactivation (lage conc): Mono - exponent fitten voor P-type  
    % (kwadratisch) en E-type (linear)
% Second-order deactivation (hoge conc): Kwadratische mono-exponent fitten 
    % voor P-type en E-type 
% Aan alles + combinaties fitten en de kwaliteit van de fits beoordelen

load('SOK23') ;
%% Load data 
% Make sure to open file in which .mat files are located.
D = 4 ; 

load('Sok1__ppix25_515nm_630nm.mat') ; 
load('Sok1__ppix25_515nm_670nm.mat') ; 
load('Sok1__ppix200_515nm_630nm.mat') ; 
load('Sok1__ppix200_515nm_670nm.mat') ; 
load('Sok1__ppix400_515nm_630nm.mat') ; 
load('Sok1__ppix400_515nm_670nm.mat') ; 
%% Sort signal 
sok = cell(2,2*D) ; 

%630nm
sok(1,1) = {ppix25_515nm_630nm(:,7:17)}; %25um en 030406 filter 
% sok(1).conc = 25 ; 
sok(1,2) = {ppix200_515nm_630nm(:,1:10)}; %200um en 030406 filter 

sok(1,3) = {ppix400_515nm_630nm(:,4:13)}; %400um en 0304 filter 
sok(1,4) = {ppix400_515nm_630nm(:,14:22)}; %400um en 030406 filter 

% 670nm
sok(1,5) = {ppix25_515nm_670nm(:,7:17)}; %25um en 030406 filter 

sok(1,6) = {ppix200_515nm_670nm(:,1:10)}; %200um en 030406 filter 

sok(1,7) = {ppix400_515nm_670nm(:,4:13)}; %400um en 0304 filter 
sok(1,8) = {ppix400_515nm_670nm(:,14:22)}; %400um en 030406 filter 

%% Smooth and fit to a mono-exponential fit. 
%% SOK1
% Add standard deviation
% initials = [1.6, 0.49, 0.01] ; 

wave = cell(2,D) ; 

for j = 1:D
    soksok = sok(1,j) ;
    soksokD = sok(1,j+D) ; 
    [~,N] = size(soksok{1}) ; 
    sok(2,j) = {DataPrep(soksok{1},N)} ;
    sok(2,j+D) = {DataPrep(soksokD{1},N)} ;
end
%% SOK23 
SS = numel(SOK23(:,1)) ; % amount of Parts measured 
wave = cell(2,SS) ; % 670 and 630 nm togeher for every measurement
for ii = 1:SS % amount of measurements done for patch one, we will average every measurement
    data = SOK23(ii,7) ; % all data patch one measurement one 1x1 cell with 1x5 cell 
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
    SOK23(ii,8) = {smooth} ; 
end 
%% I0670/I0630 and [PpIX]
%% SOK1 
conc = [25 ;200 ;400 ;400] ; 
ratio = zeros(1,D) ; 
for i = 1:D
    ratio(1,i) = sok{2,i+4}.max / sok{2,i}.max ; 
end 
% Find linearity within Intensity and concentration
x_conc = [ones(length(conc),1) conc] ; 
b = x_conc\ratio' ; % regression coefficient + intercept 
ylin = x_conc*b; % lineaire formule 

%% SOK23 
 
ratio = zeros(2,SS) ; 
for i = 1:SS
    con = erase(SOK23(i,2),'nM') ;
    ratio(2,i) = str2double(con{1}) ; 
    sok = SOK23(i,8) ; 
    ratio(1,i) = sok{1}{2}.max / sok{1}{1}.max ; 
end 
[sortplot_O2norm,index] = sort(ratio(2,:)) ; 
ratio_conc = ratio(:,index) ; 
% Find linearity within Intensity and concentration
x_conc1 = [ones(length(ratio_conc(1,4:10)),1) ratio_conc(2,4:10)'] ; 
b1 = x_conc1\ratio_conc(1,4:10)' ; % regression coefficient + intercept 
ylin1 = x_conc1*b1; % lineaire formule 

x_conc2 = [ones(length(ratio_conc(1,1:3)),1) ratio_conc(2,1:3)'] ; 
b2 = x_conc2\ratio_conc(1,1:3)' ; % regression coefficient + intercept 
ylin2 = x_conc2*b2; % lineaire formule 

%% Plot 1 - Initial Intensity Ratios and [PpIX] 
%% SOK1 
figure(1)
scatter(conc(1), ratio(1),80,'filled','d')
hold on
scatter(conc(2), ratio(2),80,'filled','d')
hold on
scatter(conc(3), ratio(3),80,'filled','d')
hold on
scatter(conc(4), ratio(4),80,'filled','d')
hold on 
plot(conc,ylin,'Linewidth',3)
title('Initial Intensity Ratios and [PpIX]','Fontsize',16) ; 
xlabel('PpIX concentration [µM]','Fontsize',16) ; 
ylabel('I_{0}^{670}/I_{0}^{630}','Fontsize',16) ; 
ylim([0 1])
legend('25µM; 030406 filter', '200µM; 030406 filter',...
    '400µM; 0304 filter', '400µM; 030406 filter',...
    'Location','northwest') ; 
%% SOK23
figure(1)
for ii = 1:SS
    scatter(ratio_conc(2,ii), ratio_conc(1,ii), 80,'filled','d')
    %set(gca,'xscale','log')
    hold on
end 
plot(ratio_conc(2,4:10),ylin1,'Linewidth',3)
hold on 
plot(ratio_conc(2,1:3),ylin2,'Linewidth',3)
title('Initial Intensity Ratios and [PpIX] in watery solution','Fontsize',16) ; 
xlabel('PpIX concentration [µM]','Fontsize',16) ; 
ylabel('I_{0}^{670}/I_{0}^{630}','Fontsize',16) ; 
ylim([0 1])
% legend('25µM; 030406 filter', '200µM; 030406 filter',...
%     '400µM; 0304 filter', '400µM; 030406 filter',...
%     'Location','northeast') ; 
%% Integral fitting

    smooth(2,1) = {DataPrep(wave{2,ii},1)} ; 
    smoothsok(j) = {DataPrep(sok)} ; 
    DFexpfit(smoothsok{j}.smooth)
    coeffsok(j) = {LifetimeDF(smoothsok{j}.smooth, samples, initials)} ;

% y_E = x1*exp(x2*xdata) ;           % E-type mono exponential fit 
% y_P = x3*exp((2*x2)*xdata) ;       % P-type mono exponential fit 
int = cell(2,D) ; 
for s = 1:D
    x1 = coeffsok{1,s}.lm.coeff(1) ; 
    x2 = coeffsok{1,s}.lm.coeff(2) ; 
    x3 = coeffsok{1,s}.lm.coeff(3) ;
    
    xdata  = linspace(1,5,2000)' ;
    
    y_E = x1*exp(x2*xdata) ;
    S_E = trapz(y_E) ; 
    int{1,s} = struct('formula', y_E, 'integral', S_E) ; 
    
    y_P = x3*exp((2*x2)*xdata) ;   
    S_P = trapz(y_P) ; 
    int{2,s} = struct('formula', y_P, 'integral', S_P) ;
end 





