% with input

function km = KM_model(a, b, xn, yn)
x_n1 = xn*exp(-a*yn);
y_n1 = xn*(1-exp(-a*yn)) + b*yn;
km = [x_n1 y_n1]
end

% in command window
% km = KM_model(0.02, 0.0, 25, 5)