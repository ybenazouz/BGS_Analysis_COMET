%% SOK processing 
% Y. (Yasmin) Ben Azouz
% Version: 16.05.2022

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

sok(2) = {ppix200_515nm_630nm(:,1:10)}; %200um en 030406 filter 

sok(3) = {ppix400_515nm_630nm(:,4:13)}; %400um en 0304 filter 
sok(4) = {ppix400_515nm_630nm(:,14:22)}; %400um en 030406 filter 

% 670nm
sok(5) = {ppix25_515nm_670nm(:,7:17)}; %25um en 030406 filter 

sok(6) = {ppix200_515nm_670nm(:,1:10)}; %200um en 030406 filter 

sok(7) = {ppix400_515nm_670nm(:,4:13)}; %400um en 0304 filter 
sok(8) = {ppix400_515nm_670nm(:,14:22)}; %400um en 030406 filter 

%% Smooth and fit to a mono-exponential fit. 
smoothsok = cell(1,D) ; 
coeffsok = cell(1,D) ; 

initials = [1.6, 0.49, 0.01] ; 
samples = 700; 

for j = 1:D
    smoothsok(j) = {DataPrep(sok{j})} ; 
    DFexpfit(smoothsok{j}.smooth)
    coeffsok(j) = {LifetimeDF(smoothsok{j}.smooth, samples, initials)} ;
end 
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



%% ML - lsqcurvefit
FUN_1_E = @(x1,xdata)x1(1)*exp(x1(2)*xdata) ;           % E-type mono exponential fit 
FUN_1_P = @(x2,xdata)x2(1)*exp((2*x2(2))*xdata) ;       % P-type mono exponential fit 

FUN_1_EP = @(x3,xdata)x3(1)*exp(x3(2)*xdata)+x3(3)*exp((2*x3(2))*xdata);     % First order EP bi exponential fit 
%% First order E type decay 
x1 = lsqcurvefit(FUN_1_E,x10,xdata,ydata, lb, ub, options) ; 
for e = 1:D 
    y = smoothsok{e}.smooth ;
    ydata = y((1:samples),1) ; 
    xdata  = linspace(1,5,samples)' ;
    x10 = [1,0.1] ;
    %x30 = [1,0.5,0.1] ;
    soklm{e} = lsqcurvefit(FUN_1_EP,x30,xdata,ydata, lb, ub, options) ; 
    
    subplot(2,4,e) ;
    plot(xdata,ydata,'ko',xdata,FUN_1_E(x1,xdata),'b-')
end
%% First order E and P type decay
% First order EP bi exponential fit 

FUN_1_EP = @(x3,xdata)x3(1)*exp(x3(2)*xdata)+x3(3)*exp((2*x3(2))*xdata);  

samples = 700 ; %number of samples you want to fit / plot 
options = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt',...
    'Display', 'iter', 'MaxFunctionEvaluations', 1000); 
lb = [] ; 
ub = [] ; 
soklm = cell(1,D) ; 

for ep = 1:D 
    y = smoothsok{ep}.smooth ;
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

%% Plot fit and data loop >> FOUT IN CODE
x  = linspace(1,5,700)' ; 
figure(2)
for jj = 1:D
    subplot(2,4,jj) ;
    plot(x, smoothsok{1,jj}.smooth(1:700)) 
    hold on
%     for j = 1:1:9
%         plot(x, sok{1,jj}(1:700,j)) 
%         hold on
%     end 
end  
%% Plot fit and smooth >> FOUT IN CODE 
figure(2)
xdata  = linspace(1,5,2000)' ;
for jj = 4
    p_1 = coeffsok{1,jj}.multipliers(1,1) ; 
    % p_2 = coeffsok{1,jj}.multipliers(2,1) ;
    l = coeffsok{1,jj}.lambda ; 
    subplot(1,2,1) ;
    monofit = p_1*exp(l*xdata) ; 
    plot(xdata, monofit)
    hold on 
    subplot(1,2,2)
    plot (xdata, smoothsok{1,jj}.smooth)  
    %legend('fit', 'smooth')
end  

%% fitting singular for bi exp
j = 2 ; % number of the sok you want to fit 
y = smoothsok{j}.smooth ; 

ydata = y((1:700),1) ; 
xdata  = linspace(1,5,700)' ;
x30 = [1.6, 0.6, 0.01] ;
%x30 = [1,0.5,0.1] ;
x3 = lsqcurvefit(FUN_1_EP,x30,xdata,ydata, lb, ub, options) ; 
plot(xdata,ydata,'ko',xdata,FUN_1_EP(x3,xdata),'b-')

