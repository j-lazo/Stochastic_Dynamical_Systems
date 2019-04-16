# Stochastic_Dynamical_Systems
This repo solves the stochastic simple decay, bistable switch and Lotka-Volterra systems using Guillespie Stochastic Algorithm.

The systems of equations to be solve are:

$$\int_\Omega \nabla u \cdot \nabla v~dx = \int_\Omega fv~dx$$

## Bistable Switch

![bistable_swith_equation](https://latex.codecogs.com/gif.latex?%5Cdot%7Bu%7D%20%3D%20%5Cfrac%7B%5Calpha_1%7D%7B1&plus;v%5E%7B%5Cbeta%7D%7D%20%5C%5C%20%5Cdot%7Bv%7D%20%3D%20%5Cfrac%7B%5Calpha_2%7D%7B1&plus;u%5E%7B%5Cgamma%7D-v%7D%20%5C%5C)

## Lotka-Volterra

\begin{align}
\dot{x} & = \alpha x - \beta xy \\
\dot{y} & = \delta xy -\gamma y \\
\end{align}

