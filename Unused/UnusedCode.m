%% Unused Code COMET - TM2
% Y. (Yasmin) Ben Azouz - version: 13.05.2022
% Code that might still be usefull later on. 
% Serves only as registration and to not lose them. 
%% Loop om data cell te vullen en aan newname te plakken - date: 18.05.2022
for i=1:numel(d)
    for k=2:1:6
      data{k-1}=readtable(fullfile(d(i).folder,d(i).name),'sheet',k,...
          'VariableNamingRule','preserve','Range', range);
      data{k-1}.Properties.VariableNames{'Dev1/ai0'} = 'nm630';
      data{k-1}.Properties.VariableNames{'Dev1/ai1'} = 'nm670';
    end
    newname(:,i,5) = {data} ; 
end
%%
%[~,sheet_name]=xlsfinfo('BGS_M1_0920_O20.xlsx');
data_end = cell(1,5) ; 
range = 'A1:B4001'; 

for k=2:1:6
  data_end{k-1}=readtable('BGS_M9_1700_O2norm.xlsx','sheet',k,...
      'VariableNamingRule','preserve','Range', range);
  data_end{k-1}.Properties.VariableNames{'Dev1/ai0'} = 'nm630';
  data_end{k-1}.Properties.VariableNames{'Dev1/ai1'} = 'nm670';
end
%% Calculate ratios of maxima (MM) - date: 17.05.2022
ratio630670_O2norm =nan(size(Patch1_O2norm_670nm_max));
ratio630670_O20 =nan(size(Patch1_O20_670nm_max));

for i = 1: size(Patch1_O2norm_670nm_max,2)
ratio630670_O2norm(i) = Patch1_O2norm_670nm_max(i)/Patch1_O2norm_630nm_max(i);
ratio630670_O20(i) = Patch1_O20_670nm_max(i)/Patch1_O20_630nm_max(i);
end
%% Sort signal - SOK - date: 17.05.2022
D = 8 ; % Amount of data structures to use
sok = struct ; 
sok.um25 = cell(1,2) ; 
sok.um200 = cell(1,2) ; 
sok.um400 = cell(1,4) ; 

%630nm
sok.um25(1) = {ppix25_515nm_630nm(:,7:17)}; %25um en 030406 filter 

sok.um200(1) = {ppix200_515nm_630nm(:,1:10)}; %200um en 030406 filter 

sok.um400(1) = {ppix400_515nm_630nm(:,4:13)}; %400um en 0304 filter 
sok.um400(2) = {ppix400_515nm_630nm(:,14:22)}; %400um en 030406 filter 

% 670nm
sok.um25(2) = {ppix25_515nm_670nm(:,7:17)}; %25um en 030406 filter 

sok.um200(2) = {ppix200_515nm_670nm(:,1:10)}; %200um en 030406 filter 

sok.um400(3) = {ppix400_515nm_670nm(:,4:13)}; %400um en 0304 filter 
sok.um400(4) = {ppix400_515nm_670nm(:,14:22)}; %400um en 030406 filter 

%% LM curvefit verwijderd uit SOK - date: 17.05.2022
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
%% LEGE RUIMTE BOVENSTAANDE BELANRIJK
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SOK no longer needed - date: 16.05.2022

j = 6 ; % number of the sok you want to fit 
y = smoothsok{j}.smooth ; 

options = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt',...
    'Display', 'iter', 'MaxFunctionEvaluations', 1000); 
%     'StepTolerance', 1e-23,'OptimalityTolerance', 1e-16,...
%     'FunctionTolerance', 1e-16, 'MaxFunctionEvaluations', 1000);
lb = [] ; 
ub = [] ; 
ydata = y((1:700),1) ; 
xdata  = linspace(1,5,700)' ;

%% SOK - not correct - DATE: 16.05.2022
% get integral intensity 
% integral = trapz(y) ; 
% fit polynomial n = 2 
% p = polyfit(x,iy1,2) ; % willen we ook struct S met error values? 

%% plot general mono and bi exponential fit - date: 16.05.2022
y1 = exp(-1.2*xdata)+exp((2*-0.3)*xdata); 
y2 = exp(-1.2*xdata) ; 
figure
plot(xdata,y1)
hold on
plot(xdata,y2)

