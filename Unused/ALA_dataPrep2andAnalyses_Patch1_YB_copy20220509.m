%% ALA-exp - data preperation (2)  - avg all pulses
% april 2022    M. Schoenmakers

clear all 
close all
%% Load data - 630 nm
Patch1_O2norm_630nm_uur1 = load("Patch1_O2norm_630nm_uur1.mat");
Patch1_O2norm_630nm_uur1 = Patch1_O2norm_630nm_uur1.Patch1_O2norm_630nm_uur1;
Patch1_O2norm_630nm_uur3 = load("Patch1_O2norm_630nm_uur3.mat");
Patch1_O2norm_630nm_uur3 = Patch1_O2norm_630nm_uur3.Patch1_O2norm_630nm_uur3;
Patch1_O2norm_630nm_uur4 = load("Patch1_O2norm_630nm_uur4.mat");
Patch1_O2norm_630nm_uur4 = Patch1_O2norm_630nm_uur4.Patch1_O2norm_630nm_uur4;
Patch1_O2norm_630nm_uur5 = load("Patch1_O2norm_630nm_uur5.mat");
Patch1_O2norm_630nm_uur5 = Patch1_O2norm_630nm_uur5.Patch1_O2norm_630nm_uur5;
Patch1_O2norm_630nm_uur6 = load("Patch1_O2norm_630nm_uur6.mat");
Patch1_O2norm_630nm_uur6 = Patch1_O2norm_630nm_uur6.Patch1_O2norm_630nm_uur6;
Patch1_O2norm_630nm_uur7 = load("Patch1_O2norm_630nm_uur7.mat");
Patch1_O2norm_630nm_uur7 = Patch1_O2norm_630nm_uur7.Patch1_O2norm_630nm_uur7;
Patch1_O2norm_630nm_uur8 = load("Patch1_O2norm_630nm_uur8.mat");
Patch1_O2norm_630nm_uur8 = Patch1_O2norm_630nm_uur8.Patch1_O2norm_630nm_uur8;
Patch1_O2norm_630nm_uur9 = load("Patch1_O2norm_630nm_uur9.mat");
Patch1_O2norm_630nm_uur9 = Patch1_O2norm_630nm_uur9.Patch1_O2norm_630nm_uur9;

Patch1_O20_630nm_uur1 = load("Patch1_O20_630nm_uur1.mat");
Patch1_O20_630nm_uur1 = Patch1_O20_630nm_uur1.Patch1_O20_630nm_uur1;
Patch1_O20_630nm_uur3 = load("Patch1_O20_630nm_uur3.mat");
Patch1_O20_630nm_uur3 = Patch1_O20_630nm_uur3.Patch1_O20_630nm_uur3;
Patch1_O20_630nm_uur4 = load("Patch1_O20_630nm_uur4.mat");
Patch1_O20_630nm_uur4 = Patch1_O20_630nm_uur4.Patch1_O20_630nm_uur4;
Patch1_O20_630nm_uur5 = load("Patch1_O20_630nm_uur5.mat");
Patch1_O20_630nm_uur5 = Patch1_O20_630nm_uur5.Patch1_O20_630nm_uur5;
Patch1_O20_630nm_uur6 = load("Patch1_O20_630nm_uur6.mat");
Patch1_O20_630nm_uur6 = Patch1_O20_630nm_uur6.Patch1_O20_630nm_uur6;
Patch1_O20_630nm_uur7 = load("Patch1_O20_630nm_uur7.mat");
Patch1_O20_630nm_uur7 = Patch1_O20_630nm_uur7.Patch1_O20_630nm_uur7;
Patch1_O20_630nm_uur8 = load("Patch1_O20_630nm_uur8.mat");
Patch1_O20_630nm_uur8 = Patch1_O20_630nm_uur8.Patch1_O20_630nm_uur8;
Patch1_O20_630nm_uur9 = load("Patch1_O20_630nm_uur9.mat");
Patch1_O20_630nm_uur9 = Patch1_O20_630nm_uur9.Patch1_O20_630nm_uur9;

