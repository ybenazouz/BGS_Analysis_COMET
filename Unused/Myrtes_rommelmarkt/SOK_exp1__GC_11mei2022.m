%% SOK 1 experiment - See what Gauthier Croizat ziet?
% 11 mei 2022 - MS
clear all
close all
% %% Load
% 
% folder = fileparts(which(mfilename)); 
% addpath(genpath(folder));

%%% 515nm %%%
    %630nm
% ppix25_515nm_630nm = [];
% ppix200_515nm_630nm = [];
% ppix400_515nm_630nm = [];
% for i = 2:1:19
%     ppix25_515nm_630nm = [ppix25_515nm_630nm, xlsread('SOK1_25uM_515nm.xlsx', i, 'A2:A4001')];
% end
% for i = 2:1:13
%     ppix200_515nm_630nm = [ppix200_515nm_630nm, xlsread('SOK1_200uM_515nm.xlsx', i, 'A2:A4001')];
% end
% for i = 2:1:23
%     ppix400_515nm_630nm = [ppix400_515nm_630nm, xlsread('SOK1_400uM_515nm.xlsx', i, 'A2:A4001')];
% end
%     %670nm
% ppix25_515nm_670nm = [];
% ppix200_515nm_670nm = [];
% ppix400_515nm_670nm = [];
% for i = 2:1:19
%     ppix25_515nm_670nm = [ppix25_515nm_670nm, xlsread('SOK1_25uM_515nm.xlsx', i, 'B2:B4001')];
% end
% for i = 2:1:13
%     ppix200_515nm_670nm = [ppix200_515nm_670nm, xlsread('SOK1_200uM_515nm.xlsx', i, 'B2:B4001')];
% end
% for i = 2:1:23
%     ppix400_515nm_670nm = [ppix400_515nm_670nm, xlsread('SOK1_400uM_515nm.xlsx', i, 'B2:B4001')];
% end


%% Re-load signal
folder = fileparts(which(mfilename)); 
addpath(genpath(folder));
ppix25_515nm_630nm = load("Sok1__ppix25_515nm_630nm.mat");
ppix25_515nm_630nm = ppix25_515nm_630nm.ppix25_515nm_630nm;

ppix200_515nm_630nm = load("Sok1__ppix200_515nm_630nm.mat");
ppix200_515nm_630nm = ppix200_515nm_630nm.ppix200_515nm_630nm;

ppix400_515nm_630nm = load("Sok1__ppix400_515nm_630nm.mat");
ppix400_515nm_630nm = ppix400_515nm_630nm.ppix400_515nm_630nm;


ppix25_515nm_670nm = load("Sok1__ppix25_515nm_670nm.mat");
ppix25_515nm_670nm = ppix25_515nm_670nm.ppix25_515nm_670nm;

ppix200_515nm_670nm = load("Sok1__ppix200_515nm_670nm.mat");
ppix200_515nm_670nm = ppix200_515nm_670nm.ppix200_515nm_670nm;

ppix400_515nm_670nm = load("Sok1__ppix400_515nm_670nm.mat");
ppix400_515nm_670nm = ppix400_515nm_670nm.ppix400_515nm_670nm;

%% Sort signal
    % 25uM
% ppix25_410nm_630nm = ppix25_515nm_630nm(:,18);
% ppix25_515nm_630nm_ND0304 = ppix25_515nm_630nm(:,1:3);
ppix25_515nm_630nm_ND030406 = ppix25_515nm_630nm(:,7:17);

    % 200uM - 13 metingen
ppix200_515nm_630nm_ND030406 = ppix200_515nm_630nm(:,1:10);
% ppix200_515nm_630nm_ND0304 = ppix200_515nm_630nm(:,11:12);

    % 400uM - 23 metingen