%% SOK - Load data - date: 13.05.2022
% N = 3 ; % concentrations measured 
% sok = struct("25",[],"200",[],'400',[]) ;
% for j = 1:N 
%     for i = ["25", "200", "400"] 
%         if exist(sprintf('Sok1__ppix%s_515nm_630nm',i),'var') == 1  
%             matfile = sprintf('Sok1__ppix%s_515nm_630nm',i) ; 
%             sok.nm630 = struct2cell(load(matfile)) ;
%         elseif exist(sprintf('Sok1__ppix%s_515nm_670nm',i),'var') == 1 
%             matfile = sprintf('Sok1__ppix%s_515nm_630nm.mat',i) ; 
%             sok.nm670 = struct2cell(load(matfile)) ;
%         else 
%         continue 
%         end 
%     end 
% end 
%% Load data easy - SOK (toch nie zo easy) - date: 13.05.2022
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));

N = 3 ; % concentrations measured 
% Maak dan dus eerst een struct per concentratie met cellen van 4000x22 
% (bv), laad de concentratie structs dan in het stuct met de golflengte
% (dit is het grote sok struct). 

% conc_25 = cell(4000,
sok = struct('nm630',cell(1,3),'nm670',cell(1,3));

% matfile630 = [ "Sok1__ppix25_515nm_630nm.mat", "Sok1__ppix200_515nm_630nm.mat",...
%     "Sok1__ppix400_515nm_630nm.mat"] ; 
% matfile670 = [ "Sok1__ppix25_515nm_670nm.mat", "Sok1__ppix200_515nm_670nm.mat",...
%     "Sok1__ppix400_515nm_670nm.mat"] ; 
% 
% for j = 1:N
%     sok.nm630(N) = struct2cell(load(matfile630(N))) ;
%     sok.nm670(N) = struct2cell(load(matfile670(N))) ; 
% end 
%% Loop for loading in GetandSave.m - date: 11.09.2022
% Het probleem is hier dat d en dd op dezelfde hoogte in de for loop moeten
% komen te staan 

% poging 5 
for j = 1:1:9 
    for i = 6:-1:2 
         = xlsread(d(j), i, 'A2:A4001');
    end 
end 
v = [S1_Patch1M1_O2norm_630nm, S1_Patch1M2_O2norm_630nm, ...
    S1_Patch1M3_O2norm_630nm, S1_Patch1M4_O2norm_630nm, ...
    S1_Patch1M5_O2norm_630nm, S1_Patch1M6_O2norm_630nm, ...
    S1_Patch1M7_O2norm_630nm, S1_Patch1M8_O2norm_630nm, ...
    S1_Patch1M9_O2norm_630nm ] ; 

% vierde keer, ook dit werkt niet (ook niet met direct ervoor) 
D = 2 ; % amount of measurements done 
for ii = 1:1:D
    for d = ["NL_MM_0940uur_meting1_!", "NL_MM_1101uur_sticker2_meting2"]
        for i = 2:1:6
            sprintf('S1_Patch2dM%d_O2norm_630',ii) = var
            var(:,i-1) = xlsread((sprintf('%s',d)), i, 'A2:A4001');
            %sprintf('S1_Patch2dM%d_O2norm_670',ii) = xlsread((sprintf('%s',d)), i, 'B2:B4001');
        end 
    end 
end

% oplossing: string maken met de hele bestandsnamen, anders is het denk ik
% onmogelijk. 

% derde keer 
for d = ["0840", "1001", "1055", "1156", "1248", "1355", "1443", "1547","1631"] 
    for dd = 1:1:9
        names = sprintf('NL_%duur_MM_sticker1_meting%d.xlsx',d,dd) ; 
    end 
end 

%% 
for ii = 1:1:9 
    for d = ["0840", "1001", "1055", "1156", "1248", "1355", "1443", "1547","1631"]
        filename = sprintf('NL_%suur_MM_sticker1_meting',d ) ; 
    end 
    for dd = 1:1:9
        for i = 2:1:6
            varname = sprintf('S1_Patch1dM%d_O2norm_360',ii) ;
            varname = xlsread((sprintf(''filename'%d.xlsx',dd)), i, 'A2:A4001'); 
        end 
    end 
end

% tweede keer 

for ii = 1:1:9 
    for d = ["0840", "1001", "1055", "1156", "1248", "1355", "1443", "1547","1631"]
        for i = 2:1:6
            varname = sprintf('S1_Patch1dM%d_O2norm_360',ii) ;
            varname = xlsread((sprintf('NL_%suur_MM_sticker1_meting%d.xlsx',d,ii)), i, 'A2:A4001'); 
        end 
    end
end 

% eeste keer 
for ii = 1:1:9 
    for i = 2:1:6
        varname = sprintf('S1_Patch1dM%d_O2norm_360',ii) ;
        for d = ["0840", "1001", "1055", "1156", "1248", "1355", "1443", "1547","1631"] 
            file = sprintf('NL_%suur_MM_sticker1_meting.xlsx',d
        for dd = 1:1:9
                varname = xlsread((sprintf('NL_%suur_MM_sticker1_meting%d.xlsx',d,dd)), i, 'A2:A4001');
            end 
        end 
    end
end 

%% Loop for saving in GetandSave.m - date: 11.09.2022
for iii = 1:1:12 
    for ii = ["630nm", "670nm"] 
        for i = 1:1:9
            filename = sprintf('S2_Patch%dM%d_O2norm_%s',iii,i,ii) ;
            if exist ('filename', 'var') == 1
                save(filename) 
            end 
        end 
    end 
end
%% O2norm plotten amplituden - date: 11.09.2022
% Dit kan handiger 
t = 1:1:8 ; % time axis
plot(t, max)
ylabel('Intensity [V]')
xlabel('Measurements after application')
title('Intensity of fluorescence signal at 630nm and 670nm in subject #3')

%% README - date: 11.09.2022
% P = patch 
% S = subject
% O2norm = regular oxygen pressure, no pressure is applied to the skin with the COMET head. 
% O20 = hypoxic tissue, oxygen pressure is reduced to approximately zero by applying pressure with the COMET head.  
% NL = New Laser 

% Before running, open folder #3 for subject 3. 
%% O2norm calculation median of maxima - date: 11.09.2022
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


%% integral of cuntion? - date: 09.05.2022
integral = cell(1,N) ;
fun = @(x,P1,P2,lambdas) P(1) + P(2)*exp(lambdas*x) ; 
for h = 1:N  
   fun = @(x) coeffparts{1,h}.multipliers(1) + coeffparts{1,h}.multipliers(2)*exp(coeffparts{1,h}.lambdas*x) ;
   integral(h) = {integral(fun,0,Inf)} ; 
end

for h = 1:N  
   fun = @(x) coeffparts{1,h}.multipliers(1) + coeffparts{1,h}.multipliers(2)*exp(coeffparts{1,h}.lambdas*x) ;
   integral(h) = {integral(fun,0,Inf)} ; 
end


%% DFexpfit bar - date: 09.05.2022
bar(ysv_scaled);

%% DFLIFETIME BESTANDEN - date: 09.05.2022

%function [lambdas,,xy] = DFlifetime(x,y) 
% This function will generate an exponential function: -A + B*exp(c*x) + D*exp(e*x) + F*exp(g*x)

yy = smoothparts{8} ; % the file you want to fit 

x  = linspace(1,5,2000)' ; % because exponentials don't do well with large numbers, we are taking our range within a lower num
y  = log(yy((1:2000),1)) ; % a log distribution seems more fitting due to the shape of the data

% calculate integrals
iy1 = cumtrapz(x, y);
iy2 = cumtrapz(x, iy1);
iy3 = cumtrapz(x, iy2);

% get exponentials lambdas
Y = [iy1, iy2, iy3, x.^3, x.^2, x, ones(size(x))];
A = pinv(Y)*y;
lambdas = eig([A(1), A(2), A(3); 1, 0, 0; 0, 1, 0]);

% get exponentials multipliers
X = [ones(size(x)), exp(lambdas(1)*x), exp(lambdas(2)*x), exp(lambdas(3)*x)];
P = pinv(X)*y;


%% plot DFLIFETIME!!!!!!! - date: 09.05.2022

%fourfit = -P(1)-12.6 + P(2)*exp(lambdas(1)*x) + P(3)*exp(lambdas(2)*x) + P(4)*exp(lambdas(3)*x) ; 
monofit = P(1) + P(2)*exp(lambdas*x) ; 

figure
plot(x, monofit)
hold on 
plot (x, y)
%% get data over large amount of n to define which is best - date: 09.05.2022

% for nn = 1:N
y = smoothparts{8} ;

% get data
x  = linspace(1,5,2000)' ;
y  = log(y((1:2000),1)) ; 

% calculate n integrals of y and n-1 powers of x
n = 10;
iy = zeros(length(x), n);
xp = zeros(length(x), n-1);
iy(:,1) = cumtrapz(x, y);
xp(:,1) = ones(size(x));
for ii=2:1:n
    iy(:, ii) = cumtrapz(x, iy(:, ii-1));
    xp(:, ii) = xp(:, ii-1) .* x;
end

% calculate singular values of Y
Y = [iy, xp];
ysv = svd(Y);

% scale singular values to percentage
ysv_scaled = 100 * ysv ./ sum(ysv)
bar(ysv_scaled);

% select n principal components above a threshold of 0.1% 
thres = 0.1;
n = sum(ysv_scaled > 0.1) / 2
% n = 3 (6 singular values) covers about 99.97% of all components contributions
covers = sum(ysv_scaled(1:2*n))

%% in een struct laden - date: 09.05.2022

parts = {'P1.mat', 'P2.mat', 'P3.mat', 'P4.mat', 'P5.mat', 'P6.mat', 'P7.mat', 'P8.mat', 'P9.mat', 'P10.mat', 'P11.mat', 'P12.mat', 'P13.mat', 'P14.mat', 'P15.mat', 'P16.mat', 'P17.mat'} ;  
for m = numel(parts):-1:1
    S(m,1) = load(parts{m}) ; 
end 

for i = 1:1:17 %hoe run je iets tot het punt dat het niet meer bestaat - else statement?
    load(sprintf('%s%d%s','P',i,'.mat'))
end  
%% Overig functie voor fit - date:05.05.22
% x  = linspace(1,5,2000)' ; 
% y  = P1((1:2000),1) ; 

%% Curvefit oud - date:05.05.22
% lifetime_skin_2Hz_new = zeros(1,size(lifetime_in,2));
% lifetime_skin_2Hz_input = zeros(1,size(lifetime_in,2));

% onefit = fittype('a*exp(b.*x)+c') ;
% twofit = fittype('a*exp(b.*x)+c*exp(d.*x)+e') ;
% threefit = fittype('a*exp(b.*x)+c*exp(d.*x)+e*exp(f.*x)+g') ; 
% x = [1:1:4000]'; % de tijd / hoeveelheid samples 
% 
% for Pindex = [1:1:15] %het aantal lifetimes/exponenten dat te verkrijgen is
% 
%     y = P1(:,Pindex);
% %     fitCurve = fit(x,y,fourfit,'StartPoint',[1/lifetime_in(Pindex)]);
%     
%     f0 = fit(x,y,onefit,'StartPoint',[[ones(size(x)), -exp(-x)]\y; 1]);

%     figure(6)
%     plot(fitCurve, x, y)
%     title('fit on combined signal')
    
    % determining lifetime
%     lifetime_skin_2Hz = coeffvalues(fitCurve);
%     lifetime_skin_2Hz_new(Pindex) = 1/lifetime_skin_2Hz(1);
%     
%     lifetime_input = lifetime_in(lifetimeNumber);
%     lifetime_skin_2Hz_input(lifetimeNumber) = lifetime_input;
%end

%% Fit data - SLM toolbox - date:05.05.22
% Cubic Hermite Spline fit. Coefficients are double the amount of the
% number of knots present and slm.stats shows several stats as to GoF
% (goodness of fit). 

% % NB: Fit to mean or fit to seperate measurements and take mean of fits?
% 
% slmmeanP8 = slmengine(x',meanP8(1:2000,1),'plot','on','knots', ...  %use slm to fit the MEAN with 8 knots, the rest are standard and can also be removed (i left them here to change and optimize)
%     [0 10 20 30 40 60 200 2000],'increasing','on', ...
%     'leftslope',0,'rightslope',0) ; 
%% Retrieve coefficients - SLM toolbox - date:05.05.22

coefP8 = slmmeanP8.coef;                % retrieve coefficients belonging to the data function fit. 
RMSEP8 = slmmeanP8.stats.RMSE ;
R2P8 = slmmeanP8.stats.R2 ; 
ErrorRangeP8 = slmmeanP8.stats.ErrorRange ; 

%% Normalization of data - date:05.05.22
% normalize function: MM used mean / max manual normalization opposed to
% function. Normalization can be used when all objects are plotten together to do shape analysis 

% slmmean = slmengine(x',meanP8(1:2000,1),'plot','on','knots', ...
%     [0 45 90 200 2000],'increasing','on', ...
%     'leftslope',0,'rightslope',0) ; 
% slmmean.stats 

% y = meanP8(1:2000,1) ; 
% slmmean = slmengine(y, x, 'plot','on','knots',9,'incr','on') ; 

%% Correction of data - date:05.05.22
correction = mean(xmean(end-4:end));
xmeancorr = xmean - correction ;

%differentiaal correctie
vdiff = diff([drift;0])/dt;
adiff = diff([vdiff;0])/dt;
%
dt  = linspace(1,4000)' ;
vdiff = diff([meanP1;0])/dt;
adiff = diff([vdiff;0])/dt;

%% Vector - date:05.05.22
files = [P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17] ;
%% Plot data - date:05.05.22

figure (1)
% subplot(2,1,1)
x = linspace(1,2000,2000) ;
for j = 1:1:15
    plot(x,P17(1:2000,j)) 
    hold on
end 
% subplot(2,1,2)                % also plot mean 
% plot(x,meanP8(1:2000,1)) ;



