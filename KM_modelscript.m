% kernack mckendrick epidemiology ssir model
% no function
% xn + yn + zn = N
xn = 25; % suscetible
yn = 5;  %infected
a = 0.02;
b = 0.0;

% two values x_n+1, y_n+1
x_n1 = xn*exp(-a*yn)
y_n1 = xn*(1-exp(-a*yn)) + b*yn

% in command window
% KM_modelscript
