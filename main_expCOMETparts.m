%% COMET parts - data preperation and processing 
% Y. (Yasmin) Ben Azouz 
% Version 03.05.2022

%% README
% TO DO: write the object that each P refers to here. 
% NB: tables and graphs are not yet labelled.

clear
close all

%% Load .mat files 
% Make sure you run the GetandSave.m file before running this file. 
% Open file directory with all P.mat files before loading 

for i = 1:1:17
    filename = sprintf('%s%d','P',i) ; 
    load(filename)
end  
%% Mean data per Part 

% function voor voorbewerken

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

   

