x = 0:1:350;
y = zeros(1,length(x));
y(x>=0 & x<50) = 0.126;
y(x>=50 & x<100) = 0.106;
y(x>=100 & x<250) = 0.060;
y(x>=250) = 0.057;
figure(1);
plot(x, y)
txt1 = ' 0-50kwh = $0.126';  %\leftarrow  to use arrow function
txt2 = '50-100kwh = $0.106'; 
txt3 = '100-250kwh = $0.060'; 
txt4 = '>250kwh = $0.057';
text(0,0.126,{'',txt1});
text(50,0.106,{'',txt2});
text(100,0.060,{'',txt3});
text(250,0.057,{'',txt4});
grid on, grid minor;
xlabel('kWh'), ylabel('Usage rate $$ Cost per kWh'); % label axes
title('Usage rate $$ Cost per kWh Vs. kWh ');




i = 0:1:350;
j = zeros(1,length(i));
j(i>=0 & i<35) = 0.00;
j(i>=35 & i<115) = 4.18;
j(i>=115) = 8.02;
figure(2);
plot(i, j);
txt5 = ' 0-35kw = $0.00';  %\leftarrow  to use arrow function
txt6 = '35-115kw = $4.18'; 
txt7 = '>115kw = $8.02'; 
text(0,0.50,txt5);
text(35,4.18,{'',txt6});
text(115,8.02,{'',txt7});
grid on, grid minor
xlabel('kW'), ylabel('Demad rate $$ Cost per kW') % label axes
title('Demand rate $$ Cost per kWh Vs. kWh ')