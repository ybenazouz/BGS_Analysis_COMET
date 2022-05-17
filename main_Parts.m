%% TM2 Internship - COMET 
% Y. (Yasmin) Ben Azouz and M. (Myrte) Schoemakers
% Version 11.05.2022
% Document skin, parts and SOK. 

clear
close all
%% COMET PARTS EXPERIMENT NEW LASER 
% Fill in amount of parts / files 
N = 17 ; 
%% 
parts = cell(1,N) ;
smoothparts = cell(1,N) ; 
coeffparts = cell(1,N) ; 

initials = [1.6, 0.49, 0.01] ; 
samples = 700; 

for j = 1:N  
    file = sprintf('P%d',j);
    parts(j) = struct2cell(load(file));
    smoothparts(j) = {DataPrep(parts{j})} ; 
    DFexpfit(smoothparts{j}.smooth)
    coeffparts(j) = {LifetimeDF(smoothparts{j}.smooth, samples, initials)} ;
end
%% Plot fit and data loop
x  = linspace(1,5,700)' ; 
figure(1)
for jj = 1:N
    subplot(3,6,jj) ;
    plot(x, smoothparts{1,jj}.smooth(1:700)) 
    hold on
%     for j = 1:1:9
%         plot(x, parts{1,jj}(1:700,j)) 
%         hold on
%     end 
end  
%%
figure(2)
for jj = 8
    p_1 = coeffparts{1,jj}.multipliers(1,1) ; 
    p_2 = coeffparts{1,jj}.multipliers(2,1) ;
    l = coeffparts{1,jj}.lambda ; 
    %subplot(2,4,jj) ;
    monofit = p_1 + p_2*exp(l*x) ; 
    plot(x, monofit)
    hold on 
    plot (x,smoothparts{1,jj}.smooth)  
    %legend('fit', 'smooth')
end  