%% Load data - 670 nm
Patch1_O2norm_670nm_uur1 = load("Patch1_O2norm_670nm_uur1.mat");
Patch1_O2norm_670nm_uur1 = Patch1_O2norm_670nm_uur1.Patch1_O2norm_670nm_uur1;
Patch1_O2norm_670nm_uur3 = load("Patch1_O2norm_670nm_uur3.mat");
Patch1_O2norm_670nm_uur3 = Patch1_O2norm_670nm_uur3.Patch1_O2norm_670nm_uur3;
Patch1_O2norm_670nm_uur4 = load("Patch1_O2norm_670nm_uur4.mat");
Patch1_O2norm_670nm_uur4 = Patch1_O2norm_670nm_uur4.Patch1_O2norm_670nm_uur4;
Patch1_O2norm_670nm_uur5 = load("Patch1_O2norm_670nm_uur5.mat");
Patch1_O2norm_670nm_uur5 = Patch1_O2norm_670nm_uur5.Patch1_O2norm_670nm_uur5;
Patch1_O2norm_670nm_uur6 = load("Patch1_O2norm_670nm_uur6.mat");
Patch1_O2norm_670nm_uur6 = Patch1_O2norm_670nm_uur6.Patch1_O2norm_670nm_uur6;
Patch1_O2norm_670nm_uur7 = load("Patch1_O2norm_670nm_uur7.mat");
Patch1_O2norm_670nm_uur7 = Patch1_O2norm_670nm_uur7.Patch1_O2norm_670nm_uur7;
Patch1_O2norm_670nm_uur8 = load("Patch1_O2norm_670nm_uur8.mat");
Patch1_O2norm_670nm_uur8 = Patch1_O2norm_670nm_uur8.Patch1_O2norm_670nm_uur8;
Patch1_O2norm_670nm_uur9 = load("Patch1_O2norm_670nm_uur9.mat");
Patch1_O2norm_670nm_uur9 = Patch1_O2norm_670nm_uur9.Patch1_O2norm_670nm_uur9;

Patch1_O20_670nm_uur1 = load("Patch1_O20_670nm_uur1.mat");
Patch1_O20_670nm_uur1 = Patch1_O20_670nm_uur1.Patch1_O20_670nm_uur1;
Patch1_O20_670nm_uur3 = load("Patch1_O20_670nm_uur3.mat");
Patch1_O20_670nm_uur3 = Patch1_O20_670nm_uur3.Patch1_O20_670nm_uur3;
Patch1_O20_670nm_uur4 = load("Patch1_O20_670nm_uur4.mat");
Patch1_O20_670nm_uur4 = Patch1_O20_670nm_uur4.Patch1_O20_670nm_uur4;
Patch1_O20_670nm_uur5 = load("Patch1_O20_670nm_uur5.mat");
Patch1_O20_670nm_uur5 = Patch1_O20_670nm_uur5.Patch1_O20_670nm_uur5;
Patch1_O20_670nm_uur6 = load("Patch1_O20_670nm_uur6.mat");
Patch1_O20_670nm_uur6 = Patch1_O20_670nm_uur6.Patch1_O20_670nm_uur6;
Patch1_O20_670nm_uur7 = load("Patch1_O20_670nm_uur7.mat");
Patch1_O20_670nm_uur7 = Patch1_O20_670nm_uur7.Patch1_O20_670nm_uur7;
Patch1_O20_670nm_uur8 = load("Patch1_O20_670nm_uur8.mat");
Patch1_O20_670nm_uur8 = Patch1_O20_670nm_uur8.Patch1_O20_670nm_uur8;
Patch1_O20_670nm_uur9 = load("Patch1_O20_670nm_uur9.mat");
Patch1_O20_670nm_uur9 = Patch1_O20_670nm_uur9.Patch1_O20_670nm_uur9;
% %% Check each pulse
% 
% data = Patch1_O2norm_630nm_uur1;
% samples= 1:length(Patch1_O2norm_670nm_uur1);
% 
% figure()
% hold on
% for i= 1:size(data,2)
% plot(samples, -data(:,i))
% end
% hold off
% legend
% xlim([0 4000])

%% Average
    %630nm
Patch1_O2norm_630nm_uur1_avg = -mean(Patch1_O2norm_630nm_uur1,2);
Patch1_O2norm_630nm_uur3_avg = -mean(Patch1_O2norm_630nm_uur3,2);
Patch1_O2norm_630nm_uur4_avg = -mean(Patch1_O2norm_630nm_uur4,2);
Patch1_O2norm_630nm_uur5_avg = -mean(Patch1_O2norm_630nm_uur5,2);
Patch1_O2norm_630nm_uur6_avg = -mean(Patch1_O2norm_630nm_uur6,2);
Patch1_O2norm_630nm_uur7_avg = -mean(Patch1_O2norm_630nm_uur7,2);
Patch1_O2norm_630nm_uur8_avg = -mean(Patch1_O2norm_630nm_uur8,2);
Patch1_O2norm_630nm_uur9_avg = -mean(Patch1_O2norm_630nm_uur9,2);

