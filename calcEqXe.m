clear;

run('xe_i_const.m');

pl = 0.6;

eq_xe0 = (gamma_i+gamma_x)*Sigma_f*phi0/(lambda_x+sigma_xe*phi0)
eq_xe_ratio = (gamma_i+gamma_x)*Sigma_f*phi0*pl/(lambda_x+sigma_xe*phi0*pl)/eq_xe0