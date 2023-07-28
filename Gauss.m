function [G] = Gauss(beta,x)
mu = beta(1); %define mean
variance = beta(2)^2; %define standard deviation
area = beta(3); %define area
G = (area/sqrt(2*pi*variance)).*exp(-((x-mu).^2)./(2*variance));
end

%x = 0:1:100;
%beta0 = [40 15 1000];
%G = Gauss(beta0,x);
%plot(x,G,'-ok')