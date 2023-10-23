clear;

run('xe_i_const.m');

tspan = 0:1:86400*4;
y0 = [1.0 1.0];
pl = 0.6;
[t1,y1] = ode113(@(t1,y1) odefcn(t1,y1,lambda_i,lambda_x,sf1,rt,pl), tspan, y0);
%[t2,y2] = ode113(@(t2,y2) odefcn(t2,y2,lambda_i,lambda_x,sf2,rt,pl), tspan, y0); % xenon parameters calculated by new method

p = power_hist(t1,pl);


figure;hold on;
plot(t1/3600,y1(:,1),'linewidth',2.0);
plot(t1/3600,y1(:,2),'linewidth',2.0);
% plot(t2/3600,y2(:,2),'linewidth',2.0);
plot(t1/3600,p,'linewidth',2.0);

legend('I-135 concentration','Xe-135 concentration','power level');
xlabel('t (hour)');
ylabel('Normalized values');
ylim([0.5,1.3]);
set(gca,'fontsize',20);
grid on;