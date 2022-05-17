function [coeff] = LifetimeDF(y, samples,x30) 
% This function will generate an exponential function to fit the raw intensity data: -A + B*exp(c*x) + D*exp(e*x) + F*exp(g*x)
% This function will also generate a lineair function to fit the integrated
% intensity data. 
%% FIRST METHOD: integral fitting
% get data
x  = linspace(1,5,samples)' ;       % exponentials don't do well with large numbers 
yint  = log(y((1:samples),1)) ;     % log for shape of the data

iy1 = cumtrapz(x, yint);            % calculate integrals (cumulative)
iy2 = cumtrapz(x, iy1);

% get exponentials lambdas
Y = [iy1, iy2, x.^2, x, ones(size(x))];
A = pinv(Y)*yint;
lambdas = eig([A(1), A(2); 1, 0]);

% get exponentials multipliers
X = [ones(size(x)), exp(lambdas(1)*x),exp((2*lambdas(2))*x)];     
P = pinv(X)*yint; 

tau = -(1/lambdas) ;   % get lifetime tau 

int = struct('lambda', {lambdas}, 'multipliers', {P}, 'taus',{tau}); 
%% SECOND METHOD: lsqcurvefit LM
% First order EP bi exponential fit 
FUN_1_EP = @(x3,xdata)x3(1)*exp(x3(2)*xdata)+x3(3)*exp((2*x3(2))*xdata); 

options = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt',...
    'Display', 'iter', 'MaxFunctionEvaluations', 1000); 

lb = [] ; 
ub = [] ;  
ydata = y((1:samples),1) ; 
xdata  = linspace(1,5,samples)' ;

x3 = lsqcurvefit(FUN_1_EP,x30,xdata,ydata, lb, ub, options) ; 
tau = -(1/x3(2)); 

lm = struct('coeff', {x3}, 'tau', {tau}) ; 

%% Struct with all values - output
coeff = struct('lm', {lm}, 'int', {int}) ; 
end
