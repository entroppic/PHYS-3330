%%% 115 turns, z=0

turns_115_x=[1.1 9.9 20.0 30.0 39.9 50.0 59.9 70.1 79.9 90.0 100.0 110.3 119.8 130.4 140.0 150.3 160.4 170.5 180.2 189.9 199.9];
turns_115_x=turns_115_x(:);
turns_115_x=turns_115_x(:)/1000;
turns_115_y=[0.003 0.029 0.0599 0.0879 0.1168 0.1459 0.1737 0.205 0.233 0.263 0.292 0.322 0.350 0.381 0.408 0.438 0.468 0.496 0.523 0.551 0.581];
turns_115_y=turns_115_y(:);
turns_115_y=turns_115_y(:)/10;

current_turns_115=turns_115_y(:)/1000;

mu=1.2566*10^(-6);
N=115;
l=0.016;

%B_field = mu*N*current_turns_115*l / (0.055225*(l*l+0.2209)^0.5);
%figure, plot(current_turns_115,B_field)


%%% 100 turns z=0

turns_100_x=[0.01 10.0 20.3 30.1 40.2 50.2 60.1 70.1 79.9 90.2 100.0 110.0 119.8 129.9 140.1 149.9 160.1 170.1 179.9 190.3 199.9];
turns_100_x=turns_100_x(:);
turns_100_x=turns_100_x(:)/1000;
turns_100_y=[0.0019 0.0264 0.0533 0.0782 0.1033 0.1302 0.1555 0.1801 0.205 0.231 0.257 0.280 0.306 0.330 0.357 0.382 0.408 0.433 0.458 0.483 0.508];
turns_100_y=turns_100_y(:);
turns_100_y=turns_100_y(:)/10;


%current_turns_100=turns_100_x(:)/1000;

%%% 85 turns

turns_85_x=[0.04 9.8 20.0 30.2 40.4 50.3 60.2 69.8 79.7 90.4 100.0 110.4 120.0 129.9 140.3 150.1 159.7 170.1 179.9 189.9 199.6];
turns_85_x=turns_85_x(:);
turns_85_x=turns_85_x(:)/1000;
turns_85_y=[0.1 1.6 3.3 4.8 6.5 8.1 9.8 11.2 12.9 14.7 16.2 17.8 19.4 20.9 22.6 24.3 25.9 27.4 29.0 30.6 32.2];
turns_85_y=turns_85_y(:);
turns_85_y=turns_85_y(:)/1000;

%%% 70 turns

turns_70_x=[0.01 10.0 19.8 29.9 40.2 50.0 60.1 69.9 80.2 89.7 100.1 109.9 119.9 129.9 139.9 149.7 160.2 170.2 180.4 189.8 199.8];
turns_70_x=turns_70_x(:);
turns_70_x=turns_70_x(:)/1000;
turns_70_y=[0 1.9 3.6 5.4 7.3 9.0 10.7 12.5 14.3 16.2 17.9 19.6 21.4 23.3 25.1 26.8 28.6 30.3 32.2 33.8 35.6];
turns_70_y=turns_70_y(:);
turns_70_y=turns_70_y(:)/1000;

%%% 55 turns

turns_55_x=[0.01 9.7 20.1 29.8 40.2 50.3 59.8 70.2 79.7 89.8 99.8 109.9 119.7 129.7 139.8 149.9 159.7 170.1 180.6 190.5 199.6];
turns_55_x=turns_55_x(:);
turns_55_x=turns_55_x(:)/1000;
turns_55_y=[0.2 1.3 2.6 4.1 5.4 7.0 8.2 9.7 11.2 12.5 14.0 15.4 16.8 18.3 19.7 21.1 22.4 23.9 25.5 26.8 28.0];
turns_55_y=turns_55_y(:);
turns_55_y=turns_55_y(:)/1000;

%%% 100 turns, vary z
current_turns_100_vary_z=0.1992;
z=[0 0.005 0.01 0.015 0.02 0.025 0.03 0.035 0.04 0.045 0.05 0.055 0.06 0.065 0.07];
z=z(:);
turns_100_y_vary_z=[0.507 0.490 0.440 0.358 0.285 0.211 0.159 0.117 0.088 0.067 0.054 0.044 0.034 0.028 0.025]';
turns_100_y_vary_z= turns_100_y_vary_z/10;

