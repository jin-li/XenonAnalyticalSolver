lambda_i = 2.9306e-05;           % I-135 decay constant
lambda_x = 2.1066e-05;           % Xe-135 decay constant

sigma_xe2 = 5.37821e04*1.0e-24;   % Xe-135 microscopic absorption cross section
sigma_xe1 = 1.58836e05*1.0e-24;   % Xe-135 microscopic absorption cross section, calculated by new methods

phi0 = 7.3640E+14;               % total flux cm^-2*s^-1
gamma_i = 6.38584e-02;           % I-135 yield
gamma_x = 4.44110e-03;           % Xe-135 yield
Sigma_f = 8.56869E-04;           % Macroscopic fission cross section

sf1 = sigma_xe1*phi0;
sf2 = sigma_xe2*phi0;
rt = gamma_i/(gamma_i+gamma_x);