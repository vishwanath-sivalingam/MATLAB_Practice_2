%Not needed

r = 2:0.001:4; % create vector with r values
figure(1)
hold on

for j = 1:length(r) % loop over the r vector
    Initialz = 0.5;
    N = 1000; %CHANGED TO 1000
    z = zeros(N,1);
    z(1) = Initialz;
    for i=2:N
        %calculate next value of x using current r value
        z(i) = r(j)*z(i-1)*(1-z(i-1));
    end
    
    %create a vector with all values of r(j)
    rvec = r(j)*ones(500,1);
    
    %only use the last 500 values of z
    truncatedz = z(501:end);
    
    %plot points, but do not connect lines
    plot(rvec,truncatedz,'.');
end %End r loop