%figure, plot(z,turns_100_y_vary_z,'o','MarkerSize',5);
%xlabel('z position (m)')
%ylabel('Voltage (V)')  


%%% make figures

ft = fittype('m*x');
fit1 = fit(turns_115_x,turns_115_y,ft,'Start', [1]);
slope_115_turns = coeffvalues(fit1);
figure, plot(fit1,turns_115_x,turns_115_y,'o');
xlabel('Current (A)')
ylabel('Voltage (V)')
hold on

ft = fittype('m*x');
fit2 = fit(turns_100_x,turns_100_y,ft,'Start', [1]);
slope_100_turns = coeffvalues(fit2);
plot(fit2,turns_100_x,turns_100_y,'o')
xlabel('Current (A)')
ylabel('Voltage (V)')


ft = fittype('m*x');
fit3 = fit(turns_85_x,turns_85_y,ft,'Start', [1]);
slope_85_turns = coeffvalues(fit3);
plot(fit3,turns_85_x,turns_85_y,'o')
xlabel('Current (A)')
ylabel('Voltage (V)')

ft = fittype('m*x');
fit4 = fit(turns_70_x,turns_70_y,ft,'Start', [1]);
slope_70_turns = coeffvalues(fit4);
plot(fit4,turns_70_x,turns_70_y,'o')
xlabel('Current (A)')
ylabel('Voltage (V)')


ft = fittype('m*x');
fit5 = fit(turns_55_x,turns_55_y,ft,'Start', [1]);
slope_55_turns = coeffvalues(fit5);
plot(fit5,turns_55_x,turns_55_y,'o')
xlabel('Current (A)')
ylabel('Voltage (V)')

hold off




a = 0.0235;
N=100;

% Numerical integration of B field
%syms z_theory;
%dB(z) = (mu*100*current_turns_100_vary_z*a^2 / (2*pi*((a^2)+(z_theory^2))^(3/2)));
%B_field_theory = integral(dB(z),(l/2+),0)

gap=0.024/100;
B=zeros(100,1);
Zb=linspace(0,0.07,100);
for i = 1:N
    for j = 1:N
        if j <= 50
        B(i) = B(i) + mu*current_turns_100_vary_z*a^2 / (2*(a^2+(Zb(i)-(j-1)*gap)^2)^(3/2));
        else
        B(i) = B(i) + mu*current_turns_100_vary_z*a^2 / (2*(a^2+(Zb(i)+(j-50)*gap)^2)^(3/2));
        end
    end
end


%figure, plot(Zb,B);

%for i = 1:15
    %bindex = round(i*(100/15));
    %chi_sq = chi_sq + (z(i)-B(bindex))^2 / B(bindex);
    %resid(i) = resid(i) + (z(i)-B(bindex))^2;
%end

%%% Hall coefficient analysis

f_geom_100_turns = B(1) / current_turns_100_vary_z;

Hall_coeff = slope_100_turns / f_geom_100_turns;

%%% geometric function vs N analysis

f_geom_115_turns = (turns_115_y(10) / Hall_coeff) / turns_115_x(10);

f_geom_85_turns = (turns_85_y(10) / Hall_coeff) / turns_85_x(10);

f_geom_70_turns = (turns_70_y(10) / Hall_coeff) / turns_70_x(10);

f_geom_55_turns = (turns_55_y(10) / Hall_coeff) / turns_55_x(10);

N_array=[55 70 85 100 115]';
f_geom_array=[f_geom_55_turns f_geom_70_turns f_geom_85_turns f_geom_100_turns f_geom_115_turns]';

figure, plot(N_array,f_geom_array,'o')
xlabel('N')
ylabel('f(geom)')

%%% varying probe distance, theory vs experiment

B_experiment = turns_100_y_vary_z / Hall_coeff;

figure, plot(z,B_experiment,'o')
hold on
plot (Zb,B)