Patch1_O20_630nm_uur1_avg = -mean(Patch1_O20_630nm_uur1,2);
Patch1_O20_630nm_uur3_avg = -mean(Patch1_O20_630nm_uur3,2);
Patch1_O20_630nm_uur4_avg = -mean(Patch1_O20_630nm_uur4,2);
Patch1_O20_630nm_uur5_avg = -mean(Patch1_O20_630nm_uur5,2);
Patch1_O20_630nm_uur6_avg = -mean(Patch1_O20_630nm_uur6,2);
Patch1_O20_630nm_uur7_avg = -mean(Patch1_O20_630nm_uur7,2);
Patch1_O20_630nm_uur8_avg = -mean(Patch1_O20_630nm_uur8,2);
Patch1_O20_630nm_uur9_avg = -mean(Patch1_O20_630nm_uur9,2);

    %670nm
Patch1_O2norm_670nm_uur1_avg = -mean(Patch1_O2norm_670nm_uur1,2);
Patch1_O2norm_670nm_uur3_avg = -mean(Patch1_O2norm_670nm_uur3,2);
Patch1_O2norm_670nm_uur4_avg = -mean(Patch1_O2norm_670nm_uur4,2);
Patch1_O2norm_670nm_uur5_avg = -mean(Patch1_O2norm_670nm_uur5,2);
Patch1_O2norm_670nm_uur6_avg = -mean(Patch1_O2norm_670nm_uur6,2);
Patch1_O2norm_670nm_uur7_avg = -mean(Patch1_O2norm_670nm_uur7,2);
Patch1_O2norm_670nm_uur8_avg = -mean(Patch1_O2norm_670nm_uur8,2);
Patch1_O2norm_670nm_uur9_avg = -mean(Patch1_O2norm_670nm_uur9,2);

Patch1_O20_670nm_uur1_avg = -mean(Patch1_O20_670nm_uur1,2);
Patch1_O20_670nm_uur3_avg = -mean(Patch1_O20_670nm_uur3,2);
Patch1_O20_670nm_uur4_avg = -mean(Patch1_O20_670nm_uur4,2);
Patch1_O20_670nm_uur5_avg = -mean(Patch1_O20_670nm_uur5,2);
Patch1_O20_670nm_uur6_avg = -mean(Patch1_O20_670nm_uur6,2);
Patch1_O20_670nm_uur7_avg = -mean(Patch1_O20_670nm_uur7,2);
Patch1_O20_670nm_uur8_avg = -mean(Patch1_O20_670nm_uur8,2);
Patch1_O20_670nm_uur9_avg = -mean(Patch1_O20_670nm_uur9,2);

%% Maximum 
    %630nm
Patch1_O2norm_630nm_uur1_max = max(Patch1_O2norm_630nm_uur1_avg);
Patch1_O2norm_630nm_uur2_max = NaN;
Patch1_O2norm_630nm_uur3_max = max(Patch1_O2norm_630nm_uur3_avg);
Patch1_O2norm_630nm_uur4_max = max(Patch1_O2norm_630nm_uur4_avg);
Patch1_O2norm_630nm_uur5_max = max(Patch1_O2norm_630nm_uur5_avg);
Patch1_O2norm_630nm_uur6_max = max(Patch1_O2norm_630nm_uur6_avg);
Patch1_O2norm_630nm_uur7_max = max(Patch1_O2norm_630nm_uur7_avg);
Patch1_O2norm_630nm_uur8_max = max(Patch1_O2norm_630nm_uur8_avg);
Patch1_O2norm_630nm_uur9_max = max(Patch1_O2norm_630nm_uur9_avg);
Patch1_O2norm_630nm_uur2_max = (Patch1_O2norm_630nm_uur1_max+Patch1_O2norm_630nm_uur3_max)/2;

