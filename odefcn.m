function dydt = odefcn(t,y,lambda_i,lambda_x,sf,rt,pl)
    dydt = zeros(2,1);
    dydt(1) = lambda_i*(power_hist(t,pl)-y(1));
    dydt(2) = lambda_x*(power_hist(t,pl)-y(2))+sf*power_hist(t,pl)*(1-y(2))+rt*(lambda_x+sf)*(y(1)-power_hist(t,pl));
end