% protein expression

alpha = 1.0; %Degradation of Y
beta = 100.0; %Hill Maximal Expression Level
K = 1; %Hill Half-Maximal Activation
n = 1; %Hill Exponent

%Create time vector
dt = 0.1;  %smaller and smaller for more data points
EndTime = 10;
time = 0:dt:EndTime;

%Find Rate of Y production given concentration of X
x = 5; %Concentration of Promotor x
fx = beta*x/(K^n+x^n); %rate of Y production

%Initialize Y concentration vector
Y = zeros(length(time),1);
Y(1) = 0.0; %set to 0 but could be changed

%Loop over time using Euler Method
for i = 2:length(time)
    Y(i) = Y(i-1) + dt*(fx-alpha*Y(i-1));
end

%Plot out expression of Y over time
plot(time,Y, '-ok');