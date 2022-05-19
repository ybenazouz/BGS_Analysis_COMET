%% ALA PATCHES EXPERIMENT NEW LASER
%% SOK processing 
% Y. (Yasmin) Ben Azouz
% Version: 18.05.2022

clear 
close all 

load('SUBJ_2') ;
%% Load all subjects in one cell 
%% Load data, smooth data, fit data
initials = [1.6, 0.49, 0.01] ; 
samples = 700;
subject_number = 4 ; %number of subjects included 

%timestamps = 

%SUBJ_2.S1.

for k = 1:M
   file = sprintf('SUBJ_',k);
   patch_1(k) = file;
   smoothpatch_1(k) = {DataPrep(patch_1{k})} ; % smooth / correct data 
   max(1,k) = smoothpatch_1{k}.max  ; % retrieve maxima 
   DFexpfit(smoothpatch_1{k}.smooth) % show best number of terms for fit 
   coeffpatch_1(k) = {LifetimeDF(smoothpatch_1{k}.smooth, samples, initials)} ; % fit exponential fit to the signals 
end
%% I0670/I0630
ratio = zeros(1,4) ; 
for i = 1:4 
    ratio(1,i) = smoothsok{i+4}.max / smoothsok{i}.max ; 
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