Patch1_O20_630nm_uur1_max = max(Patch1_O20_630nm_uur1_avg);
Patch1_O20_630nm_uur3_max = max(Patch1_O20_630nm_uur3_avg);
Patch1_O20_630nm_uur4_max = max(Patch1_O20_630nm_uur4_avg);
Patch1_O20_630nm_uur5_max = max(Patch1_O20_630nm_uur5_avg);
Patch1_O20_630nm_uur6_max = max(Patch1_O20_630nm_uur6_avg);
Patch1_O20_630nm_uur7_max = max(Patch1_O20_630nm_uur7_avg);
Patch1_O20_630nm_uur8_max = max(Patch1_O20_630nm_uur8_avg);
Patch1_O20_630nm_uur9_max = max(Patch1_O20_630nm_uur9_avg);
Patch1_O20_630nm_uur2_max = (Patch1_O20_630nm_uur1_max+Patch1_O20_630nm_uur3_max)/2;

    %670nm
Patch1_O2norm_670nm_uur1_max = max(Patch1_O2norm_670nm_uur1_avg);
Patch1_O2norm_670nm_uur3_max = max(Patch1_O2norm_670nm_uur3_avg);
Patch1_O2norm_670nm_uur4_max = max(Patch1_O2norm_670nm_uur4_avg);
Patch1_O2norm_670nm_uur5_max = max(Patch1_O2norm_670nm_uur5_avg);
Patch1_O2norm_670nm_uur6_max = max(Patch1_O2norm_670nm_uur6_avg);
Patch1_O2norm_670nm_uur7_max = max(Patch1_O2norm_670nm_uur7_avg);
Patch1_O2norm_670nm_uur8_max = max(Patch1_O2norm_670nm_uur8_avg);
Patch1_O2norm_670nm_uur9_max = max(Patch1_O2norm_670nm_uur9_avg);
Patch1_O2norm_670nm_uur2_max = (Patch1_O2norm_670nm_uur1_max +Patch1_O2norm_670nm_uur3_max)/2;

Patch1_O20_670nm_uur1_max = max(Patch1_O20_670nm_uur1_avg);
Patch1_O20_670nm_uur3_max = max(Patch1_O20_670nm_uur3_avg);
Patch1_O20_670nm_uur4_max = max(Patch1_O20_670nm_uur4_avg);
Patch1_O20_670nm_uur5_max = max(Patch1_O20_670nm_uur5_avg);
Patch1_O20_670nm_uur6_max = max(Patch1_O20_670nm_uur6_avg);
Patch1_O20_670nm_uur7_max = max(Patch1_O20_670nm_uur7_avg);
Patch1_O20_670nm_uur8_max = max(Patch1_O20_670nm_uur8_avg);
Patch1_O20_670nm_uur9_max = max(Patch1_O20_670nm_uur9_avg);
Patch1_O20_670nm_uur2_max = (Patch1_O20_670nm_uur1_max+Patch1_O20_670nm_uur3_max)/2;

%% Cluster maxima of series
    %630nm
Patch1_O2norm_630nm_max = [Patch1_O2norm_630nm_uur1_max ...
    Patch1_O2norm_630nm_uur2_max ...
    Patch1_O2norm_630nm_uur3_max ...
    Patch1_O2norm_630nm_uur4_max ...
    Patch1_O2norm_630nm_uur5_max ...
    Patch1_O2norm_630nm_uur6_max ...
    Patch1_O2norm_630nm_uur7_max ...
    Patch1_O2norm_630nm_uur8_max ...
    Patch1_O2norm_630nm_uur9_max ];

Patch1_O20_630nm_max = [Patch1_O20_630nm_uur1_max ...
    Patch1_O20_630nm_uur2_max ...
    Patch1_O20_630nm_uur3_max ...
    Patch1_O20_630nm_uur4_max ...
    Patch1_O20_630nm_uur5_max ...
    Patch1_O20_630nm_uur6_max ...
    Patch1_O20_630nm_uur7_max ...
    Patch1_O20_630nm_uur8_max ...
    Patch1_O20_630nm_uur9_max ];

    %670nm
Patch1_O2norm_670nm_max = [Patch1_O2norm_670nm_uur1_max ...
    Patch1_O2norm_670nm_uur2_max ...
    Patch1_O2norm_670nm_uur3_max ...
    Patch1_O2norm_670nm_uur4_max ...
    Patch1_O2norm_670nm_uur5_max ...
    Patch1_O2norm_670nm_uur6_max ...
    Patch1_O2norm_670nm_uur7_max ...
    Patch1_O2norm_670nm_uur8_max ...
    Patch1_O2norm_670nm_uur9_max ];

