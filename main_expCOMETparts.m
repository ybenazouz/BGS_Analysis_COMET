%% COMET parts - data preperation and processing 
% Y. (Yasmin) Ben Azouz 
% Version 03.05.2022

%% README
% TO DO: write the object that each P refers to here. 
% NB: tables and graphs are not yet labelled.
% NB: Downloading the SLM toolbox and the optimization toolbox are needed
% to run this file. 

% @Myrte: Sorry voor dit chaos bestand let niet op de rommel.

clear
close all

%% Load data 
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

P1 = [];
% P2 = [];
% P3 = [];
% P4 = [];
% P5 = [];
% P6 = [];
% P7 = [];
P8 = [];
% P9 = [];
% P10 = [];
% P11 = [];
% P12 = [];
% P13 = [];
% P14 = [];
% P15 = [];
% P16 = [];
% P17 = []; 
for i = 2:1:16
    P1 = [P1, xlsread('expCOMETparts_blauwebehuizing_1408', i, 'A2:A4001')];
%     P2 = [P2, xlsread('expCOMETparts_diffusor_glad_1413', i, 'A2:A4001')];
%     P3 = [P3, xlsread('expCOMETparts_diffusor_ruw_1414', i, 'A2:A4001')];
%     P4 = [P4, xlsread('expCOMETparts_FiberOranjeDun_dicht', i, 'A2:A4001')];
%     P5 = [P5, xlsread('expCOMETparts_FiberOranjeDun_open', i, 'A2:A4001')];
%     P6 = [P6, xlsread('expCOMETparts_FiberZwartDik_kort_dicht', i, 'A2:A4001')];
%     P7 = [P7, xlsread('expCOMETparts_FiberZwartDik_kort_open', i, 'A2:A4001')];
    P8 = [P8, xlsread('expCOMETparts_FiberZwartDik_lang_dicht', i, 'A2:A4001')];
%     P9 = [P9, xlsread('expCOMETparts_FiberZwartDik_lang_open', i, 'A2:A4001')];
%     P10 = [P10, xlsread('expCOMETparts_filter_kant1', i, 'A2:A4001')];
%     P11 = [P11, xlsread('expCOMETparts_filter_kant2', i, 'A2:A4001')];
%     P12 = [P12, xlsread('expCOMETparts_glue_mr1a_glaseerst', i, 'A2:A4001')];
%     P13 = [P13, xlsread('expCOMETparts_glue_mr1a_lijmeerst', i, 'A2:A4001')];
%     P14 = [P14, xlsread('expCOMETparts_niks_laserinhouder', i, 'A2:A4001')];
%     P15 = [P15, xlsread('expCOMETparts_niks_laserinlucht', i, 'A2:A4001')];
%     P16 = [P16, xlsread('expCOMETparts_spiegel', i, 'A2:A4001')];
%     P17 = [P17, xlsread('expCOMETparts_zilverenhulsmetlenzen', i, 'A2:A4001')];
end 

%% Mean data per Part 

meanP1 = mean(P1,2); 
% meanP2 = mean(P2,2);
% meanP3 = mean(P3,2);
% meanP4 = mean(P4,2); 
% meanP5 = mean(P5,2); 
% meanP6 = mean(P6,2); 
% meanP7 = mean(P7,2); 
meanP8 = mean(P8,2);
% meanP9 = mean(P8,2); 
% meanP10 = mean(P8,2); 
% meanP11= mean(P8,2); 
% meanP12 = mean(P8,2); 
% meanP13 = mean(P8,2); 
% meanP14 = mean(P8,2); 
% meanP15 = mean(P8,2); 
% meanP16 = mean(P8,2); 
% meanP17 = mean(P8,2); 

%% Plot data

figure (1)
subplot(2,1,1)
x = linspace(1,2000,2000) ;
for j = 1:1:15
    plot(x,P1(1:2000,j)) 
    hold on
end 
subplot(2,1,2)
plot(x,meanP8(1:2000,1)) ;

% x = linspace(1,2000,2000) ;
% for j = 1:1:14
%     plot(x,P8(1:2000,j)) 
% end 

%% Fit data - SLM toolbox 
% Cubic Hermite Spline fit. Coefficients are double the amount of the
% number of knots present and slm.stats shows several stats as to GoF
% (goodness of fit). 

% NB: Fit to mean or fit to seperate measurements and take mean of fits?

slmmeanP8 = slmengine(x',meanP8(1:2000,1),'plot','on','knots', ...  %use slm to fit the MEAN with 8 knots, the rest are standard and can also be removed (i left them here to change and optimize)
    [0 10 20 30 40 60 200 2000],'increasing','on', ...
    'leftslope',0,'rightslope',0) ; 

%% Retrieve coefficients - SLM toolbox 

coefP8 = slmmeanP8.coef;                % retrieve coefficients belonging to the data function fit. 
RMSEP8 = slmmeanP8.stats.RMSE ;
R2P8 = slmmeanP8.stats.R2 ; 
ErrorRangeP8 = slmmeanP8.stats.ErrorRange ; 

%% Create table with coefficients. 
% Also possible in word. Can be done later. 
 

%% Potential other method for fitting a function to the data 

% lifetimeNumber = [1:1:size(lifetime_in,2)]
% fitType=fittype( @(a,b,c,d,e,f,x) a*exp(b.*x)+c*exp(d.*x)+e*exp(f.*x)) ;
% [fitCurve, gof]= fit(x',P1(:,1),fitType);

% The curve fitting toolbox is needed to use code above. 

% LM algoritme. 

%% Normalization of data 
% normalize function: MM used mean / max manual normalization opposed to
% function. Normalization can be used when all objects are plotten together
% maybe? 

% slmmean = slmengine(x',meanP8(1:2000,1),'plot','on','knots', ...
%     [0 45 90 200 2000],'increasing','on', ...
%     'leftslope',0,'rightslope',0) ; 
% slmmean.stats 

% y = meanP8(1:2000,1) ; 
% slmmean = slmengine(y, x, 'plot','on','knots',9,'incr','on') ; 

   

