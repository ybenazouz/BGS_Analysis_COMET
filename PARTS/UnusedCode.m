%% Overig functie voor fit 
% x  = linspace(1,5,2000)' ; 
% y  = P1((1:2000),1) ; 

%% Curvefit oud 
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

