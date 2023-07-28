function dy = FHNFunction(t,y)
a = 0.08;
b = 0.7;
c = 0.8;

I = 0.556; %Simulus Current
V = y(1);
W = y(2);

dy = zeros(2,1);
dy(1) = V-(V^3)/3-W+I;
dy(2) = a*(V+b-c*W);
