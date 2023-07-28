omega = [0:10:100]; %frequency in Hz
SineWaveAmplitude = [2 5 10 37 59 41 12 4 3 1 0.1];
plot(omega,SineWaveAmplitude,'*');
hold on %You will add to this plot later
Beta = nlinfit(x,y,Model,beta0);
