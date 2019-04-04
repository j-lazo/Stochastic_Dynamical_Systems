# Stochastic_Dynamical_Systems
This repo solves the stochastic simple decay, bistable switch and Lotka-Volterra systems using Guillespie Stochastic Algorithm.

The systems of equations to be solve are:

$$\int_\Omega \nabla u \cdot \nabla v~dx = \int_\Omega fv~dx$$

## Bistable Switch

\begin{align}
$$\dot{u} & = \frac{\alpha_1}{1+v^{\beta}} \\$$
$$\dot{v} & = \frac{\alpha_2}{1+u^{\gamma}-v} \\$$
\end{align}

## Lotka-Volterra

\begin{align}
\dot{x} & = \alpha x - \beta xy \\
\dot{y} & = \delta xy -\gamma y \\
\end{align}