% ppix400_515nm_630nm_ND0304_1e3shots = ppix400_515nm_630nm(:,1:3); %%nog even naar kijken
ppix400_515nm_630nm_ND0304 = ppix400_515nm_630nm(:,4:13);
ppix400_515nm_630nm_ND030406 = ppix400_515nm_630nm(:,14:22);

%%% 670nm %%%
    % 25uM
% ppix25_410nm_670nm = ppix25_515nm_670nm(:,18);
% ppix25_515nm_670nm_ND0304 = ppix25_515nm_670nm(:,1:3);
ppix25_515nm_670nm_ND030406 = ppix25_515nm_670nm(:,7:17);

    % 200uM - 13 metingen
ppix200_515nm_670nm_ND030406 = ppix200_515nm_670nm(:,1:10);
% ppix200_515nm_670nm_ND0304 = ppix200_515nm_670nm(:,11:12);

    % 400uM - 23 metingen
% ppix400_515nm_670nm_ND0304_1e3shots = ppix400_515nm_670nm(:,1:3); %%nog even naar kijken
ppix400_515nm_670nm_ND0304 = ppix400_515nm_670nm(:,4:13);
ppix400_515nm_670nm_ND030406 = ppix400_515nm_670nm(:,14:22);

% %% Check signal
% figure
% plot(samples,-data(:,2)) %,'-o', 'MarkerSize', 2)
% xlim([0 350])


%% check signal
% samples = 1:4000;

% data = ppix25_410nm_630nm;                %#bleach    
% data = ppix25_515nm_630nm_ND0304;         %#sat
data = ppix25_515nm_630nm_ND030406; 
% data = ppix200_515nm_630nm_ND030406;
% data = ppix200_515nm_630nm_ND0304;        %#sat
% data = ppix400_515nm_630nm_ND0304_1er3shots; 
% data = ppix400_515nm_630nm_ND0304;
% data = ppix400_515nm_630nm_ND030406; % lagere ampl. dan ND0304
% data = ppix25_410nm_670nm;                %#bleach
% data = ppix25_515nm_670nm_ND0304;       %# prima of bleach?
% data = ppix25_515nm_670nm_ND030406;
% data = ppix200_515nm_670nm_ND030406;
% data = ppix200_515nm_670nm_ND0304;         %#sat
% data = ppix400_515nm_670nm_ND0304_1e3shots;
% data = ppix400_515nm_670nm_ND0304;
% data = ppix400_515nm_670nm_ND030406;

figure
hold on
for i = 1:size(data,2)
    plot(samples,-data(:,i)) %,'-o', 'MarkerSize', 2)
end
legend
hold off
xlim([0 350])
ylim([0 1.4])
title('25\muM 630')


%% Average data
ppix25_515nm_630nm_ND030406_avg = -mean(ppix25_515nm_630nm_ND030406,2);
ppix200_515nm_630nm_ND030406_avg = -mean(ppix200_515nm_630nm_ND030406,2);
ppix400_515nm_630nm_ND030406_avg = -mean(ppix400_515nm_630nm_ND030406,2);

ppix25_515nm_670nm_ND030406_avg = -mean(ppix25_515nm_670nm_ND030406,2);
ppix200_515nm_670nm_ND030406_avg = -mean(ppix200_515nm_670nm_ND030406,2);
ppix400_515nm_670nm_ND030406_avg = -mean(ppix400_515nm_670nm_ND030406,2);
 
ppix400_515nm_630nm_ND0304_avg = -mean(ppix400_515nm_630nm_ND0304,2);
ppix400_515nm_670nm_ND0304_avg = -mean(ppix400_515nm_670nm_ND0304,2);


%% Plot all

