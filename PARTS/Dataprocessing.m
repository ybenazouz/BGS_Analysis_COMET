
% We want to smooth out the data. 

% Average all measurements
mean = mean(x,2) ;

% Correct mean 
mean_correct = mean(mean_MM_BGS_total(end-4:end));
mean_correct_MM_BGS = mean_MM_BGS_total - mean_correct;