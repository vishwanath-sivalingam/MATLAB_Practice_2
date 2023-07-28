% logistic equation
r = 3.2;            %constant for logistic equation
Initialz = 0.5;     %initial condition
N = 100;            %number of iterations to perform
z = zeros(N,1);     %Create vector to store z
z(1) = Initialz;    %Set first value to initial
for i=2:N           %Start at 2 because we already z(1)
    z(i) = r*z(i-1)*(1-z(i-1)); %calculate next value
end
z
plot(z, '-ok')