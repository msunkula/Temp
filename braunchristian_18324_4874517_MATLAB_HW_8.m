t0=0;
T=50;
c0_1=1;
c0_2=1;
c0_3=0;
[tt,cc]=ode23(@ode_HW8,[t0 t0+T],[c0_1;c0_2;c0_3]);

% The assignment asked for three seperate plots, I included all three plots
% here, each time i switched which plot was being used and commented out
% other two
plot(tt,cc(:,1),'xb-')
%plot(tt,cc(:,2),'xb-')
%plot(tt,cc(:,3),'xb-');
length(tt)
xlabel('time');
ylabel('C');
hold on
[tt,cc]=ode45(@ode_HW8,[t0 t0+T],[c0_1;c0_2;c0_3]);

% Same as above, commented out the two plots i wasnt using for that run
% plots also use a different point marker so that you can see the
% difference on the graph
plot(tt,cc(:,1),'xr-');
%plot(tt,cc(:,2),'xr-');
%plot(tt,cc(:,3),'xr-');
legend('plot of ode23','plot of ode45');