Patch1_O20_670nm_max = [Patch1_O20_670nm_uur1_max ...
    Patch1_O20_670nm_uur2_max ...
    Patch1_O20_670nm_uur3_max ...
    Patch1_O20_670nm_uur4_max ...
    Patch1_O20_670nm_uur5_max ...
    Patch1_O20_670nm_uur6_max ...
    Patch1_O20_670nm_uur7_max ...
    Patch1_O20_670nm_uur8_max ...
    Patch1_O20_670nm_uur9_max ];



%% I0 mono-exponential fit
Patch1_O2norm_630nm_uur1_avg_cut = Patch1_O2norm_630nm_uur1_avg(2:end);
samples = 1:size(Patch1_O2norm_630nm_uur1_avg_cut,1);
x = samples';
signal = Patch1_O2norm_630nm_uur1_avg_cut;
fun_mono = @(a,c,x) a*exp(-x*c); % a = I0, tau =1/c, x=samples
% fun_mono = @(c,x) exp(-x*c); % a = I0, tau =1/c, x=samples
[gefit_mono, gof_mono] = fit(x,signal,fun_mono, 'StartPoint', [0.4, 1]); %doesn't work
% gefit_mono = lsqcurvefit(x,signal,fun_mono, 'StartPoint', [0.5, 1]);


figure(110)
hold on
plot( x, Patch1_O2norm_630nm_uur1_avg_cut)
hold off

figure(111)
hold on
plot(gefit_mono, x, Patch1_O2norm_630nm_uur1_avg)
hold off

% Se_mono = integral(fun_mono,0,Inf);


%% I0 bi-exponential fit
Patch1_O2norm_630nm_uur1_avg_cut = Patch1_O2norm_630nm_uur1_avg(2:end);

samples = 1:size(Patch1_O2norm_630nm_uur1_avg_cut,1);
x = samples';
signal = Patch1_O2norm_630nm_uur1_avg_cut;
fun_bi = @(a, c, b, x) a.*exp(-x./c)+b.*exp(-2*x.*c); % a = I0, tau =1/c, x=samples
[gefit_bi, gof_bi] = fit(x,signal,fun_bi, 'StartPoint', [0.5, 1, 0.5]);
% [gefit_bi, gof_bi] = lsqcurvefit(x,signal,fun_bi, 'StartPoint', [0.5, 1, 0.5]);


figure(112)
hold on
plot(gefit_bi, x, Patch1_O2norm_630nm_uur1_avg_cut)
hold off

%Se_bi = integral(fun_bi,0,Inf);



%% Calculate ratios
ratio630670_O2norm =nan(size(Patch1_O2norm_670nm_max));
ratio630670_O20 =nan(size(Patch1_O20_670nm_max));

for i = 1: size(Patch1_O2norm_670nm_max,2)
ratio630670_O2norm(i) = Patch1_O2norm_670nm_max(i)/Patch1_O2norm_630nm_max(i);
ratio630670_O20(i) = Patch1_O20_670nm_max(i)/Patch1_O20_630nm_max(i);
end


%% Plot I0 over hours
hours = 1:1:9;
figure(1)
plot(hours, Patch1_O2norm_630nm_max,'o-', 'Color', 'b')
figure(2)
plot(hours, Patch1_O20_630nm_max,'o-', 'Color', 'c')
figure(3)
plot(hours, Patch1_O2norm_670nm_max,'o-', 'Color', 'r')
figure(4)
plot(hours, Patch1_O20_670nm_max,'o-', 'Color', 'm')

figure(5)
hold on
plot(hours, Patch1_O2norm_630nm_max,'o-', 'Color', 'b')
plot(hours, Patch1_O20_630nm_max,'o-', 'Color', 'c')
plot(hours, Patch1_O2norm_670nm_max,'o-', 'Color', 'r')
plot(hours, Patch1_O20_670nm_max,'o-', 'Color', 'm')
hold off
legend('630nm O2norm','630nm O20', '670nm O2norm', '670nm O20')
% title('Maximum amplitude')
ylabel('Maximum amplitude [a.u.]')
xlabel('Time (hours)')

figure(6)
hold on
plot(hours, ratio630670_O2norm,'o-', 'Color', 'g')
plot(hours, ratio630670_O20,'o-', 'Color', '#7E2F8E')
hold off
legend('O2norm','O20')
% ylim([0.2 0.35])
ylabel('Ratio of maximum amplitude 670nm / 630nm [a.u.]')
xlabel('Time (hours)')



