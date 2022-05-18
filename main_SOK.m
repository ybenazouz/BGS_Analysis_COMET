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

%% Load data 
% Make sure to open file in which .mat files are located.

load('Sok1__ppix25_515nm_630nm.mat') ; 
load('Sok1__ppix25_515nm_670nm.mat') ; 
load('Sok1__ppix200_515nm_630nm.mat') ; 
load('Sok1__ppix200_515nm_670nm.mat') ; 
load('Sok1__ppix400_515nm_630nm.mat') ; 
load('Sok1__ppix400_515nm_670nm.mat') ; 
%% Sort signal 
D = 8 ; % Amount of data structures to use
sok = cell(1,D) ; 

%630nm
sok(1) = {ppix25_515nm_630nm(:,7:17)}; %25um en 030406 filter 
% sok(1).conc = 25 ; 
sok(2) = {ppix200_515nm_630nm(:,1:10)}; %200um en 030406 filter 

sok(3) = {ppix400_515nm_630nm(:,4:13)}; %400um en 0304 filter 
sok(4) = {ppix400_515nm_630nm(:,14:22)}; %400um en 030406 filter 

% 670nm
sok(5) = {ppix25_515nm_670nm(:,7:17)}; %25um en 030406 filter 

sok(6) = {ppix200_515nm_670nm(:,1:10)}; %200um en 030406 filter 

sok(7) = {ppix400_515nm_670nm(:,4:13)}; %400um en 0304 filter 
sok(8) = {ppix400_515nm_670nm(:,14:22)}; %400um en 030406 filter 

%% Smooth and fit to a mono-exponential fit. 
% Add standard deviation
smoothsok = cell(1,D) ; 
coeffsok = cell(1,D) ; 

initials = [1.6, 0.49, 0.01] ; 
samples = 700; 

for j = 1:D
    smoothsok(j) = {DataPrep(sok{j})} ; 
    DFexpfit(smoothsok{j}.smooth)
    coeffsok(j) = {LifetimeDF(smoothsok{j}.smooth, samples, initials)} ;
end
%% I0670/I0630 and [PpIX]
conc = [25 ;200 ;400 ;400] ; 
ratio = zeros(1,4) ; 
for i = 1:4 
    ratio(1,i) = smoothsok{i+4}.max / smoothsok{i}.max ; 
end 
% Find linearity within Intensity and concentration
x_conc = [ones(length(conc),1) conc] ; 
b = x_conc\ratio' ; % regression coefficient + intercept 
ylin = x_conc*b; % lineaire formule 

%% Plot 1 - Initial Intensity Ratios and [PpIX]
figure(1)
scatter(conc(1), ratio(1),80,'filled','d')
hold on
scatter(conc(2), ratio(2),80,'filled','d')
hold on
scatter(conc(3), ratio(3),80,'filled','d')
hold on
scatter(conc(4), ratio(4),80,'filled','d')
hold on 
plot(conc,ylin)
title('Initial Intensity Ratios and [PpIX]','Fontsize',16) ; 
xlabel('PpIX concentration [µM]','Fontsize',16) ; 
ylabel('I_{0}^{670}/I_{0}^{630}','Fontsize',16) ; 
ylim([0 1])
legend('25µM; 030406 filter', '200µM; 030406 filter',...
    '400µM; 0304 filter', '400µM; 030406 filter',...
    'Location','northwest') ; 
%% Integral fitting
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





