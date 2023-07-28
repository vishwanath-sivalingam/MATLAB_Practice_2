% calling KM_model function

xn = 25; % suscetible
yn = 5;  %infected
a = 0.02;
b = 0.0;

kmvalues = KM_model(a, b, xn, yn);  %prints km
fprintf('x_n1 = %5.2f\n', kmvalues(1))
fprintf('y_n1 = %5.2f\n', kmvalues(2))

% in command window
% KM_model_functiontest