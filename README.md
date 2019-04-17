# Stochastic Dynamical Systems
This repo containst the code to solve the stochastic simple decay, bistable switch and Lotka-Volterra systems using Guillespie Stochastic Algorithm.

The systems of equations to be solve are:

## Simple Decay

![Simple_deacay](http://latex2png.com/output//latex_9b755633c2fe9094d3ed42df493d6173.png)

![Result_Sdecay](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/simpledecay.png "c=0.5 x(0)=100")



## Bistable Switch

![bistable_swith_equation](https://latex.codecogs.com/gif.latex?%5Cdot%7Bu%7D%20%3D%20%5Cfrac%7B%5Calpha_1%7D%7B1&plus;v%5E%7B%5Cbeta%7D%7D%20%5C%5C%20%5Cdot%7Bv%7D%20%3D%20%5Cfrac%7B%5Calpha_2%7D%7B1&plus;u%5E%7B%5Cgamma%7D-v%7D%20%5C%5C)

Deterministic simulation with u(0) = 6, v(0) = 1

![result_deterministic](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/biswitchvv1u6.png)

Stochastic simulations:

![bs_stochastic_0](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/bistableswitch16_5.png)
![bs_stochastic_1](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/bistableswitch16_6.png)
![bs_stochastic_2](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/bistableswitch16_8.png)
![bs_stochastic_3](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/bistableswitch16_9.png)

## Lotka-Volterra

![lotka-volterra_equation](http://latex.codecogs.com/gif.latex?%5Cdot%7Bx%7D%20%3D%20%5Calpha%20x%20-%20%5Cbeta%20xy%20%5C%5C%20%5Cdot%7By%7D%20%3D%20%5Cdelta%20xy%20-%5Cgamma%20y%20%5C%5C)


![bs_stochastic_4](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterratimegraph10001000.png)
![bs_stochastic_5](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterrayyvsx10001000.png)
![bs_stochastic_6](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterratimegraph10011001.png)
![bs_stochastic_7](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterrayyvsx10011001.png)
![bs_stochastic_8](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterratimegraph10021002.png)
![bs_stochastic_9](https://github.com/j-lazo/Stochastic_Dynamical_Systems/blob/master/Images/lotkavolterrayyvsx10021002.png)



