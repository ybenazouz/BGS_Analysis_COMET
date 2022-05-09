function [] = DFexpfit(y)
% DFEXPFIT gives the optimal amount of coefficients to use for your data 
% In het andere onderzoek hebben ze chi squared gebruikt om de optimale fit
% te bepalen, heb ik niet gedaan. Evt nog naar kijken? 

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
ysv_scaled = 100 * ysv ./ sum(ysv) ; 

% select n principal components above a threshold of 0.1% 
thres = 0.1;
n = sum(ysv_scaled > 0.1) / 2 ; 
covers = sum(ysv_scaled(1:2*n)) ; 

stats = struct('n', {n}, 'Percentage', {covers}) 
end

