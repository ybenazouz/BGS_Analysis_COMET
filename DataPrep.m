function [structure] = DataPrep(y)
% DATAPREP 
% We want to smooth out the data. 

% Correction >> first remove large outliers for each measurement, use
% Savitzky-Golay filter. This will work best, because we want to maintain
% the peak at the beginning of the measurement as best as possible. This
% filter specifically retains peaks and does not flatten too much. 

sg = zeros(2000,15) ; 
y = y(1:2000,:) ;
[~,n] = size(y); 

for s = 1:n
    sg(:,s) = sgolayfilt(y(:,s),4,25) ;
end

% Average over all measurements >> minimize the signal-noise ratio
sgmean = -mean(sg,2);  

% Calculate maximum of measurement (dit doen binnen de eerste range of
% er van uit gaan dat er geen grote outliers meer zijn? correctie is
% toegepast) 
sgmax = max(sgmean) ; 

structure = struct('smooth', {sgmean}, 'max', {sgmax}) ; 
end