figure(1)
hold on
plot(samples, ppix25_515nm_630nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#bfff00') 
plot(samples, ppix200_515nm_630nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#00ffff') 
plot(samples, ppix400_515nm_630nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#ff00ff') 
hold off
xlabel('Samples')
legend('25\muM', '200\muM', '400\muM')
title('SOK exp. 1 - 515nm - 630nm')
xlim([0 500])

figure(2)
hold on
plot(samples, ppix25_515nm_670nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#00ff40') 
plot(samples, ppix200_515nm_670nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#0000ff') 
plot(samples, ppix400_515nm_670nm_ND030406_avg, '-o', 'MarkerSize', 2, 'Color' , '#ff0000') 
hold off
xlabel('Samples')
legend( '25\muM', '200\muM', '400\muM')
title('SOK exp. 1 - 515nm - 670nm')
xlim([0 500])

figure(3)
hold on
plot(samples, ppix400_515nm_630nm_ND0304_avg, '-o', 'MarkerSize', 2, 'Color' , 'r') 
plot(samples, ppix400_515nm_670nm_ND0304_avg, '-o', 'MarkerSize', 2, 'Color' , 'k') 
hold off
xlabel('Samples')
legend( '630nm', '670nm')
title(['SOK exp. 1 - 515nm - ND 0.3 + 0.4 - 400\muM' ...
    ''])
xlim([0 500])
%% Fit & determiner I0
% Maximum amplitude

%%% 515nm %%%
ppix25_515nm_630nm_max = max(ppix25_515nm_630nm_ND030406_avg);
ppix200_515nm_630nm_max = max(ppix200_515nm_630nm_ND030406_avg);
ppix400_515nm_630nm_max = max(ppix400_515nm_630nm_ND030406_avg);
ppix25_515nm_670nm_max = max(ppix25_515nm_670nm_ND030406_avg);
ppix200_515nm_670nm_max = max(ppix200_515nm_670nm_ND030406_avg);
ppix400_515nm_670nm_max = max(ppix400_515nm_670nm_ND030406_avg);

%combine 630 and 670 nm results of each sample, at 410nm and 515nm excitation
% PpIX25_410nm_max =[ppix25_410nm_630nm_max ppix25_410nm_670nm_max];
% PpIX200_410nm_max =[ppix200_410nm_630nm_max ppix200_410nm_670nm_max];
% PpIX400_410nm_max =[ppix400_410nm_630nm_max ppix400_410nm_670nm_max];
PpIX25_515nm_max =[ppix25_515nm_630nm_max ppix25_515nm_670nm_max];
PpIX200_515nm_max =[ppix200_515nm_630nm_max ppix200_515nm_670nm_max];
PpIX400_515nm_max =[ppix400_515nm_630nm_max ppix400_515nm_670nm_max];

wavelength = [630 670];
figure(4)
hold on
plot(wavelength,PpIX25_515nm_max, 'Color' , '#00ff40', 'Marker', 'o') 
plot(wavelength,PpIX200_515nm_max, 'Color' , '#0000ff', 'Marker', 'o')
plot(wavelength,PpIX400_515nm_max, 'Color' , '#ff0000', 'Marker', 'o') 
hold off
title('Maximum amplitude per wavelength ')
xlabel('Samples')
legend( '25\muM', '200\muM', '400\muM')
% xlim([0 500])

diff630670_25uM = PpIX25_515nm_max(1)-PpIX25_515nm_max(2)
diff630670_200uM = PpIX200_515nm_max(1)-PpIX200_515nm_max(2)
diff630670_400uM = PpIX400_515nm_max(1)-PpIX400_515nm_max(2)

%%% conclusie: niet geheel logisch. 400nm nauwelijks verschil tussen 630nm
%%% en 670nm (overeenkomstig GC), maar 200nm meer verschil dat 25nm.

%% Fit for I0
%%%%%%%%%%%%%%% ERRORRR %%%%%
% % zonder a geen error..
% % monoexponentially
% fun_mono = @(a, c, d, x) a.*exp(-c.*x) + d;
% samples = 1:size(ppix400_515nm_670nm_ND0304_avg,1);
% x_mono = samples';
% y = ppix400_515nm_670nm_ND0304_avg;
% [monoFit, ~]= fit(x_mono,y,fun_mono,'StartPoint',[0.5, 300, 0.1]);  % Geeft het resultaat voor c wat je invult als startpoint..
% 
% coeff_monoFit = coeffvalues(monoFit)
% lifetime_monoFit = 1/coeff_monoFit(2)
%%
allData_25_200_400uM__630_670nm = [ppix25_515nm_630nm_ND030406_avg ...
    ppix200_515nm_630nm_ND030406_avg ...
    ppix400_515nm_630nm_ND030406_avg ...
    ppix25_515nm_670nm_ND030406_avg ...
    ppix200_515nm_670nm_ND030406_avg ...
    ppix400_515nm_670nm_ND030406_avg ...
    ];

extraData_400uM_ND0304 = [ppix400_515nm_630nm_ND0304_avg ppix400_515nm_670nm_ND0304_avg];

%%
% biexponentially
I0_biFit = [];
lifetime_biFit = [];
biFit_curves = [];

for dataNmr = 1:size(allData_25_200_400uM__630_670nm,2)
samples = 1:size(allData_25_200_400uM__630_670nm(:,dataNmr),1);
x = samples';
signal = allData_25_200_400uM__630_670nm(:,dataNmr);
fun_bi = @(a, c, b, Y, x) a.*exp(-x./c)+b.*exp(-2*x./c)+Y; % a = I0, tau =1/c, x=samples
[biFit, ~] = fit(x,signal,fun_bi, 'StartPoint', [0.5, 200, 0.5, 0.1]); %[0.5, 1, 0.5] werkte?
% [gefit_bi, gof_bi] = lsqcurvefit(x,signal,fun_bi, 'StartPoint', [0.5, 1, 0.5]);

coeff_biFit = coeffvalues(biFit);
lifetime_biFit(dataNmr) = coeff_biFit(2);
I0_biFit(dataNmr) = coeff_biFit(1) + coeff_biFit(3);
% biFit_curves(dataNmr) = biFit;
% lifetime_biFit3 = 1/(coeff_biFit(3))

% intI0 = int(biFit)
intI0 = cumtrapz(signal);
end
    %For extra data: 400uM ND 0.3 + 0.4
for dataNmr_extraData = 1:size(extraData_400uM_ND0304,2)
samples_extraData = 1:size(extraData_400uM_ND0304(:,dataNmr_extraData),1);
x_extraData = samples_extraData';
signal_extraData = extraData_400uM_ND0304(:,dataNmr_extraData);
fun_bi_extraData = @(a, c, b, Y, x) a.*exp(-x./c)+b.*exp(-2*x./c)+Y; % a_extraData = I0, tau_extraData =1/c, x=samples
[biFit_extraData, ~] = fit(x,signal,fun_bi, 'StartPoint', [0.5, 200, 0.5, 0.1]); %[0.5, 1, 0.5] werkte?

coeff_biFit_extraData = coeffvalues(biFit_extraData);
lifetime_biFit_extraData(dataNmr_extraData) = coeff_biFit_extraData(2);
I0_biFit_extraData(dataNmr_extraData) = coeff_biFit_extraData(1) + coeff_biFit_extraData(3);
end
%%
plot(intI0)
%% Rectangular fit
fun_rect= @(a,b,c,x) a*exp(b.*x).*sinh(0.000830*c.*x)./(0.000830*c.*x) ;
x = samples';
signal = ppix25_515nm_630nm_ND030406_avg;
%     [fitCurve, gof]= fit(x,y,fitType,'problem', 'c','StartPoint',[1, -0.01]);
    [rectFit, ~]= fit(x,y,fun_rect,'StartPoint',[1, -0.01,1]);
coeff_rectFit = coeffvalues(rectFit)
lifetime_rectFit = 1/-coeff_rectFit(2)


%%
figure(6)
hold on
plot(bi_fit, x, signal)
hold off


