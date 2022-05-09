function [coeff,x] = LifetimeDF(y) 
% This function will generate an exponential function to fit the raw intensity data: -A + B*exp(c*x) + D*exp(e*x) + F*exp(g*x)
% This function will also generate a lineair function to fit the integrated
% intensity data. 

% get data
x  = linspace(1,5,2000)' ; % because exponentials don't do well with large numbers, we are taking our range within a lower number. 
y  = log(y((1:2000),1)) ; % a log distribution seems more fitting due to the shape of the data

% calculate integrals
iy1 = cumtrapz(x, y);

% get exponentials lambdas
Y = [iy1, x, ones(size(x))];
A = pinv(Y)*y;
lambdas = eig(A(1));

% get exponentials multipliers
X = [ones(size(x)), exp(lambdas(1)*x)];
P = pinv(X)*y;

% get lifetime tau 
tau = 1/lambdas ;  

% get integral intensity 
% integral = trapz(y) ; 

% create struct with all values 
coeff = struct('lambda', {lambdas}, 'multipliers', {P}, 'taus',{tau}, 'integral', {iy1}) ; 
end
