% FitzHugh-Nagumo model of a neuron
% V = cell membrane potential y(1)
% W = recovery variable y(2)
% I = stimulus current y(3)

% CONSTANTS
a = 0.08;
b = 0.7;
c = 0.8;

%TIME VECTOR
dt = 0.01;
EndTime = 500; 
time = 0:dt:EndTime;

% INITIALIZE
V = zeros(length(time), 1);
W = zeros(length(time), 1);
I = zeros(length(time), 1);

V(1) = 0; % set to 0, could be changed
W(1) = 0; % set to 0, could be changed
I(1) = 1; % change to 1, 2,... 

for i = 2:length(time)
    V(i) = V(i-1) + dt*(V(i-1)-((V(i-1)^3)/3) - W(i-1)+ I(i-1));
    W(i) = W(i-1) + dt*(a*(V(i-1) + b - c*W(i-1)));
end
data = [time' V W I];
subplot(1,2,1)
plot(time, V)
subplot(1,2,2)
plot(time, W)
