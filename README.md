# Xenon Analytical Solver

This is a solver to the xenon/iodine equations in the nuclear reactor core.

## Equations

### Symbols

- $g$: energy group, here only 1-group is considered
- $\gamma$: yield fraction (xenon or iodine)
- $\Sigma_f$: macroscopic fission cross section
- $\phi_0$: initial neutron flux
- $\sigma_a$: macroscopic absorption cross section
- $\lambda$: decay constant (xenon or iodine)
  
### Steady state xenon concentration

$N_{Xe}^{ss} = \frac{\sum_g (\gamma_{I,g} + \gamma_{Xe,g}) \Sigma_{f,g} \phi_{g,0}}{\lambda_{Xe}+ \sum_g\sigma_{a,g}^{Xe}\phi_{g,0}}$

### Iodine concentration equation

$\frac{d\tilde{N}_{I}}{dt} = \lambda_I(P(t)-\tilde{N}_{I})$

where $\tilde{N}_{I}$ is normalized value of $N_I$, $P(t)$ is the normalized power of the reactor:
$\phi_{g}(t) = P(t) \phi_{g,0}$

### Xenon concentration equation

$\frac{d\tilde{N}_{Xe}}{dt} = \lambda_{Xe} (P(t)- \tilde{N}_{Xe}) +
    \sum_g\sigma_{a,g}^{Xe}\phi_{g,0} P(t) (1-\tilde{N}_{Xe}) + 
    \frac{\sum_g  \gamma_{I,g} \Sigma_{f,g} \phi_{g,0}}{\sum_g (\gamma_{I,g} + \gamma_{Xe,g}) \Sigma_{f,g} \phi_{g,0}} (\lambda_{Xe}+ \sum_g\sigma_{a,g}^{Xe}\phi_{g,0})(\tilde{N}_{I}-P(t))$

where $\tilde{N}_{Xe}$ is normalized value of $N_{Xe}$.

## Scripts

The scripts solve the xenon/iodine equations above.

- [xe_i_const.m](xe_i_const.m): xenon/iodine parameters
- [power_hist.m](power_hist.m): defines power history
- [odefcn.m](odefcn.m): defines the ODEs (xenon/iodine equations)
- [calcEqXe.m](calcEqXe.m): calculates the steady state equilibrium xenon concentration
- [solveXenonIodine.m](solveXenonIodine.m): solves the xenon/iodine equations and plots the results

## Usage

### Quick start

Run the script [solveXenonIodine.m](solveXenonIodine.m) in MATLAB.

### Advanced usage

- Change the power history in [power_hist.m](power_hist.m)
- Change the xenon/iodine parameters in [xe_i_const.m](xe_i_const.m)